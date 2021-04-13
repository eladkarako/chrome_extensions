<h1><img src="resources/icon.png" height="64" width="64"/> Linkify</h1>

This web-extension efficiently runs through the text of the page, 
and convert parts that looks like URLs into clickable-links, 
it supports multiple web-protocols including FTP, MAILTO, TCP, UDP, MAGNET,...

As a bonus, once a URL-text has being converted into a real-link, 
it can be work with other web-extensions such as <a href="https://addons.mozilla.org/en-GB/firefox/addon/remove-redirects-plus/">Remove-Redirects-Plus</a>, 
to remove redirects and unshort tiny-urls (such as 'bit.ly').

This web-extension works very efficiently and modifies text without generating a complete-DOM-reflow effect.



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.




<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Linkify%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  