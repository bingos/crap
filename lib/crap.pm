package crap;

#ABSTRACT: just don't take any

use strict;
use warnings;

my $hawt;

sub import {
  warnings->unimport();
  strict->unimport();
  $hawt = $|;
  $|=1;
}

sub unimport {
  strict->import();
  warnings->import();
  $|=$hawt;
}

q[for when it hits the fan];

=begin Pod::Coverage

  import

  unimport

=end Pod::Coverage

=pod

=head1 SYNOPSIS

  no crap;

  # strict and warnings are enabled

  $foo = 'bar'; # wrong

  use crap;

  # no strictures or warnings now

  $bar = 'foo' # This is 'okay' now

=head1 DESCRIPTION

Enables L<strict> and L<warnings> without all the typing.

It also makes C<STDOUT> 'hot' turning off buffering.

To enable just type C<no crap> in your script.

C<use crap> disables L<strict> and L<warnings> and restores
previous settings to C<STDOUT> bufferingness.

=cut
