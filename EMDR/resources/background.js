/* ╔══════════════════════════════╗
   ║ background_main              ║
   ╟──────────────────────────────╢
   ║                              ║
   ╚══════════════════════════════╝
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ */
"use strict";
var API                     = chrome || browser

   ,get_url                 = API.runtime.getURL /*newer*/ || API.extension.getURL /*older*/
   ,URL_BASE                = get_url("resources").replace(/\/+$/gm, "")              //fully-qualified URL, no '/' suffix.
   ,is_url_regex            = new RegExp(URL_BASE, "i")
   ,tabs_query              = function(callback_function){                            //mediator between older API and newer API.
                                if("function" === typeof API.tabs.query){             //newer API
                                  return API.tabs.query({}, callback_function);       //first argument is {} - "look in all windows".
                                }else{                                                //older API
                                  return API.tabs.getAllInWindow(null, callback_function);  //first argument is  null - "look in all windows".
                                }
                              }

   ,switchto_properties     = {"active" : true}
   ,create_properties       = {"url"    : "resources/index.html"
                              ,"active" : true
                              }
   ;


function got_all_tabs_callback(tabs){
  var target = tabs.filter(function(tab){return is_url_regex.test(tab.url);}) //look for an already opened-tab with the same url as 'URL' above
                   .pop()
                   ;
  if("undefined" !== typeof target && null !== target){
    API.tabs.update(target.id, switchto_properties, function(tab){}); //found, switch to it (make active).
  }else{
    API.tabs.create(create_properties, function(tab){});              //not-found, create (in active state).
  }
}


function badge_click_handler(){
  tabs_query(got_all_tabs_callback);
}


API.browserAction.onClicked.addListener(badge_click_handler);

