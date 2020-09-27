# web-start-page



## Native way

1. `cd /lib/firefox/defaults/pref`;
2. If not present, make those two folders;
3. `vim autoconfig.js`;
   **N.B.** The comment line at the top is  required.
``` bash
//
pref("general.config.filename", "autoconfig.cfg");
pref("general.config.obscure_value", 0);
pref("general.config.sandbox_enabled", false);
```
4. `cd ../..`
5. `vim autoconfig.cfg`
6. Put the following in the file, replacing the value of newTabURL with the path to your startpage.
``` bash
// first line is a comment
var {classes:Cc,interfaces:Ci,utils:Cu} = Components;
var newTabURL = "file:///PATH_TO_YOUR_START_PAGE.html";
aboutNewTabService = Cc["@mozilla.org/browser/aboutnewtab-service;1"].getService(Ci.nsIAboutNewTabService);
aboutNewTabService.newTabURL = newTabURL;
```
7. Do not forget about `chmod 777 ...`


## Addons

* [New Tab Override](https://addons.mozilla.org/en-US/firefox/addon/new-tab-override/);

  **N.B.** Works only with one page (without ref to css, js files etc);
