package Template::Plugin::Path::Tiny;

# ABSTRACT: use Path::Tiny objects from within templates

use Moo;
extends qw/ Template::Plugin /;

use Path::Tiny;
use Types::Standard -types;

use namespace::autoclean;

our $VERSION = 'v0.1.1';

has context => (
    is       => 'ro',
    isa      => Object,
    weak_ref => 1,
);

sub BUILD {
    my ($self) = @_;

    $self->context->define_vmethod( scalar => as_path => \&path );

    $self->context->define_vmethod(
        list => as_path => sub { path( @{ $_[0] } ) } );

}

sub BUILDARGS {
    my ( $class, $context ) = @_;

    return { context => $context };
}

=head1 SYNOPSIS

  [% USE Path::Tiny %]

  The file [% x.basename %] is in [% x.parent %].

=head1 DESCRIPTION

This plugin allows you to turn scalars and lists into L<Path::Tiny>
objects.

=head1 CAVEATS

Besides some simple filename manipulation, this plugin allows you to
perform file operations from within templates. While that may be
useful, it's probably a I<bad idea>.  Consider performing file
operations outside of the template and only using this for
manipulating path names instead.

=head1 SEE ALSO

L<Template>

L<Path::Tiny>

=cut

1;
