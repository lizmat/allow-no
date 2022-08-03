INIT $_ .= subst(/^ '--no-' /, '--/') for @*ARGS;

=begin pod

=head1 NAME

allow-no - provide %*SUB-MAIN-OPTS<allow-no> for older Rakudos

=head1 SYNOPSIS

=begin code :lang<raku>

use allow-no;

sub MAIN(:$foo, :$bar) {
    # calling script with --foo, --no-bar
    say $foo;  # True
    say $bar;  # False
}


=end code

=head1 DESCRIPTION

The C<allow-no> module provides functionality that has been provided by
Rakudo 2022.08 and higher: it allows command line parameters to indicate
a C<False> flag to be specified as C<--no-foo> as well as the standard
allowed C<--/foo> or C<--foo-False>.

Using this module will run an INIT block that will perform the necessary
transformation on C<@*ARGS>.  No further action or configuration is
needed.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/allow-no .
Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a
L<small sponsorship|https://github.com/sponsors/lizmat/>  would mean a great
deal to me!

=head1 COPYRIGHT AND LICENSE

Copyright 2022 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
