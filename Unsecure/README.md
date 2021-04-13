<h1><img src="resources/icon.png" height="64" width="64"/> Unsecure</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Unsecure%20-%20"><em><code>ask something/report a bug</code></em></a>  

<strong>☞︎ Removes Frame/XSS/Content-Type/Security-Policy/Referrer Limitations</strong>

<strong>Web-extension for developers.</strong>

Some HTTP-headers such as <code>Content-Security-Policy</code> limits what you can do in a website. 
It can make it hard (by design...) for JavaScript to be injected into the DOM, 
Or be loaded from a 3'rd-party location. Same goes for images and media-loading (for example).

Those restrictions are managed by the browser (this is why you have no problem when 
using NodeJS, wGet or cURL with those headers).
This web-extension removes those headers, making injection or loading of various previously forbidden 'stuff' fully permitted.

Don't use this web-extension unless you are a developer that just want to test a few things, 
On a website that blocks it, and if you are one - make sure to disable this web-extension as soon as you're done.

If you are looking for other similar web-extension to mess around with website's HTTP headers and making them more permissive, try https://addons.mozilla.org/firefox/addon/cors-webext/ it will allow you an unlimited access with JavaScript or flash to every resource from every website, as if every website was permitting a permissive cross-domain policy - for developers ONLY!

Note:
in Firefox, this web-extension action can will be somewhat limited, 
please share with me your success/fail stories under: <a href="https://github.com/eladkarako/chrome_extensions/issues/new">https://github.com/eladkarako/chrome_extensions/issues/new</a>.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section.

Unsecure is 100% free (as beer..), include no ads (I hate those!), does NOT collect any data, include NO analytics and works entirely offline.

<hr/>

<pre>
Developer's HUB / Changelog

2.0.1.3
* added support for removing sandbox-attribute from IFRAME-elements and reloading them.

2.0.1.2
* changing the browser_specific_settings/gecko/id to re-upload UnLazy to Mozilla-servers.

2.0.1.1
* improving cross-browser-API compatibility.

2.0.0.1
+ initial.
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->