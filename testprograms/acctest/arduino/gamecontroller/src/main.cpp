#include <Arduino.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <Servo.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BNO055.h>
#include <utility/imumaths.h>

#define BNO055_SAMPLERATE_DELAY_MS (20)

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET     4 // Reset pin # (or -1 if sharing Arduino reset pin)

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);
// SoftwareSerial logSerial(10, 11); // RX, TX
Adafruit_BNO055 bno = Adafruit_BNO055(55);

String state = "unknow";
String task = "";
float setXAngle = 0;
float bnoX = 0;
Servo xServo;
float setYAngle = 0;
float bnoY = 0;

float read2byteFloat();

void setSystemStateState(const char *newState);

void updateDisplay() {
    int xPosBno = 50;
    int xPosSet = 5;
    display.clearDisplay();
    display.setTextSize(1);
    display.cp437(true);
    display.setTextColor(WHITE);
    display.setCursor(0, 0);
    display.println(state);
    display.setCursor(0, 8);
    display.println(task);
    display.setCursor(xPosSet, 8 * 2);
    display.println(setXAngle);
    display.setCursor(xPosSet, 8 * 3);
    display.println(setYAngle);
    display.setCursor(xPosBno, 8 * 2);
    display.println(bnoX);
    display.setCursor(xPosBno, 8 * 3);
    display.println(bnoY);
    display.display();
}

void setSystemStateState(const char *newState) {
    state = newState;
    updateDisplay();
}

void setTask(const char *newTask) {
    task = newTask;
    updateDisplay();
}

void setup() {
    // logSerial.begin(9600);
    // logSerial.println("---- SETUP_START");

    pinMode(2, INPUT_PULLUP);

    // logSerial.print("init display ... ");
    if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C)) { // Address 0x3C for 128x32
        Serial.println(F("SSD1306 allocation failed"));
        for (;;); // Don't proceed, loop forever
    }
    setSystemStateState("init");
    // logSerial.println("OK");

    setTask("init serial");
    Serial.begin(115200);

    setTask("init bno");
    // logSerial.print("init bno ... ");
    if (!bno.begin()) {
        // logSerial.println("Ooops, no BNO055 detected ... Check your wiring or I2C ADDR!");
        while (1);
    }

    setTask("init bno ..waiting");
    // logSerial.print("waiting ... ");
    delay(1000);
    bno.setExtCrystalUse(true);
    // logSerial.println("OK");

    xServo.attach(6);
    xServo.write(90);

    // logSerial.println("---- SETUP_DONE");
    setSystemStateState("Running");
    setTask("");
}


void loop() {

    if (Serial.available()) {
        int prefix = Serial.read();
        if (prefix == 0) {
            // logSerial.println("start package");
            int cmd = Serial.read();
            if (cmd == 1) {
                float x = read2byteFloat();
                if (x != -999) {
                    setXAngle = x;
                }
                float y = read2byteFloat();
                if (y != -999) {
                    setYAngle = y;
                }
                /*
                logSerial.print(", setAngle x= ");
                logSerial.print(setXAngle);
                logSerial.print(", setAngle y= ");
                logSerial.print(setYAngle);
                logSerial.println();
                 */
            }
            updateDisplay();
        }
    }

    sensors_event_t event;
    bno.getEvent(&event);

    if (bnoX != event.orientation.y || bnoY != event.orientation.z) {
        bnoX = event.orientation.y;
        bnoY = event.orientation.z;
        updateDisplay();
    }

    int diff = abs(bnoX - setXAngle);
    int speed = max(min(diff * 20 ,98),20);

    if (diff > .01 ) {
        if (bnoX > setXAngle) {
            xServo.write(90 - speed);
        } else if (bnoX < setXAngle) {
            xServo.write(90 + speed);
        }

    } else {
        xServo.write(90);
    }

}

float read2byteFloat() {
    int msb = Serial.read();
    if (msb < 64) return -999;
    int lsb = Serial.read();
    if (lsb < 64) return -999;
    int pseudoValue = (msb - 64) * 127 + (lsb - 64);
    return map(pseudoValue, 0, 16000, -9000, 9000) / 100.0;
}

