<h1><img src="resources/icon.png" height="64" width="64"/> Lazify</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Lazify%20-%20"><em><code>ask something/report a bug</code></em></a>  

This web-extension improves the support of native-LazyLoading in every page, 
for all of the IMG and IFRAME elements.

If there is no support for the browser's built-in LazyLoading yet, 
a polyfill I've implemented efficiently will be used instead, it uses 'IntersectionObserver'.

<hr/>

Chrome users can try to activate their native LazyLoading with <code>chrome://flags/#enable-lazy-image-loading</code> and <code>chrome://flags/#enable-lazy-frame-loading</code> set to <code>Enabled</code>. 

Alternativly you can also activate it with the <code>--enable-features="LazyFrameLoading,LazyImageLoading"</code> command-line switches.

<hr/>

Firefox users - no native LazyLoading until v75. You can switch it ON (explicitly, ON by default) or OFF,  
by setting <code>dom.image-lazy-loading.enabled</code> to either <code>true</code> or <code>false</code>.  

<hr/>

My UnLazy web-extension - interaction with Lazify:

Lazify will apply LazyLoading, 
UnLazy will remove all LazyLoading leaving plain images. It will not remove Lazify's LazyLoading.

You can have them BOTH up-and-running, 
the combination will remove all OTHER, nasty, 3rd-party LazyLoading-implementations, 
leaving you with either the native-browser one (if supported) or my slim and efficient one instead.

<hr/>

Some documents for more reading:
older browsers (from Jan. 2019) - ' lazyloading="on" '
- https://github.com/chromium/chromium/commit/b5278c3633150f6030882dc717426f690ffadeca
- https://github.com/chromium/chromium/commit/713811db8cfa4723dd18ee54db8d4f0a6840d231
newer browsers (from Jul. 2019) - ' loading="lazy" '
- https://addyosmani.com/blog/lazy-loading/
- https://github.com/scott-little/lazyload



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.





