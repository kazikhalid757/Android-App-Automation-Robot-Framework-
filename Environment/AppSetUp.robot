*** Settings ***
Library   AppiumLibrary
Library   Process

*** Variables ***
${SCREEN_WIDTH}     1080
${SCREEN_HEIGHT}    1920
${SWIPE_INTERVAL}   2  # seconds

*** Keywords ***

Open app
    Open Application       http://127.0.0.1:4723/wd/hub
      ...                    platformName=Android
      ...                    platformVersion=14
      ...                    deviceName=test
      ...                    udid=emulator-5554
      ...                    appPackage=avalon.wind.app
      ...                    appActivity=app.wind.wallet.features.splash.SplashActivity
close app
   Close Application



#Real Phone  
# Open app
#     Open Application       http://127.0.0.1:4723/wd/hub
#       ...                    platformName=Android
#       ...                    platformVersion=10
#       ...                    deviceName=Automation_Device
#       ...                    appPackage=avalon.wind.app
#       ...                    appActivity=app.wind.wallet.features.splash.SplashActivity
# close app
#    Close Application




