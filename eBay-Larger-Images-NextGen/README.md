<h1><img alt="" src="resources/icon.png" height="64" width="64"/> eBay-Larger-Images-NextGen</h1>

Internally Redirects Image-Requests To A Much Larger-Resolution (Mostly- 640x640 Pixels). Uses declarativeNetRequest and a JSON-file, No JavaScript At All!!

=-=-=-=-=

note: it will increase the network load (you'll download a larger image each time..), I suggest turning ON the native LazyLoading (or using a forcing LazyLoading web-extension such a 'Lazify'), in a mode that will force LazyLoading for every image even if it does not includes the <code>loading="lazy"</code> attribute. You can do this with <code>chrome://flags</code> (look for "lazy" search term), 
you can also do it by using the following command-line argument with chrome: 
<code>--enable-features=LazyImageLoading:automatic-lazy-load-images-enabled/true/restrict-lazy-load-images-to-data-saver-only/false</code>.

Here is an example for Windows:
<code>"C:\Program Files\Google Chrome\chrome.exe" --disable-logging --disable-breakpad --disable-crash-reporter --no-pings --force-color-profile="srgb" --enable-quic "--enable-features=brotli-encoding,LazyImageLoading:automatic-lazy-load-images-enabled/true/restrict-lazy-load-images-to-data-saver-only/false"</code>.

consider enabling async image decoding to speed things up some more.. 
<code>--enable-async-image-decoding "--enable-features=AsyncImageDecoding"</code> (there are two command-line switches depanding on the version of Chrome..).

=-=-=-=-=

reason:
you can right-click, and click "open image in a new-tab", on any image, for example thumbnails, to get a large and clear image.

=-=-=-=-=

The web-extension is based on a rule syntax that identifies a URL based on a regular-expression (storing 'groups'), and redirect to a slightly modified URL (based on a re-assembled URL using the previously stored 'groups' from the original URL.


identification: <del><code>(^.*ebayimg.*\/s\-l)\d+(\..*$)</code></del>, 
edit:
in-order to reduce the risk of an infinit-loop of redirects, 
I will make sure the first digit of the number is not <code>2</code>, 
using <code>[13456789]\d+</code> instead of just<code>\d+</code>, 
it will, however, skip URLs such as <code>.../s-l256</code> for example.
replacing with: <code>\12000\2</code> (thats <code>\1</code> the number <code>2000</code> and <code>\2</code>).

=-=-=-=-=

after loading the web-extension, 
a cache will be created by the browser in a folder named <code>\_metadata</code> inside it a folder named <code>generated_indexed_rulesets</code> and inside it a single file named <code>\_ruleset1</code>.
if modified in-anyway, you first need to disable the web-extension (better to temp. remove it from Chrome), then manually deleting the folder <code>generated_indexed_rulesets</code> (or entire <code>\_metadata</code> if no other folder exists inside of it..) then enable and reload or re-add the web-extension back again.

=-=-=-=-=

NOTE:
web-extensions names with 'NextGen' suffix, 
are using the 'declarativeNetRequest' permission and a set of rules stored in a local JSON-file, 
instead of 'webRequest' and 'webRequestBlocking' permissions and a  custom-written, blocking (a.k.a. "persistent") JavaScript code.

=-=-=-=-=

This web-extension might not work, depanding on your browser version since 'declarativeNetRequest' was changed a few times, most Chromium v80+ versions should work fine with it.

=-=-=-=-=

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

=-=-=-=-=

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics.

=-=-=-=-=

This web-extension does not uses any JavaScript at all(!), 
no client-side code and no web-extension side,
just a static JSON.
it does not send or gets information, does not stores information, and does not uses cookies nor any kind of storage.


You can see the recent changes in <code>changelog.nfo</code>.


<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=eBay-Larger-Images-NextGen%20-%20"><em><code>ask something/report a bug</code></em></a>  
<a href="https://paypal.me/e1adkarak0/5USD"><em>buy me a coffee ☕︎</em></a>  