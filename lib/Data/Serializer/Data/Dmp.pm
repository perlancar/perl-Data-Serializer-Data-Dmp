package Data::Serializer::Data::Dmp;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent 'Data::Serializer';
use Data::Dmp;

sub serialize {
    my ($self, $val) = @_;
    dmp($val);
}

sub deserialize {
    my ($self, $val) = @_;

    my $res = eval $val;
    die "Data::Serializer error: $@\twhile evaluating:\n $val" if $@;
    $res;
}

1;
# ABSTRACT: Bridge between Data::Serializer and Data::Dmp

=head1 SYNOPSIS


=head1 DESCRIPTION


=head1 SEE ALSO

L<Data::Serializer>
