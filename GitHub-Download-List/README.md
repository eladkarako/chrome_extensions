<h1><img src="resources/icon.png" height="64" width="64"/> GitHub-Download-List</h1>

<strong>☞︎ Adds A Button, To Get List Of Direct Download-Links. List Is 100% Compatible With Most Download-Managers (orbitdownloader, Aria2c, wGet,...)</strong>

a small but useful web-extension, 
after you have downloaded the list, 
simply use cURL/wGet/Aria2C to download the list.

For example, here is an advanced command to quickly download a lot of files: 
<code>aria --allow-overwrite=false --auto-file-renaming=false --remote-time=true --human-readable=true --retry-wait=5 "--referer=*" --split=2 --min-split-size=1M --max-connection-per-server=8 --max-concurrent-downloads=8 --enable-http-pipelining=true --referer=* --enable-http-keep-alive=true --check-certificate=false --min-tls-version=TLSv1.2 --dir="." "--input-file=./list.txt"</code>.

the command above will download files, without overwriting existing files, try to grab the original last-modification time, it will try to make the connection efficient as possible, fast, but also to avoid bugging GitHub too much (maximum 8 connection at a time), 
you might will need to re-run the command until all the files are downloaded.

=-=-=-=-=

you can try similar ways with cURL or wGet.

=-=-=-=-=

known issue: button is not shown.
how common(1-10):6.
solution: wait or refresh the page.
cause: GitHub uses History API and Ajax (named "pjax" or "JS-navigation") to navigate without really refreshing the entire page, in-most-of times the web-extension will show the button correctly, but you can always refresh the page (F5) to make the page "truely refresh", in that case the javascript engine will have no problem showing the button
developer handling it with: a lot of event listener and an "alarm" ("timer") to query the page again and again.

=-=-=

(possible) known issue: button is not shown (even after refresh)
how common(1-10):1
(possible) cause: GitHub has changed the page structure and the web-extension needs to update the querying of elements in the page (placeholder for the button, or file-links).
it was happend once in the past when github has changed the page structure to be more flexible (HTML5/mobile). I kept to old identification-queries since they are useful if the page is loaded in an old (or mocked user-agent) device such as Firefox 3.6 for example.
solution: contact the developer.
developer handling it with: complex 'querySelectorAll' that includes variation of matching-targets-cases.


=-=-=-=-=-=-=-=

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img src="resources/screenshot_1.png"/>

<br/>
<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=GitHub-Download-List%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  