<h1><img src="resources/icon.png" height="64" width="64"/> Level-Up</h1>

☞︎ Clicking [ALT]+[UP] Will Traverse One Level-Up The URL Path. Similar To Windows Explorer (or other OS).

starting point:
<code>https://subdomain.example.com/going/to/here?key1=value1&key2=value2#this_is_a_tag_aka_has</code>

the stripping of parts of the path will go like this (each row a user presses <kbd>ALT</kbd>+<kbd>UP</kbd>).
<pre>
https://subdomain.example.com/going/to/here?key1=value1&key2=value2
https://subdomain.example.com/going/to/here
https://subdomain.example.com/going/to
https://subdomain.example.com/going
https://subdomain.example.com
https://example.com
</pre>
pressing <kbd>ALT</kbd>+<kbd>UP</kbd> does nothing at this point, 
but some websites might redirect (HTTP-302) to <code>www.example.com</code>, 
so you may press <kbd>ALT</kbd>+<kbd>UP</kbd> again (and wait for redirecting again..) but it will be kind-of pointless.. :]

=-=-=-=-=

<br/><a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=Up-Level%20-%20"><em><code>ask something/report a bug</code></em></a>  
<br/><a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
