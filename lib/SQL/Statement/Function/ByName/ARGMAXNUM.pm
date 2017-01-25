package SQL::Statement::Function::ByName::ARGMAXNUM;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(max);

sub SQL_FUNCTION_ARGMAXNUM {
    max(@_[2..$#_]);
}

1;
# ABSTRACT: SQL function to return the (numerically) maximum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<max>.
