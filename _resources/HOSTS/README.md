<h1><img alt="" src="resources/icon.png" height="64" width="64"/> HOSTS</h1>
<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=HOSTS%20-%20"><em><code>ask something/report a bug</code></em></a>  

<strong>☞︎ hosts.eladkarako.com</strong>


<strong>Keep-in-mind:</strong>
<strong>this web-extension uses a block-list that blockes twitter, facebook, tumblr, alibaba/aliexpress, pinterest, linkedin, instagram and couple more so called "useful" websites.</strong>
<strong>so, if you want to use twitter/facebook or your favorite websites does not load, avoid installing this web-extension.</strong>


This web-extension is an efficient connection blocker, 
it will block a list of known domains before the TCP/IP connection has opened, 
which is slightly more efficient than using the actual operation-system's HOSTS file to block the domains, 
which makes the connection-open and hang/wait until there is a connection timeout.

The list of the blocked-hosts are taken from <a href="http://hosts.eladkarako.com">http://hosts.eladkarako.com</a>, 
the list can be downloaded and viewed in here: <a href="https://raw.githubusercontent.com/eladkarako/hosts/master/_raw__hosts.txt">https://raw.githubusercontent.com/eladkarako/hosts/master/_raw__hosts.txt</a>, but the file-size is more than 30MB, so you might want to download it instead of viewing it in the browser.

The list of blocked-hosts is hard-coded into the web-extension, 
there is no 'remote-fetching' of the list, 
which means that I will be uploading a new version of the entire web-extension every now and again, 
to make sure it is somewhat the same as the one in <a href="http://hosts.eladkarako.com">http://hosts.eladkarako.com</a>.

This web-extension does not uses injected-JavaScript to manipulate the DOM, 
it sits in the background, just like a firewall.
This means that it will work even if the web-page is blocking external JavaScript from running.


IT IS NOT MEMORY EFFICIENT!!!
this web-extension can cause your browser to hang and drink-up all the RAM, 
mobile devices with root access might better have their HOSTS modified, 
mobile devices without root access can install AdGuard and adding one/more of the AdBlock lists from <a href="http://hosts.eladkarako.com">http://hosts.eladkarako.com</a> (or use the one that comes by default, also - enable 'DNS blocking' it works really well).
other OS, simply edit your HOSTS file, 

Chrome will grab extra 200MB to process this web-extension,
Firefox can reach up to 500MB from the RAM.

you can use the lists from <a href="http://hosts.eladkarako.com">http://hosts.eladkarako.com</a> with uBlock, it works the same.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img alt="" src="resources/info_1.png"/>

<pre>
Developer's HUB / Changelog

2020.09.28.125410
* updated at 2020-09-28T12:54:10.000Z+00:00 UTC . contains 1722411 bad-hosts.

2020.09.17.015340
* updated at 2020-09-17T01:53:40.000Z+00:00 UTC . contains 1722437 bad-hosts.

2020.09.16.200200
* updated at 2020-09-16T20:02:00.000Z+00:00 UTC . contains 1722535 bad-hosts.

2020.09.14.172200
* updated at 2020-09-14T17:22:00.000Z+00:00 UTC . contains 1722551 bad-hosts.

2020.09.13.171310
* updated at 2020-09-13T17:13:10.000Z+00:00 UTC . contains 1722573 bad-hosts.

2020.09.11.205600
* updated at 2020-09-11T20:56:00.000Z+00:00 UTC . contains 1722587 bad-hosts.

2020.09.01.225210
* updated at 2020-09-01T22:52:10.000Z+00:00 UTC . contains 1722525 bad-hosts.

2020.09.01.092720
* updated at 2020-09-01T09:27:20.000Z+00:00 UTC . contains 1722509 bad-hosts.
  
2020.07.12.140630
* updated at 2020-07-12T14:06:30.000Z+00:00 UTC . contains 895433 bad-hosts.

2020.07.07.012350
* updated at 2020-07-07T01:23:50.000Z+00:00 UTC . contains 895463 bad-hosts.

2020.01.03.153540
* changing the versioning to reflect date of generated HOSTS (full reveresed-data, time HHMMss as whole unit).
* updated at 2020-01-03T15:35:40.000Z+00:00 UTC . contains 1279065 bad-hosts.

1.0.0.6
* content update. #last updated at 2019-12-23T21:54:30.000Z+00:00 UTC . contains 1274458 bad-hosts. direct link: https://raw.githubusercontent.com/eladkarako/hosts/master/_raw__hosts.txt .

1.0.0.5
* content update. #last updated at 2019-12-21T19:28:50.000Z+00:00 UTC . contains 1274258 bad-hosts. direct link: https://raw.githubusercontent.com/eladkarako/hosts/master/_raw__hosts.txt .

1.0.0.4
* content update.

1.0.0.3
* workaround the Mozilla-upload linter, by renaming the data-file file-extension to something else than '.json' ('.json_txt' is good..).

1.0.0.2
* loading the blocking-list from JSON into memory instead of native JS, to allow uploading the web-extension to Mozilla (4MB JS-file size-limit).

1.0.0.1
+ initial.
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->