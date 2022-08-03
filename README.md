[![Actions Status](https://github.com/lizmat/allow-no/actions/workflows/test.yml/badge.svg)](https://github.com/lizmat/allow-no/actions)

NAME
====

allow-no - provide %*SUB-MAIN-OPTallow-no for older Rakudos

SYNOPSIS
========

```raku
use allow-no;

sub MAIN(:$foo, :$bar) {
    # calling script with --foo, --no-bar
    say $foo;  # True
    say $bar;  # False
}
```

DESCRIPTION
===========

The `allow-no` module provides functionality that has been provided by Rakudo 2022.08 and higher: it allows command line parameters to indicate a `False` flag to be specified as `--no-foo` as well as the standard allowed `--/foo` or `--foo-False`.

Using this module will run an INIT block that will perform the necessary transformation on `@*ARGS`. No further action or configuration is needed.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/allow-no . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

