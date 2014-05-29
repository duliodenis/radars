### 16153326: Allow SKView to have a clearColor backgroundColor property
Dulio Denis<br>24-Feb-2014 06:15 PM

####Product: iOS SDK
####State: Open

####Summary:
The SpriteKit framework does not allow you to create a scene with a transparent background that can be placed on top of the UIKit view hierarchy. This limits using Particle Effects to SpriteKit only based apps.  Current UIKit apps that would like to add Particle Effects need to continue to use the Core Animation CAEmitterLayer class. This limits SpriteKit adoption for UIKit based apps.

####Steps to Reproduce:
N/A

####Expected Results:
Expected 
SKView *mySpriteKitView = [[SKView alloc] init];
mySpriteKitView.backgroundColor = [SKColor clearColor]; 
to set a transparent background to my SpriteKit View.

####Actual Results:
No effect.  The background continues to be black.

####Version:
7.06 / 11B651

####Notes:

####Configuration:
Any iOS device with iOS7+

####Attachments:

#### Apple Developer Relations
10-Apr-2014 05:36 PM

We believe this issue has been addressed.  Please verify with iOS 7.1 GM (Build: 11D167) release, and update your report with the results.

iOS 7.1 (Build 11D167)
http://support.apple.com/kb/DL1732
Posted Date: March 10th, 2014

Note: iOS 7.1 can be installed via Software Update on your iOS device or in iTunes with the device connected.

If this issue is still occurring, please include any relevant logs, and or a test case with your update.

Logging Instructions/Test Case Requirements: https://developer.apple.com/bug-reporting/ios/

#### Developer Response to ADR

Apple Developer Relations - I have verified in iOS 7.1 that the issue still persists. I have included a sample project that demonstrates the issue in a UIView-based app. Thank you for your support.

- Dulio
'SpriteKitTransparentBackground.zip' was successfully uploaded.