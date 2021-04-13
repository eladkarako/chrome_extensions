<h1><img src="resources/icon.png" height="64" width="64"/> ImageAlt</h1>

<strong>☞︎ Show Image-Description taken from its ALT or TITLE attributes</strong>

This web-extension adds a description above images, when possible.

The description is taken from either the image-element 'alt' attribute, 
or the 'title' attribute ('alt' is prefered since it should contain an <strong>alt</strong>ernative to the image in case it hasn't been loaded, so it <em>should be</em> better describing the content).

Not all images will get a description-panel, 
only ones that their width is above 80px, and their height is above 30 pixels.

If the description if very short, the file-name will be added, 
as an additional information (sometimes the file-name includes a short description).


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img src="resources/screenshot_1.png"/>



<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=ImageAlt%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  