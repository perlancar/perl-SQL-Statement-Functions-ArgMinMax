package SQL::Statement::Function::ByName::MAXNUM;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(max);

sub SQL_FUNCTION_MAXNUM {
    max(@_[2..$#_]);
}

1;
# ABSTRACT: MAXNUM() SQL function to return the (numerically) maximum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<max>.
