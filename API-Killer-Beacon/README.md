<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Beacon</h1>

This web-extension disables beacon (ping) in three ways:
<ul>
<li>
It null'ify/purge/kill the HTML5 JavaScript API (https://developer.mozilla.org/en-US/docs/Web/API/Navigator/sendBeacon), <br/>
this way the page can not trigger sending of new PING-requests.
</li>
<li>
It removes <code>ping</code> attributes from HTML &lt;A&gt;-tag elements (https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a ), <br/>
this stops the browser's built-in mechanism for auto-sending PING-requests on link-hover/click. <br/>
<sub>F.Y.I ping-attribute were just started being used in Google's search-page for each of the results-links.</sub>
</li>
<li>
It sits in the background just <strong>like a firewall</strong> and actively kills requests that uses the beacon/PING protocol, <br/>
so if by any chance there was a PING request triggered by the page - <strong>it will never leave the browser!</strong>.
</li>
</ul>

  

=-=-=-=-=-=-=-=-=-=-=-=  

  

Tip:  
You should also start your browser with <code>--no-pings</code>.  
Old browsers had a front-end to this flag in <code>chrome://flags/#disable-hyperlink-auditing</code>,  
it was removed some time ago, but the command-line flag still works.  
All those methods are layers of protections, making the overall solution stronger.

  

=-=-=-=-=-=-=-=-=-=-=-=  

  

<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.


You can see the recent changes in <code>changelog.nfo</code>.


<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-Beacon%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  
