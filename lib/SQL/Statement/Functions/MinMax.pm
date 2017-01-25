package SQL::Statement::Functions::MinMax;

# DATE
# VERSION

1;
# ABSTRACT: More date/time functions

=head1 DESCRIPTION

This distribution contains several SQL functions to be used with
L<SQL::Statement>:

 MAXNUM()
 MAXSTR()
 MINNUM()
 MINSTR()

These functions are added due to the lack of CASE statement as well as IF
function in SQL::Statement. For example, this SQL statement:

 SELECT CASE WHEN a > b THEN a ELSE b END FROM table

can be expressed with:

 SELECT MAXNUM(a, b) FROM table

To use a function from Perl script:

 require SQL::Statement::Function::ByName::MAXNUM;
 $dbh->do(qq{CREATE FUNCTION MAXNUM NAME "SQL::Statement::Function::ByName::MAXNUM::MAXNUM"});

To use a function from L<fsql>:

 % fsql -F MAXNUM --add-csv path/to/sometable.csv "SELECT MAXNUM(col1,col2) FROM sometable ..."


=head1 SEE ALSO

L<SQL::Statement>

L<App::fsql>
