<h1><img src="resources/icon.png" height="64" width="64"/> API-Killer-GeoLocation</h1>

This web-extension breaks down the Geolocation-interface, unlinking all methods such as <code>getCurrentPosition</code> and <code>watchPosition</code>, 
<a href="https://developer.mozilla.org/en-US/docs/Web/API/Geolocation#Methods">developer.mozilla.org/en-US/docs/Web/API/Geolocation#Methods</a>. 

This web-extension will work on each and every hidden IFRAMEs and document, regardless of "tricks" some vendors will try to do.
This web-extension breaks-down the JavaScript support for using anything related to GeoLocation.

This web-extension will also use a an injected "feature policy" (<a href="https://developers.google.com/web/updates/2018/06/feature-policy">developers.google.com/web/updates/2018/06/feature-policy</a>), 
pretty early in the page's life-cycle setting <code>GeoLocation</code> to <code>None</code> through the browser internal permission system. This is experimental but it is another way to help with GeoLocation blocking.

Note1:
while Chrome DOES allow web-extensions to run their JavaScript even when there is no-JavaScript support on the page (either disabled by the browser or "Policy HTTP Header"), 
On Firefox - if there is a some kind of rule that prevents external-javascript to run on the page, this web-extension will no work, 
or, at least the major blocking method (which injects javascript into the page) won't work, the blocking using a feature policy is a server side request/response manipulation and should work fine even on those web-pages.

Just to be sure, on Firefox, it is (also) best if you'll add the following restrictions in the <code>about:config</code> section:
<code>geo.enabled</code> - <code>false</code>
<code>geo.wifi.logging.enabled</code> - <code>false</code>
<code>geo.wifi.uri</code> - <code>https://0.0.0.0/</code>
<code>geo.wifi.xhr.timeout</code> - <code>1</code>

Note2:
web-extensions can also access the GeoLocation API, without 'walking-through' the page's own JavaScript engine, 
https://developer.chrome.com/extensions/declare_permissions
they can do so even without asking from the user to allow geolocation-pin pointing, and there is very little to do once you've installed one of those.. so beware.

You probably want API-Killer-DeviceMotionOrientation as well.



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.


<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->

<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-GeoLocation%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  

