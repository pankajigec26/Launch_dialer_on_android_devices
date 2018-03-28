# Launch_dialer_on_android_devices


This utility is created keeping in mind that many times you need to do a sanity check on your android devices weather your app is getting opened on the device or not.
It will help in quick verification of all your scenarios.

It has 3 Parts :

1) Yaml file :

Keep all your values in this Yaml file , you can add as many devices you want here , all the required details about device under test would be mentioned here.

Device:
  Htc620:
    Device_name: GDG59YE03161             #Device id 
	server: http://localhost:4723/wd/hub  #appium server URL
	....
	......
	
  SamsungS5:
    Device_name: GDG59YE03161      #Device id
	
2) Code part 

CFB.robot have the code to open the application under test , you dont need to modify the code untill unless you want to extend the functionality for yourself.


3)Run part

Running the code is fairly easy
open cmd , type  "appium -p 4723"

Download attached three files in a directory .

Go to the path and open cmd

provide value of phone you want to test, e.g. if you are testing Htc620 then your command would be like below

pybot -v phone:Htc620 -V env.yaml  CFB.robot

however if you wish to test SamsungS5 as mentioned in yaml , your command would be 

pybot -v phone:SamsungS5 -V env.yaml  CFB.robot