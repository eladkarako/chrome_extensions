<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-IndexedDB</h1>

Kills HTML5' <code>IndexedDB</code> API,
might break websites, if they do not have a localStorage/cookie fallback.

indexed-db folders and databases will still get created,  
since the browser renders the page (or even pre-render it) and 
maintaining cache for blobs or File-API is, too, managed by IndexedDB (at least in Chrome),  
this is done by the browser rendering engine not by the page itself.  
From the browser's aspect, storage can be localStorage, sessionStorage or IndexedDB, I suspect IndexedDB is preferable for the browser's internal rendering cache for those objects.  

This is why you can clean manually the indexed-db folder in your profile,  
visit YouTube, and the folder will be re-created,  
but when you open the developer's-panel - no IDB/IndexedDB/... objects/methods are available.

You can prevent the website from using <strong>storage</strong> using a command-line switch (Chrome) <code>--disable-local-storage</code> this includes all types of extended storage (not cookie!) including indexed-db for internal engine and web-extensions as well.

At least this web-extension prevents pages for using the indexed-db database,  
which limits the size of the content to few bytes (mostly short-lived reference to memory-blocks and logs).

<img alt="" src="resources/screenshot1.png"/>

in chrome you can use <code>chrome://indexeddb-internals/</code> for more information.  


=-=-=-=-=-=-=-=-=-=-=  

<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.




<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-IndexedDB%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
