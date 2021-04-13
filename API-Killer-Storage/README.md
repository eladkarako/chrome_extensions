<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Storage</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-Storage%20-%20"><em><code>ask something/report a bug</code></em></a>  

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<!-- li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/">https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/</a></li -->
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-storage/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-storage/</a></li>
</ul>

This web-extension kills the HTML5' Storage-API, <br/>
https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage
https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage
https://developer.mozilla.org/en-US/docs/Web/API/Storage
https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent
https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API


How does it works?
The web-extension first decimates the methods from the <code>Storage</code>-object prototype (<code>getItem</code>, <code>setItem</code>, <code>removeItem</code>,...), 
this is done in-order to purge all of the custom objects that were (or will) derived from it, <br/>
particularly <code>localStorage</code>-like objects which were initiated without a <strong>set</strong>-method in their <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#Parameters">descriptor</a> (a.k.a "readonly"), 
when that's gone, there are various storage-related objects (<code>sessionStorage</code>, <code>localStorage</code>,...)
and browser-specific ones (<code>webkitStorageInfo</code>, <code>webkitPersistentStorage</code>,..).

Note: there are some entries that were under <code>window</code> moved under <code>window.navigator</code> (<code>\*TemporaryStorage</code>, <code>\*PersistentStorage</code>), I nullify both cases (and browser prefix).  

<hr/>

Beware, <br/>
This <strong>will really mess $h!t-up</strong>, <br/>
the <code>Storage</code>-API was "here" long-enough so some web-apps/websites might not bother to fallback to using <code>document.cookie</code> (or even indexedDB), <br/>
plus - I havn't really researched what would happen to the core-pages (for example accounts.firefox.com) which tend to send-messages to the core of the browser, for example for sync. of the profile. <br/>
it will surely break something...
I'm ~~~pretty~~~ sure that the browser-shell (used to be called "CִHְROַME") and extensions are isolated, 


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img width="0" height="0" alt="" src="resources/screenshot1.png"/>

