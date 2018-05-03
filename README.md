# NAME

Template::Plugin::Path::Tiny - use Path::Tiny objects from within templates

# VERSION

version v0.1.0

# SYNOPSIS

```
[% USE Path::Tiny %]

The file [% x.basename %] is in [% x.parent %].
```

# DESCRIPTION

This plugin allows you to turn scalars and lists into [Path::Tiny](https://metacpan.org/pod/Path::Tiny)
objects.

# CAVEATS

Besides some simple filename manipulation, this plugin allows you to
perform file operations from within templates. While that may be
useful, it's probably a _bad idea_.  Consider performing file
operations outside of the template and only using this for
manipulating path names instead.

# SEE ALSO

[Template](https://metacpan.org/pod/Template)

[Path::Tiny](https://metacpan.org/pod/Path::Tiny)

# AUTHOR

Robert Rothenberg <rrwo@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018 by Robert Rothenberg.

This is free software, licensed under:

```
The Artistic License 2.0 (GPL Compatible)
```
