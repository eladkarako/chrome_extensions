<h1><img src="resources/icon.png" height="64" width="64"/> Pleasant-Web</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Pleasant-Web%20-%20"><em><code>ask something/report a bug</code></em></a>  

<strong>☞︎ Pure CSS, Mini AdBlock to make the web more pleasant.</strong>

A collection of CSS-Rules, which are quite generic but pretty-darn complex to (semi-)heuristically clear large amount of junk from web-pages, 
without the need of an additional JavaScript solution.
When combined with any uBlock-origin/Adblock related solution, 
the CSS-rules injected by this web-extension will probably be-prefered by the browser.

You can get the same effect of installing this web-extension by using uBlock-origin, 
with the top, generic (non-domain specific) rules from <code>_raw__hosts_adblock_anti_annoyances_hide.txt</code> of the 
https://github.com/eladkarako/hosts project.

This web-extension is nothing special, usually there is some-kind of JavaScript-control, ON/OFF switch, 
and even a way to dynamically add new rules such as with the (really great) uBlock-origin, 

But sometimes uBlock (for example) breaks a website or blocks the request/response chain as well, 
and you only want to remove few annoying visual elements from the screen...

- ad removing
- ad removing, where the ads are identified by events-hooking.
- ad removing, where the ads are identified by href/src attributes.
- remove pesky Google-Ads even if they come back when using uBlock-origin.
- ad removing, specific for tracker-combinations.
- rude adblock warnings, "after ad-removing" - when your adblock is identified by the web-page.
- ad removing, heuristics with complex CSS-selector combination to remove annoying stuff.
- non-ad/informative-overlays that are useless and still blocks the screen.
- hiding promotions messages.
- hiding $h!t content semi-apps by disqus, facebook, twitter, etc...
- hiding non-helpful, often broken "accessibility" menu called 'Atar Nagish'
- hiding bad website structures that slows down the page such as categories and tags links near titles/articles in WordPress-based pages.
- simply hide all adf-ly and bit-ly because you should never click on them.
- hide all social/share buttons.
- cookie notifications popups at the bottom/top of the screen.
- hide donation links, PayPal and such.
- hide newsletter-boxes and email-signin areas on pages.
- hide silverlight errors on pages(a bit old but still useful).
- hide footer areas, this is the same as installing the footer web-extension: https://addons.mozilla.org/en-GB/firefox/addon/unfooter/ - so if you've install this one you can remove it.

<pre>
Developer's HUB / Changelog

1.0.0.10
- removing FOOTER rules since YouTube-manager uses those for button placemtns in dialongs (rule should be improved).
+ adding support for specific domains and types of ad-containers but specific so will not bother other domains.


1.0.0.9
* content update.

1.0.0.8
* content update.

1.0.0.6
* improving some selectors to be more specific

1.0.0.5
* updating DB to include latest from hosts.eladkarako.com - '_raw__hosts_adblock_anti_annoyances_hide.txt'
* engine change - use CSS-injections just on the start of the page's life-cycle, skip the onread/onload later-event-triggers.

1.0.0.4
+ blocking more cookie-notification signatures.

1.0.0.1
+ initial.
</pre>
