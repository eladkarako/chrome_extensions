<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-SVG</h1>

<strong>☞︎ blocks SVG (fonts or images), hide SVG elements from DOM, hide images with src=*.svg*, null'ify SVG API from DOM.</strong>  

<h3>THIS SOLVES THE SLOWENESS IN $h!tty <code>developer.mozilla.org</code> pages!!!</h3>

<br/>

Blocks SVG-fonts, or SVG-images,  
first hides any plain (local/remote) svg-elements on the document to ease up the page,  
hide images if their sources is something like \*.svg\* or their mimetype is <code>image/svg</code>,  
I won't be actually removing the elements from the DOM since it is a waseful action that does not improve anything, "display:none" is as good.
then null'ify the SVG JavaScript-API, making object such as <code>SVGElement</code> meaningless,  
so they won't be able to render.  

works on the document, and all its sub-IFRAMES,  
a background network "firewall" keeps blocking requests to '.svg' resources,  
regardless if they are a font, an image or even if they are loaded as an entire document or frame.

note, this won't disable SVG in a deepest level such as a browser switch (which some browsers might have),  
but it at least eases-up rendering a bit, and the background "firewall" might trigger a secondary "non-SVG" resources to take action (on font - eot/ttf/otf/woff/woff2, on image - any alternative, or 'ontimeout/onerror' or simply an 'alt' text), 
I'm also not going to hide "picture" elements since their internal structure is too complex to be generatlized,  
if they have an image-element fallback that is not svg, it will be loaded thanks to the background "firewall" blocking svg sources anyway,  
the blocking mechanism works with the browser's internal engine, so it applies also if the image is lazyloaded or if the content is fetched using Ajax.



<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-SVG%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  
