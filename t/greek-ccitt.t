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

my $cd_int = Locale::Iconv->new (from => 'GREEK-CCITT',
			     		  		 to => 'INTERNAL');
ok !$cd_int->getError;

my $cd_utf8 = Locale::Iconv->new (from => 'GREEK-CCITT',
								  to => 'UTF-8');
ok !$cd_utf8->getError;

my $cd_rev = Locale::Iconv->new (from => 'INTERNAL',
								 to => 'GREEK-CCITT');
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
							   to => 'GREEK-CCITT',
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
0x0A	0x000A
0x0B	0x000B
0x0C	0x000C
0x0D	0x000D
0x0E	0x000E
0x0F	0x000F
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
0x1A	0x001A
0x1B	0x001B
0x1C	0x001C
0x1D	0x001D
0x1E	0x001E
0x1F	0x001F
0x20	0x0020
0x21	0x0021
0x22	0x0022
0x23	0x0023
0x24	0x00A4
0x25	0x0025
0x26	0x0026
0x27	0x0027
0x28	0x0028
0x29	0x0029
0x2A	0x002A
0x2B	0x002B
0x2C	0x002C
0x2D	0x002D
0x2E	0x002E
0x2F	0x002F
0x30	0x0030
0x31	0x0031
0x32	0x0032
0x33	0x0033
0x34	0x0034
0x35	0x0035
0x36	0x0036
0x37	0x0037
0x38	0x0038
0x39	0x0039
0x3A	0x003A
0x3B	0x003B
0x3C	0x003C
0x3D	0x003D
0x3E	0x003E
0x3F	0x003F
0x40	0x0040
0x41	0x0391
0x42	0x0392
0x43	0x0393
0x44	0x0394
0x45	0x0395
0x46	0x0396
0x47	0x0397
0x48	0x0398
0x49	0x0399
0x4A	0x039A
0x4B	0x039B
0x4C	0x039C
0x4D	0x039D
0x4E	0x039E
0x4F	0x039F
0x50	0x03A0
0x51	0x03A1
0x53	0x03A3
0x54	0x03A4
0x55	0x03A5
0x56	0x03A6
0x57	0x03A7
0x58	0x03A8
0x59	0x03A9
0x5B	0x005B
0x5C	0x005C
0x5D	0x005D
0x5E	0x005E
0x5F	0x005F
0x61	0x03B1
0x62	0x03B2
0x63	0x03B3
0x64	0x03B4
0x65	0x03B5
0x66	0x03B6
0x67	0x03B7
0x68	0x03B8
0x69	0x03B9
0x6A	0x03BA
0x6B	0x03BB
0x6C	0x03BC
0x6D	0x03BD
0x6E	0x03BE
0x6F	0x03BF
0x70	0x03C0
0x71	0x03C1
0x72	0x03C2
0x73	0x03C3
0x74	0x03C4
0x75	0x03C5
0x76	0x03C6
0x77	0x03C7
0x78	0x03C8
0x79	0x03C9
0x7B	0x007B
0x7C	0x007C
0x7D	0x007D
0x7E	0x00AF
0x7F	0x007F
