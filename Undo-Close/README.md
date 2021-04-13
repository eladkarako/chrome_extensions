<h1><img src="resource/icon.png" /> Style-On-Off</h1>

Firefox users don't really need this web-extension,  
they have a menu item that works better:  
<code>View</code>-<code>Page Style</code>-<code>No Style</code> (and <code>Basic Page Style</code>)

It should still work for them though...

  
=-=-=-=-=-=-=-=-=-=  
=-=-=-=-=-=-=-=-=-=  
  
  
<strong>DevHub - Information on how the web-extension works</strong>  
By default the web-extension has an (internal) empty list of "style-OFF" websites,  
since all websites will have styles-ON by default.  

The web-extension icon is simulating a two state button,  
by default will be shown as a sunken-in state, marking the styles are ON (this is the default for all websites).  

Once a user click the The web-extension icon,  
the icon will change into a button in a raised-up state,  
marking the tab has styles-OFF.  

what actually happens in the background is that the web-extension query the tab's URL,  
and extracts just the hostname part from it, and add it to an internal-list of "style-OFF" websites.  
This allows the users to maintain the ON/OFF state across tab-refreshing, or opening new tabs with same hostname (for example, a URL with different from path).  

=-=-=-=-=-=-=-=-=-=  

Example for full URL:  
<code>https&#x003A;&#x002F;&#x002F;username:password@login.example.com:443/search?q=myinformation#title</code>  
Example for its hostname:  
<code>login.example.com</code>  

=-=-=-=-=-=-=-=-=-=  

This web-extension has two active components that are working side-by-side,  
once the styles are set ON/OFF by clicking the web-extension icon:  
first - background "mini-firewall" to block CSS-requests:  
as early as possible there is a <code>webRequest.onBeforeRequest</code> listener that blocks all style-related (CSS files) resource fetching,  
this is done so the page will not fetch additional styles early and later on, it makes the next step more effective since no later-loaded styles will be added to the DOM.  

secondly - JavaScript:  
the background-script will load three times the content of either <code>resources/client_style_off.js</code> or <code>resources/client_style_on.js</code>,  
by using the (<code>browser.</code> or <code>chrome.</code>'s) <code>tabs.executeScript</code>,  
which allows to select the earliest moment to inject the scripts. By default its only once the "DOM-ready" event has fired,  
but I've set it to execute the relevent file three times, at <code>"document_start"</code> so the script will launch as soon as possible, even if the page hasn't finished loading yet,  
and at <code>"document_end"</code> and <code>"document_idle"</code> to "cover" slow loading styles,  
thanks to the first step ("mini-firewall" to block CSS requests), at this point no additional styles from remote-resources could be fetched,  
and <code>"document_idle"</code> (means after <code>window.onload</code> has fired), means that all existing style-elements have already parsed.  

known issue/feature:  
1. page can still fetch the CSS content as text and inject a dynamicly created style-element into the page at any-time.  
2. local/remote javascript can still dynamically inject locally existing CSS-text content into the page.
3. a user can use developer-panel to inject/modify styles through the UI or DOM-manipulation without any limitation.
4. I don't think this web-extension can block element's inline-style (for example <code>&lt;div style="display:none;"...</code>).. but I'm not 100% sure. Might work.

=-=-=-=-=-=-=-=-=-=  

<strong>what happens when a new tab is opened/existing tab's URL changes?</strong>  
there is a <code>tabs.onUpdated</code> listener that updates the ON/OFF state as soon as possible.  

=-=-=-=-=-=-=-=-=-=  

The "mini-firewall" that blocks fetching of CSS-resources is an independent component,  
it only targets style-related requests, and it has access to the list of "style is off" hostnames,  
<strong>important note</strong> - it does not blocks the request according to the request's hostname,  
but according to the initiator's hostname (the tab's origin that triggered the request).  
Say <code>login.example.com</code> is blocked, but it uses external CSS from <code>https://cdnjs.cloudflare.com/ajax/libs/awesome-bootstrap-checkbox/1.0.2/awesome-bootstrap-checkbox.css</code>,  
if I would have blocked requests with URL that has <code>login.example.com</code> that <code>cdnjs</code> request would have passed free...  
but the request listener (thankfully) provides the "origin" (protocol and hostname) for the tab that triggered the request.  

