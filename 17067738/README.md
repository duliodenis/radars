### 17067738: Need to Apply Parallax MotionEffect to a Single View in a Hierarchy
Dulio Denis<br>29-May-2014 03:04 PM

####Product: iOS SDK
####State: Open

####Summary:
When using the UIInterpolatingMotionEffect subclass of UIMotionEffect there is no way to only apply the tilt to a single background view when in a view hierarchy. This limits the application to full screen applications and eliminates the ability to apply the effect to cards on the screen. This is made worse as the screens become larger such as on iPad.

When applying the UIInterpolatingMotionEffect the entire hierarchy gets the same effect and this produces the problem of not being able to frame the effect in a card.

If the target view is not in the hierarchy then the parallaxed view can not be clipped by the disjointed frame.

####Steps to Reproduce:
I've attached a sample project with three views for a card that contains a frame, foreground, and background. The desired effect would be to parallax the background only but the entire view hierarchy is parallaxed.  

####Expected Results:
A label outside the view container is not affected which is what would be expected for the foreground and frame.

####Actual Results:
The entire card is parallaxed even though the UIInterpolatingMotionEffect is only applied to the background view in the hierarchy.

####Version:
iOS 7.1 (11D167)

####Notes:


####Configuration:
Any iOS device with iOS7+

####Attachments:
'UIMotionEffectSampleApple.zip' was successfully uploaded.