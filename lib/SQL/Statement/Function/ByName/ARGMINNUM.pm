package SQL::Statement::Function::ByName::ARGMINNUM;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(min);

sub SQL_FUNCTION_ARGMINNUM {
    min(@_[2..$#_]);
}

1;
# ABSTRACT: SQL function to return the (numerically) minimum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<min>.
