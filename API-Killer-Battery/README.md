<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Battery</h1>

☞︎ Prevents Battery-Infomation Leaking By Killing The JavaScript Battery/Low-Level-Battery APIs.


This web-extension prevents web-pages from getting information about your computer's-battery,  
normally the API can provide websites very useful information that can reveal your personal timeline,  
other than if the battery is currently charging or its level-of-charge,  
there are triggered events when the computer is switching from/to charging-mode (the user has pluged-in the AC-power),  
the charging time (which reveals how long ago a user is staying at one place, for example a coffee-shop, or at home),  
discharging time (which reveals how long a user has been on the road, or when was left the house),  
events for charging/discharging level-change over time (speed of charge) can provide information regarding the state of the battery itself,  
and because normally user's laptop-battery is the same age as the laptop, with sufficient big-data, the laptop age can be figured-out,  
and from that, a user social-economy state (specifically slow charging battery, a 10 years-old computer).  

This API might seems innocent,  
but it is really is not. in-fact, this API reveals long-term information about the user,  
something that very few other APIs does. Normally a user will have to install a program or a service provided by the manufactor and designed specific for the manufacture website (Lenovo does it),  
to provide this kind of information about the hardware.  
And since the battery is a hardware that "is getting old" it provides indication regarding the computer and the user.  

The very least, this API helps fingerprinting a user/user habbits, this is why is should be killed!  

see: https://www.w3.org/TR/battery-status/  

note: this is a pure-javascript solution. if the page blocks external javascript from web-extensions there is no much I can do. also, web-extensions might be able to use the API anyway do the the way web-extensions "live" in their own global-scope, this web-extension tries to kill the battery api per-page, and it does not effect other web-extensions ability to use the api, but it might. anyway, it is safer with this web-extension, at-least it limits the amount of information leaking from some aspects of the browser's component..  

Just to be clear, this web-extension <strong>does not "kill your battery"...</strong>, it prevents information-leaking through JavaScript API.  


You can see the recent changes in <code>changelog.nfo</code>.


<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-Battery%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
