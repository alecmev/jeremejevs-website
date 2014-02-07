// ==UserScript==
// @name           Java 7 Documentation Redirect
// @namespace      http://freecog.net/2007/
// @description    Redirects to the Java SE 7 documenation from older pages.
// @include        http://docs.oracle.com/javase/*
// ==/UserScript==

var old_loc = loc = window.location.href;
loc = loc.replace(/\/javase\/[^\/]+\/docs\//, "/javase/7/docs/");
if (loc != old_loc) window.location.replace(loc);