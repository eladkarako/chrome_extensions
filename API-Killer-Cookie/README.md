<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Cookie</h1>

A network-firewall that removes cookie HTTP-Headers from outgoing requests,  
and <code>set-cookie</code> HTTP-Headers from incoming responses,  
along with client-side nullification of <code>document.cookie</code>.

It does not read/write/modify/clean the actual cookies in-any way. Just blocks/prevent cookie mechanism from working.
so if a website will try to write a cookie by sending <code>set-cookie</code> header in a response, that header will not be arrived to the client-side,  
and no actual cookie will be written. requests to the server will not "carry" all the cookies along with it, since the <code>cookie</code> HTTP-Header(s) will be removed from them,  
client-side can not read/write existing cookies or create new ones, since the <code>document.cookie</code> is nullified and will always return <code>undefined</code>,  
and the browser can/will not parse new/existing cookies in this case.  

any existing cookies that are stored by the browser are left intact,  
they are not cleaned or modified, they are simply unaccessible through normal means of HTML/javascript,  
but you can absolutly access them through your developer-panel, read/write or clean them all.

This web-extension keeps your privacy, notice I don't need cookie permission, since I do not handle anything regarding the actual CONTENT of what's inside the cookies (nor do I personally care..),  
it works entirely offline. If you want to make sure cookies will be blocked in any way manner - this is your web-extension. it nullifies the mechanism without touching the actual content.


<hr/>

Non-related security tips:
- Chrome: 1. always disable 3rd-party cookies. 2. disable cookies by default and allow them on per-website when needed. see 'chrome://settings/content/cookies'.
- Firefox: 'about:config' - 'network.cookie.cookieBehavior' - set to 2. will block cookies. websites can send you set-cookie headers but no cookie will create locally.

<img src="resource/screenshot_1.png" />  
<img src="resource/screenshot_2.png" />  
<img src="resource/screenshot_3.png" />  
<img src="resource/screenshot_4.png" />  


Developer's HUB / Changelog: see <code>changelog.txt</code>.


I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=API-Killer-Cookie%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
