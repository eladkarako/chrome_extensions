<h1><img src="resources/icon.png" height="64" width="64"/> Smooth-Scroll</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Smooth-Scroll%20-%20"><em><code>ask something/report a bug</code></em></a>  

<strong>☞︎ Pure CSS, GPU Assisted Smooth-Scroll Fix For Chrome.</strong>

Force pages to use <strong>smooth</strong>, momentum and GPU-assisted scroll. <br/>

You better <strong>disable</strong> Chrome's internal smooth-scroll engine, <br/>
with <code>chrome://flags/#smooth-scrolling</code> set to disabled or adding the command-line argument: <code>--disable-smooth-scrolling</code>.<br/>
When smooth-scroll is page-handled (DOM/CSS) it works better then with Chrome-native engine.
Also, optionally use <code>--enable-low-res-tiling</code> to allow fast-scrolling <br/>
without the need to fully render content that has scrolled-out of the screen.<br/>

But you don't have too. To save some rendering memory I actually turned all the smooth related flags OFF, 
Those flags will try to fix Chrome issues using internal-rendering engine (mostly just apply tiny momentum and 'friction' values to standard scrolling globally), 
and only enabled this extension.

This extension <strong>will fix</strong> most of your scroll-issues, including the notorious page-jumpiness issue where your page scrolls a little bit up after you've left the  (up and 


<pre>
Developer's HUB / Changelog

1.0.1.8
- removing the usage of 'transform: translateZ(0)' and 'transform: translate3d(0,0,0)' (GPU assisted rendering) since it's too risky for elements (Google-search's query box) that use transition for X/Y/Z position in the page. Not as rare as I thought.. I guess... :|

1.0.1.7
+ include vendor-specific variations to the CSS-rules.

1.0.1.4
* pre-caching HTML scroll-position (CSS only).
* minifying core-actions, removed style-related rules.

1.0.1.3
* modify engine to scroll just the block-level elements + html + body ( https://developer.mozilla.org/en-US/docs/Web/HTML/Block-level_elements ), this will help with link-clicking issues.

1.0.1.2
* use just the start stylesheet.

1.0.1.1
+ initial.
</pre>
