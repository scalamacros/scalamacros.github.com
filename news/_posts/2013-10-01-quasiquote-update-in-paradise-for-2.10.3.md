---
layout: news
title: Quasiquote update in paradise for 2.10.3
author: Denys Shabalin
comments: true
plusone: true
---

Quasiquotes in paradise 2.0.0-SNAPSHOT for 2.10.3 contain a number of fixes:

* `tq"(..$args) => $res"` now matches as expected;

* `tq"T { ..$refinements }"` now works as expected;

* full support for splicing and extraction of early definitions in classes, traits and objects;

* underlying class def matcher is now much more robust.

* `q"new { ..$early } with ..$parents { $self => ..$body }"` will now match all possible variations of new expressions;

* `val vx = q"val x: Int = 1"; q"def foo($vx)"` will automatically set required flags (e.g. `PARAM`, `DEFAULTPARAM`);

* `val vx = q"val x: Int = 1"; q"class Foo($vx)"` will automatically set required flags (e.g. `PARAMACCESSOR`, `CASEACESSOR`);

The fixes also introduce changes of behaviour that can affect existing code:

* `q"{ ..$stats }"` now matches all the terms (for example this pattern will match `q"foo"` and return `stats == List(q"foo")`). This is done for sake of consistency with single-expression block elimination that is done automatically during parsing;

* patterns like `q"$mods class $name"` won't match traits any longer, use `q"$mods trait $name"` instead;

* `q"$mods val $name: $tpt = $rhs"` won't match vars any longer, use `q"$mods var $name: $tpt = $rhs"` instead.