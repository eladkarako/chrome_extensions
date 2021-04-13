<h1><img src="resources/icon.png" height="64" width="64"/> API-Killer-WebAssembly</h1>

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<!-- li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/">https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/</a></li -->
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-webassembly/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-webassembly/</a></li>
</ul>

<h3><em☞︎ Disable's HTML5's WebAssembly API.</em></h3>

This web-extension disables HTML5's JavaScript WebAssembly-API.
WASM is, basically, a C++ code that runs on the browser, currently it is mostly used by adware/malware websites or virtual-coin miners that uses your browser-power to 'earn them some money'.

There are very-few legitimate uses to WASM now days,
A rare one is the DosBox project, which is an emulator to run old DOS games and programs on the browser.

Use it at your discretion.

For Firefox you may also try: (<code>about:config</code>):
<code>javascript.options.wasm - false</code>
<code>javascript.options.wasm_baselinejit - false</code>
<code>javascript.options.wasm_ionjit - false</code>
<code>javascript.options.asmjs - false</code>

(taken from https://github.com/eladkarako/mods/blob/store/Firefox/_mozilla.cfg_ )

in addition, you may try a <a href="https://github.com/gorhill/uBlock/">uBlock-origin</a> blocking-rule to stop execution of inline JavaScript code-blocks can be: <code>*##script:contains(WebAssembly)</code>.



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

For Chrome - you can pass the following command-line arguments to <code>chrome</code> executable:
<code>--disable-features="WebAssembly,AsmJsToWebAssembly"</code>, <code>--js-flags="--noexpose-wasm"</code>.

<img width="0" height="0" src="resources/screenshot_1.png"/>

<hr/>


<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->

<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-WebAssembly%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  
