<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-DeviceMotion</h1>

☞︎ Kills 1. Device Motion-And-Acceleration API, 2. Screen-Orientation API, 3. Compass-State API 4. Compass-Value API.

Preventing information getting from the sensors (hardware) of your device,  
leaking through HTML5 JavaScript API to the web.  

This web-extension works hard in-order to kill/null'ify several movement-related APIs:  
the movement, direction, speed and acceleration of you at any moment,  
can see if you are laying in bed, out for a run, if your device is in your pocket or you are holding it in your hand.  
very easy conclusions to figure out with this API since it dumps out a lot of data, in-fact, as soon as the hardware provides it.  

screen-orientation is related to the state the phone is currently in,  
relative to the ground. this sensor related data might be used in some websites that relay on it instead of rendering a proper mobile-suitable website.  
you loose nothing if you turn this API off, crappy websites will stay crappy, and the current state of the phone on 3 axis relative to the ground won't leak.  

compass information, such as if the compass needs zero'ing out, or generic direction of the compass,  
are too additional APIs I'm killing around here.  

combining those data (even without GPS) can be used your movements in space around 3 axis over time,  
it can assume your weight and height and actually compile a list of places you might be in right now,  
given a generic starting point information (commonly used to build simple step-counter apps..)

that information can arrive from your mobile-service,  
or even your wifi.

You probably want API-Killer-GeoLocation as well,  
since GeoLocation by GPS is kind-of the 'other-half' of protecting your 'movement detection' by the browser.  

This is kind of information that improve the quality of finding your current location,  
using very easy to use tech (HTML5 web-page..).

If you still wonder why you should disable those see: https://w3c.github.io/deviceorientation/#security-and-privacy  

Some more information you can find in here:  
https://developer.mozilla.org/en-US/docs/Web/API/Detecting_device_orientation  
https://w3c.github.io/deviceorientation  


You can see the recent changes in <code>changelog.nfo</code>.


<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-DeviceMotion%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
