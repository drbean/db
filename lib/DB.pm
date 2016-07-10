package DB;

# Created: 06/25/2016 10:28:33 AM
# Last Edit: 2016 Jul 09, 09:36:54 PM
# $Id$

=head1 NAME

DB.pm - base lib for running db

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

use strict;
use warnings;

use App::Cmd::Setup -app;

=head1 DESCRIPTION

Base class for a collection of different SQL operations on different databases

=cut

=head1 AUTHOR

Dr Bean C<< <drbean at cpan, then a dot, (.), and org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-/home/drbean/class/ttb/dictation/libDB.pm at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=/home/drbean/class/ttb/dictation/libDB.pm>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

	perldoc /home/drbean/class/ttb/dictation/libDB.pm

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist//home/drbean/class/ttb/dictation/libDB.pm>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d//home/drbean/class/ttb/dictation/libDB.pm>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=/home/drbean/class/ttb/dictation/libDB.pm>

=item * Search CPAN

L<http://search.cpan.org/dist//home/drbean/class/ttb/dictation/libDB.pm>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2016 Dr Bean, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;    # End of /home/drbean/class/ttb/dictation/libDB.pm

# vim: set ts=8 sts=4 sw=4 noet:

