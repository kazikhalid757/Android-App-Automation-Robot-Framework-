##Robot Framework Setup and Run Guide

This guide provides step-by-step instructions for setting up and running the Robot Framework for test automation.

 Prerequisites:

Before getting started, ensure that you have the following prerequisites installed:

- Python (version 3.x recommended)
- pip (Python package installer)
- Robot Framework
-Appium
-Android Emulator

 Setup Instructions:

1. Install Python:
2. Open the terminal or command prompt in the project directory  and run the following command “Run pip install -r requirement.txt”
3. Run Appium server and Android Emulator[Must have Wind.app install]
4. Change  .. /Environment/AppSetUp.robot code according to your Android Emulator
3. Execute Tests:
            Run command :  robot --include passed wind_app.robot
