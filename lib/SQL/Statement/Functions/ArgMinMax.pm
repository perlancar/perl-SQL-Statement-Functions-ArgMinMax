package SQL::Statement::Functions::ArgMinMax;

# DATE
# VERSION

1;
# ABSTRACT: ARGMIN*/ARGMAX* functions

=head1 DESCRIPTION

This distribution contains several SQL functions to be used with
L<SQL::Statement>:

 ARGMAXNUM()
 ARGMAXSTR()
 ARGMINNUM()
 ARGMINSTR()

These functions are not aggregate functions. They are added due to the lack of
CASE statement as well as IF function in SQL::Statement. For example, this SQL
statement:

 SELECT CASE WHEN a > b THEN a ELSE b END FROM table

can be expressed with:

 SELECT ARGMAXNUM(a, b) FROM table

To use a function from Perl script:

 require SQL::Statement::Function::ByName::ARGMAXNUM;
 $dbh->do(qq{CREATE FUNCTION ARGMAXNUM NAME "SQL::Statement::Function::ByName::ARGMAXNUM::SQL_FUNCTION_ARGMAXNUM"});

To use a function from L<fsql>:

 % fsql -F ARGMAXNUM --add-csv path/to/sometable.csv "SELECT ARGMAXNUM(col1,col2) FROM sometable ..."


=head1 SEE ALSO

L<SQL::Statement>

L<App::fsql>
