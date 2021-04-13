<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Canvas</h1>

☞︎ Kills HTML5 JavaScript APIs of both Canvas and Offscreen-Canvas.

https://html.spec.whatwg.org/multipage/canvas.html

Other than the pretty obvious ways killing canvas might effect you as a user,  
it might also prevent some video-viewing in websites that uses a hidden HTML5-video element as a middleman,  
and show the actual content over a canvas (which is a common ways to force users to "view-only" media content).  
Other than rendering graphics, canvas can be used as part of non-conventional algorithms such as improvised data-compression or data-manipulation,  
by writing data as RGB array into a canvas, and than saving it as PNG. PNG implements a compression algorithm, and than you read the binary data back (which is now compressed).  
Offline canvas can be used for all those things, normally from inside a web-worker thread.

In addition to canvas elements, I am also killing a related API <code>CanvasCaptureMediaStreamTrack</code> as well,  
since no point in keeping it without actual canvas to be used. It is used is media-capture (for example from a web-cam) on to a canvas,  
It should not be too much of an issue, and you can (probably) still view some websites that uses media-capture in a standard VIDEO/AUDIO elements to for content-streams.  
see https://developer.mozilla.org/en-US/docs/Web/API/CanvasCaptureMediaStreamTrack  
and https://developer.mozilla.org/en-US/docs/Web/API/Media_Streams_API  


Canvas/Offline canvas uses a cache (actually several depanding if it uses GPU or just software to render the content),  
actual files written on to the operation-system.  
it proves tricky to clean, which is why it can be used to long-term unique-id ("fingerprint") a user.  
see https://en.wikipedia.org/wiki/Canvas_fingerprinting  

Killing this API improves the privacy, but will (naturally) prevent you from enjoying some content that requires that technology.  


You can see the recent changes in <code>changelog.nfo</code>.


<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-Canvas%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
