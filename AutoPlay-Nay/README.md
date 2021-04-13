<h1><img alt="" src="resources/icon.png" height="64" width="64"/> AutoPlay-Nay</h1>

<strong>☞︎ Stops any/all automated-attempts to play media. Only you can play.</strong>  

This web-extension heuristically tries to stops many-kinds of auto play,  
and also heuristically , try to measure basic user-interaction with a player,  
the user interaction will both unblock the play function,  
and will allow start playing in a single click. 
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  
This web-extension normalize the way  
both Chrome and Firefox are handling  
auto-playing blocking,  
and works well with it.  

I'm doing it with measuring "early-events",  
(mousedown that fires before click,  
keydown that fires before keypress,  
and touch-start) this allows me to keep  
any original player-functionality,  
and the user's original click/key/touch  
will be kept the only organic interaction  
with the player.  
Thats important: no bots/fake clicks here, 
your actions are your own! 
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  

You are advised to make your browser stronger by using those switches:  

Chrome:  
<code>chrome://flags/#autoplay-policy</code> to <code>Document user activation is required</code>.  
or add <code>--autoplay-policy=document-user-activation-required</code> to the command-line.
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  
Firefox:
<code>media.autoplay.default       = 1       //0-allowed 1-blocked 2-ask</code>  
<code>media.autoplay.enabled       = false   //(for old Firefox)</code>  
<code>media.autoplay.enabled.state = 2       //0-ask 1-allowed 2-blocked(for old Firefox)</code>  
<code>media.autoplay.allow-muted   = false   </code>  
<code>media.autoplay.block-event.enabled              = true      //prevent popups as user-interaction.</code>  
<code>media.autoplay.enabled.user-gestures-needed     = false</code>  
<code>media.autoplay.allow-extension-background-pages = false</code>  
<code>media.autoplay.ask-permission                   = false</code>  
<code>media.autoplay.blocking_policy                  = 2         //require user to directly play the player.</code>  
<code>plugins.click_to_play                           = true</code>  
<code>media.block-play-until-visible                  = true</code>  
<code>media.block-autoplay-until-in-foreground        = true</code>  

=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  

<blockquote>
I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), no ads (I hate those!), no cookies, NO data collection, NO analytics, NOT accessing FS, NOT sending or receiving anything and works entirely offline.
</blockquote>


=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  
  
<a href="https://github.com/eladkarako/chrome_extensions/issues/new?title=AutoPlay-Nay%20-%20"><em><code>ask something/report a bug</code></em></a>  

<a href="https://paypal.me/e1adkarak0/5"><em>buy me a coffee ☕︎</em></a>  
  