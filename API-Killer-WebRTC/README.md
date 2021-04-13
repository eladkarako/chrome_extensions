<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-WebRTC</h1>
<strong>WebRTC HEADSHOT!</strong>

This web-extension kills the HTML5's WebRTC-API in 4 different ways:

<ol>
<li>
it disables WebRTC using the official browser's privacy-settings mechanisem.
</li>
<li>
it null'ify the JavaScript <code>MediaStream</code> object/factory, 
preventing the page from creating/manage peer-connections.

(it keeps <code>navigator.getUserMedia</code>, <code>navigator.mozGetUserMedia</code> and <code>navigator.webkitGetUserMedia</code> intact though).
</li>
<li>
the web-extension adds a network-responses-filter (just like a mini-firewall), 
which adds an additional, strict, 'Content-Security-Policy' HTTP-header 
(with the value of <strong>webrtc-src 'none'</strong>) to every resource in every web-page.

This "firewall part" is my latest addition, 
and it enables blocking WebRTC even if the other components, meaning the JavaScript null'ification of page objects 
and using the browser native privacy-setting both fails (unlikely but..). 
This keeps on working!
</li>
</ol>


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img alt="" height="1" width="1" src="resources/screenshot_1.png"/>




<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-WebRTC%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  
