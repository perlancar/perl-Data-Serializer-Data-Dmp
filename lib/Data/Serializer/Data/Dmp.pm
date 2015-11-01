package Data::Serializer::Data::Dmp;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent 'Data::Serializer';
use Data::Dmp;

sub serialize {
    my $self = shift;

    dmp(shift);
}

sub deserialize {
    my $self = shift;

    my $res = eval shift;
    die "Data::Serializer error: $@\twhile evaluating:\n $val" if $@;
    $res;
}

1;
# ABSTRACT:

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 SEE ALSO

L<Data::Serializer>