known issues:
1. the style request might be triggered by an IFRAME without URL (<code>about:blank</code>) and later injected into the main page (or itself),  
this method is very common with eBay pages, it is commonly called (misleadingly) a proxy-IFRAME, designed to reduce the memory usage of the main-page's DOM for loading JavaScript/styles and other resources (it doesn't!),  
Since I block styles based on the hostname of the top-later tab, and the actual initiator might be different, that request might pass-through.  
a possible solution is avoid the given initiator, and use the <code>tabs.query</code> or <code>tabs.get</code> to get the actual tab-object,  
then figure out its all IFRAMEs hostnames and block all of the requests that has those.  
BUT this potentially can break a lot of stuff, say the website has a Google/Facebook-login-cookie-IFRAME (commonly used as 3rd-party widgets or auth-login),  
being that specific means that the styles of other tabs that had those Google/Facebook IFRAMES will be blocked too. 

In this case I tend not to overthink it too much...  
the JavaScript part that turns the style ON/OFF will handle the specific tab, and all its sub-IFRAMEs, locally disable all the stylesheets.  

=-=-=-=-=-=-=-=-=-=  

<strong>Browsers without external-JavaScript support</strong>  
the only component left will be the background "mini-firewall" blocking CSS-files.  
any local style-elements can not be touched.

=-=-=-=-=-=-=-=-=-=  

Possible way of improving the web-extension,  
inject a security policy through a HTTP-header to forbid all styles,  
this works well for all kind of styles, element-inline-style, local style-blocks and external resources,  
it also forbid future dynamic injection of styles.  
The security policy can also be injected as a <em>meta</em> tag into the DOM,  
but either way (meta tag or HTTP-header) the page will need to be refreshed to show re-enabled styles,  
which takes "a lot of the magic" of the web-extension.  
There is also the question how to handle collision with an existing security policy header,  
and the need to parse a possibly "nasty" security policy header which any bug might break page's functionality,  
plus - some newer Chrome/Firefox browsers might be limiting editing that kind of HTTP-headers anyway.

=-=-=-=-=-=-=-=-=-=  

<strong>DATA</strong>  
when you set style-OFF you add the tab's hostname to a list,  
when you set style-ON you remove the tab's hostname from the list,  
the list is stored locally in a variable in memory, but each time it is modified (by a button click),  
the value is synced to a web-extension storage.  
the storage is synced in the user-profile.  
when the web-extension first loads (normally when a user opens a browser for the first time),  
the list-value is read from the web-extension storage into a variable in memory,  

known issues:  
1. The whole thing might be overkill. It was initially made to keep the state of each button across multiple refreshing sessions,  
and blocking "tabs that have URL with the same hostname as the tabs a user has blocked before",  
but I don't know if it is smart to have this "sync" feature.  
it does makes the javascript operation and "mini-firewall" very effective in very early stages of the page loading state,  
but I think it is too much percistant, and a user might forget that the syle is OFF on some website,  
or even mixed result when a user blocks styles from google.com (for example), and then visits a website that has an iframe to google.com which will then only it will be style-blocked...

possible solutions:  
1. add a visual way to see all the stored (and synced) information, allowing add/remove/clear.  
2. don't make the data sync, use <code>storage.local.set/get</code> instead of <code>storage.sync.set/get</code>,  
3. make patches/fixes to make sure only top-level documents (tab's URL) are blocked (along with any sub-IFRAMEs which are not registerd).  
4. (again..) consider using security policy to forbid style instead of DOM-manipulation and background "mini-firewall".  

=-=-=-=-=-=-=-=-=-=  

<pre>
Changelog

1.0.0.1
+ initial
</pre>

<br/>

<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Style-ON_OFF-Switch%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5">buy me a <em>cup of coffee</em> ☕︎</a>  
  
