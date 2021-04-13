<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-WebSocket</h1>

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<!-- li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/">https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/</a></li -->
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-websocket/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-websocket/</a></li>
</ul>

<strong>Socket HEADSHOT!</strong>

<ul>
<li>100% Web-Socket Blocking!</li>
<li>Safe! All Websites Simply Use The Standard Connection.</li>
<li>Just Works! No Configurations Needed.</li>
</ul>

<strong>How?</strong> <em>(Technical)</em>

<ol>
<li><code>at_document_start.js</code> -&gt; <code>at_document_end.js</code> -&gt; <code>at_document_idle.js</code> action: Prevents DOM Usage Of <code>WebSocket</code> Object Constructor, by null'ifying it on initial-load, DOM-load complete and Window load stages.</li>
<li>The Manifest Attribute <code>"all_frames": true</code> Will <em>Also</em> Run [1] (Above) On Main Page, But <strong>Also</strong> On Every Sub-Frame! This Will Help You Combat Various IFRAME-Slaves Used By Various Companies (Google, eBay,..) - <strong>There Is No Sneaking Pass It</strong>.</li>
<li><code>background_request_manipulation.js</code> Will <em>Safely</em> Provides An Extra Protection-Layer, It Will Inspect <em>Socket Connection</em>, Both By Blocking Regular And <strong>Background/Hidden</strong> Connections Using The <code>ws://</code> Or <code>wss://</code> Schemes <strong>And</strong> By Explicitly Blocking The <code>websocket</code> Connection-Type For All URLs. This Will Stop Every Socket-Connection Even <strong>Before It Gets To Connect!</strong></li>
<li>[3] (Above) Will Stop Connections From Plugins Too! Ultimate Protection!</li>
</ol>

Note: Chrome does not need <code>"browserSettings"</code> permission.

<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.
<hr/>

<img alt="" src="resources/info_1.png"/>



<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-WebSocket%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  