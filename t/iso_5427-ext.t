#! /usr/local/bin/perl -w

# vim: syntax=perl
# vim: tabstop=4

use strict;

use Test;

BEGIN {
	plan tests => 7;
}

use Locale::Iconv;

sub int2utf8;

my $codes = {};
while (<DATA>) {
	my ($code, $ucs4, undef) = split /\s+/, $_;
	$codes->{oct $code} = oct $ucs4;
}

my $cd_int = Locale::Iconv->new (from => 'ISO_5427-EXT',
			     		  		 to => 'INTERNAL');
ok !$cd_int->getError;

my $cd_utf8 = Locale::Iconv->new (from => 'ISO_5427-EXT',
								  to => 'UTF-8');
ok !$cd_utf8->getError;

my $cd_rev = Locale::Iconv->new (from => 'INTERNAL',
								 to => 'ISO_5427-EXT');
ok !$cd_rev->getError;

# Convert into internal representation.
my $result_int = 1;
while (my ($code, $ucs4) = each %$codes) {
	my $outbuf = chr $code;
	my $result = $cd_int->recode ($outbuf);
	unless ($result && $outbuf->[0] == $ucs4) {
		$result_int = 0;
		last;
	}
}
ok $result_int;

# Convert to UTF-8.
my $result_utf8 = 1;
while (my ($code, $ucs4) = each %$codes) {
    my $outbuf = chr $code;
    my $result = $cd_utf8->recode ($outbuf);
    unless ($result && $outbuf eq int2utf8 $ucs4) {
        $result_utf8 = 0;
        last;
    }
}
ok $result_utf8;

# Convert from internal representation.
my $result_rev = 1;
while (my ($code, $ucs4) = each %$codes) {
    my $outbuf = [ $ucs4 ];
    my $result = $cd_rev->recode ($outbuf);
    unless ($result && $code == ord $outbuf) {
        $result_int = 0;
        last;
    }
}
ok $result_int;

# Check handling of unknown characters.  This assumes that the 
# character set is a subset of US-ASCII.
my $test_string1 = [ unpack 'c*', ' Supergirl ' ];
$test_string1->[0] = 0xad0be;
$test_string1->[-1] = 0xbeefbabe;
my $test_string2 = [ unpack 'c*', 'Supergirl' ];

$cd_utf8 = Locale::Iconv->new (from => 'INTERNAL',
							   to => 'ISO_5427-EXT',
							   unknown => 0x2a,  # Asterisk!
							  );
my $asterisk = [ (0x2a) ]; # Asterisk!
$result_utf8 = $cd_utf8->recode ($test_string1) &&
	$cd_utf8->recode ($test_string2) &&
		$cd_utf8->recode ($asterisk);
$test_string2 = $asterisk . $test_string2 . $asterisk;
ok $test_string1 eq $test_string2;

sub int2utf8
{
    my $ucs4 = shift;

    if ($ucs4 <= 0x7f) {
		return chr $ucs4;
    } elsif ($ucs4 <= 0x7ff) {
		return pack ("c2", 
			(0xc0 | (($ucs4 >> 6) & 0x1f)),
			(0x80 | ($ucs4 & 0x3f)));
    } elsif ($ucs4 <= 0xffff) {
		return pack ("c3", 
			(0xe0 | (($ucs4 >> 12) & 0xf)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    } elsif ($ucs4 <= 0x1fffff) {
		return pack ("c4", 
			(0xf0 | (($ucs4 >> 18) & 0x7)),
			(0x80 | (($ucs4 >> 12) & 0x3f)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    } elsif ($ucs4 <= 0x3ffffff) {
		return pack ("c5", 
			(0xf0 | (($ucs4 >> 24) & 0x3)),
			(0x80 | (($ucs4 >> 18) & 0x3f)),
			(0x80 | (($ucs4 >> 12) & 0x3f)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    } else {
		return pack ("c6", 
			(0xf0 | (($ucs4 >> 30) & 0x3)),
			(0x80 | (($ucs4 >> 24) & 0x1)),
			(0x80 | (($ucs4 >> 18) & 0x3f)),
			(0x80 | (($ucs4 >> 12) & 0x3f)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    }
}

# Local Variables:
# mode: perl
# perl-indent-level: 4
# perl-continued-statement-offset: 4
# perl-continued-brace-offset: 0
# perl-brace-offset: -4
# perl-brace-imaginary-offset: 0
# perl-label-offset: -4
# cperl-indent-level: 4
# cperl-continued-statement-offset: 2
# tab-width: 4
# End:

__DATA__
0x00	0x0000
0x01	0x0001
0x02	0x0002
0x03	0x0003
0x04	0x0004
0x05	0x0005
0x06	0x0006
0x07	0x0007
0x08	0x0008
0x09	0x0009
0x10	0x0010
0x11	0x0011
0x12	0x0012
0x13	0x0013
0x14	0x0014
0x15	0x0015
0x16	0x0016
0x17	0x0017
0x18	0x0018
0x19	0x0019
0x20	0x0020
0x40	0x0491
0x41	0x0452
0x42	0x0453
0x43	0x0454
0x44	0x0451
0x45	0x0455
0x46	0x0456
0x47	0x0457
0x48	0x0458
0x49	0x0459
0x50	0x0463
0x51	0x0473
0x52	0x0475
0x53	0x046B
0x60	0x0490
0x61	0x0402
0x62	0x0403
0x63	0x0404
0x64	0x0401
0x65	0x0405
0x66	0x0406
0x67	0x0407
0x68	0x0408
0x69	0x0409
0x70	0x0462
0x71	0x0472
0x72	0x0474
0x73	0x046A
