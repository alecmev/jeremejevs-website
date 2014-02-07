// ==UserScript==
// @name           MSDN language redirect
// @namespace      http://freecog.net/2007/
// @description    Redirects to the MSDN en-US documenation from other languages.
// @include        http://msdn.microsoft.com/*
// ==/UserScript==

var old_loc = loc = window.location.href;
loc = loc.replace(/\/[^\/]+\/library\//, "/en-us/library/");
if (loc != old_loc) window.location.replace(loc);