<h1><img src="resources/icon.png" height="64" width="64"/> EMDR</h1>
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=EMDR%20-%20"><em><code>ask something/report a bug</code></em></a>  

A web-based EMDR training exercise, <br/>
with optional binaural audio, <br/>
taken from https://github.com/eladkarako/emdr/ <br/>
in a form of a web-extension for Chrome and Firefox, <br/>
available for both desktop and mobile-phones, <br/>
with all the resources, so this way it is available offline. <br/>

<hr/>

Clicking the icon will open the EMDR training exercise in a new-tab, <br/>
or switch to an already opened tab of the EMDR training exercise. <br/>
There is a hidden button to go to full-screen on the top left-corner and <br/>
a hidden audio-player for a binural-audio slightly to the right of the button. <br/>

<img src="resources/screenshot_1.png" /> <br/>
<img src="resources/screenshot_2.png" /> <br/>
<img src="resources/screenshot_3.png" /> <br/>

more information at https://github.com/eladkarako/emdr/ .

<hr/>

Difference from https://github.com/eladkarako/emdr/blob/master/index.html <br/>
the following part: 
<ol>
<li>

```html
<!-- ╔════════════════════╗
     ║ security           ║
     ║ (overcome framing) ║
     ╚════════════════════╝ -->
  <script async                       crossorigin="anonymous"  type="application/javascript"  charset="UTF-8"  src="data:application/javascript;charset=UTF-8;base64,LypQcmV2ZW50LUlGcmFtZS1IaWphY2tfKFBlcm1pc3NpdmUpLl9EZXZlbG9wZWRfQnlfRWxhZF9LYXJha29fSnVseV8yMDE4Ki9pZih0b3AubG9jYXRpb24uaG9zdG5hbWUhPT1zZWxmLmxvY2F0aW9uLmhvc3RuYW1lKXRvcC5sb2NhdGlvbi5hc3NpZ24oc2VsZi5sb2NhdGlvbi5ocmVmKTs="></script> <!-- prevent other websites loading this page in an IFRAME. -->
```

was removed since web-extensions have default <code>Content Security Policy</code> that forbids (by default) opening a BASE64-encoded script, <br/>
and I don't want to override the definition (although possible).
</li>
<li>
In-order to keep the extension-size small, the audio is limited to MP3 and OGG, <br/>
removing the M4A and OPUS files. 
The MP3+OGG are still about ~24MB.

The HTML-markup in the index.html was modified as-well to exclude them.
</li>
</ol>

<hr/>

<pre>
Developer's HUB / Changelog


1.0.0.4
+ rewrite AUDIO-SOURCE tag's SRC with explicit URL to the audio file, maybe it will fix a weird bug were you must have internet to hear the audio...
- removing the use of EMBED tag as a fallback to AUDIO.

1.0.0.3
+ add the main web-page as 'option' page which is another-way of opening it with Firefox/Chrome.
* using 'active:true' (newer) instead of 'selected:true' (older) since Firefox does not support it in 'tabs.update' and 'tabs.create'.
* fixed favicon location.
* fixed URLs used in 'background.js' to use relative URLs to the main-page, since resolving the URL to a fully-qualified-URL and using it in 'tabs.create' results (in Firefox) with wrong URL (Firefox adds the UUID again, two total to the URL, just like it was relative, probably a Firefox bug. Nevermind relative paths works-around it).

1.0.0.1
+ initial.
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->