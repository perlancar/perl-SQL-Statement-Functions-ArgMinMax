package SQL::Statement::Function::ByName::ARGMAXSTR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use List::Util qw(maxstr);

sub SQL_FUNCTION_ARGMAXSTR {
    maxstr(@_[2..$#_]);
}

1;
# ABSTRACT: SQL function to return the (string-wise) maximum parameter

=for Pod::Coverage .+

=head1 DESCRIPTION

Uses L<List::Util>'s C<maxstr>.
