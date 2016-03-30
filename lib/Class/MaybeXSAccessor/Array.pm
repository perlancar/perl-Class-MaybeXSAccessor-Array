package Class::MaybeXSAccessor::Array;

1;
# ABSTRACT: Generate accessors/constructor for array-based object

=for Pod::Coverage .+

=head1 SYNOPSIS

In F<lib/Your/Class.pm>:

 package Your::Class;
 use Class::MaybeXSAccessor::Array {
     accessors => {
         foo => 0,
         bar => 1,
     },
 };

In code that uses your class:

 use Your::Class;

 my $obj = Your::Class->new;
 $obj->foo(1980);
 $obj->bar(12);

C<$obj> is now:

 bless([1980, 12], "Your::Class");


=head1 DESCRIPTION

This module is a builder for array-backed classes. It will use
L<Class::XSAccessor:Array> if available, falling back to
L<Class::Accessor::Array>.

Please make sure that you only use the features that both class support.


=head1 SEE ALSO

L<Class::Accessor::Array>

L<Class::XSAccessor::Array>
