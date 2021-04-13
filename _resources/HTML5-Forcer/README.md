<h1><img src="resources/icon.png" height="64" width="64"/> HTML5-Forcer</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=HTML5-Forcer%20-%20"><em><code>ask something/report a bug</code></em></a>  

<strong>☞︎ ∀ll shall be mobile-friendly, By Force! 💪︎👊︎.</strong>

<ol>
<li>Proper HTML5 Doctype.</li>
<li>Proper UTF-8 charset and encoding.</li>
<li>proper VIEWPORT definition.</li>
<li>Proper style fixes for streamline-content.</li>
<li>Proper style fixes for touch-event handling.</li>
</ol>

This web-extension was created (mostly) for running on Firefox for mobile-devices (but you can install it on your PC as well, just don't expect much difference).

You should be expecting to see the content streamline better, 
all shown in the same page, without the need to scroll-sideways 
(no "too wide page content"). The textual content of the page should be 
adjustable to a screen-size for comfortable reading.

For Developers - How it works?
Rewriting old web-pages to render better on mobile-devices, 
this <strong>isn't a tiny patch/fix to the web-page</strong>.
HTML5 page-structure elements need to load at a very early stage of the web-page life-cycle, so this web-extension will re-render the entire page, using a modified source, that is HTML5 compatible.

This web-extension uses 'document.write' since it is the only existing way to generate a clean web-page with proper DOCTYPE.




<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.
<hr/>

<pre>
Developer's HUB / Changelog

1.0.0.2
+ initial.
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->
