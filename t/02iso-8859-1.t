#! /usr/local/bin/perl -w

# vim: syntax=perl
# vim: tabstop=4

use strict;

use Test;

BEGIN {
	plan tests => 7;
}

use Locale::Recode;

sub int2utf8;

my $codes = {};
while (<DATA>) {
	my ($code, $ucs4, undef) = split /\s+/, $_;
	$codes->{oct $code} = oct $ucs4;
}

my $cd_int = Locale::Recode->new (from => 'ISO-8859-1',
			     		  		 to => 'INTERNAL');
ok !$cd_int->getError;

my $cd_utf8 = Locale::Recode->new (from => 'ISO-8859-1',
								  to => 'UTF-8');
ok !$cd_utf8->getError;

my $cd_rev = Locale::Recode->new (from => 'INTERNAL',
								 to => 'ISO-8859-1');
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

$cd_utf8 = Locale::Recode->new (from => 'INTERNAL',
							   to => 'ISO-8859-1',
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
		return pack ("C2", 
			(0xc0 | (($ucs4 >> 6) & 0x1f)),
			(0x80 | ($ucs4 & 0x3f)));
    } elsif ($ucs4 <= 0xffff) {
		return pack ("C3", 
			(0xe0 | (($ucs4 >> 12) & 0xf)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    } elsif ($ucs4 <= 0x1fffff) {
		return pack ("C4", 
			(0xf0 | (($ucs4 >> 18) & 0x7)),
			(0x80 | (($ucs4 >> 12) & 0x3f)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    } elsif ($ucs4 <= 0x3ffffff) {
		return pack ("C5", 
			(0xf0 | (($ucs4 >> 24) & 0x3)),
			(0x80 | (($ucs4 >> 18) & 0x3f)),
			(0x80 | (($ucs4 >> 12) & 0x3f)),
			(0x80 | (($ucs4 >> 6) & 0x3f)),
			(0x80 | ($ucs4 & 0x3f)));
    } else {
		return pack ("C6", 
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
0x24	0x0024
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
0x41	0x0041
0x42	0x0042
0x43	0x0043
0x44	0x0044
0x45	0x0045
0x46	0x0046
0x47	0x0047
0x48	0x0048
0x49	0x0049
0x4A	0x004A
0x4B	0x004B
0x4C	0x004C
0x4D	0x004D
0x4E	0x004E
0x4F	0x004F
0x50	0x0050
0x51	0x0051
0x52	0x0052
0x53	0x0053
0x54	0x0054
0x55	0x0055
0x56	0x0056
0x57	0x0057
0x58	0x0058
0x59	0x0059
0x5A	0x005A
0x5B	0x005B
0x5C	0x005C
0x5D	0x005D
0x5E	0x005E
0x5F	0x005F
0x60	0x0060
0x61	0x0061
0x62	0x0062
0x63	0x0063
0x64	0x0064
0x65	0x0065
0x66	0x0066
0x67	0x0067
0x68	0x0068
0x69	0x0069
0x6A	0x006A
0x6B	0x006B
0x6C	0x006C
0x6D	0x006D
0x6E	0x006E
0x6F	0x006F
0x70	0x0070
0x71	0x0071
0x72	0x0072
0x73	0x0073
0x74	0x0074
0x75	0x0075
0x76	0x0076
0x77	0x0077
0x78	0x0078
0x79	0x0079
0x7A	0x007A
0x7B	0x007B
0x7C	0x007C
0x7D	0x007D
0x7E	0x007E
0x7F	0x007F
0x80	0x0080
0x81	0x0081
0x82	0x0082
0x83	0x0083
0x84	0x0084
0x85	0x0085
0x86	0x0086
0x87	0x0087
0x88	0x0088
0x89	0x0089
0x8A	0x008A
0x8B	0x008B
0x8C	0x008C
0x8D	0x008D
0x8E	0x008E
0x8F	0x008F
0x90	0x0090
0x91	0x0091
0x92	0x0092
0x93	0x0093
0x94	0x0094
0x95	0x0095
0x96	0x0096
0x97	0x0097
0x98	0x0098
0x99	0x0099
0x9A	0x009A
0x9B	0x009B
0x9C	0x009C
0x9D	0x009D
0x9E	0x009E
0x9F	0x009F
0xA0	0x00A0
0xA1	0x00A1
0xA2	0x00A2
0xA3	0x00A3
0xA4	0x00A4
0xA5	0x00A5
0xA6	0x00A6
0xA7	0x00A7
0xA8	0x00A8
0xA9	0x00A9
0xAA	0x00AA
0xAB	0x00AB
0xAC	0x00AC
0xAD	0x00AD
0xAE	0x00AE
0xAF	0x00AF
0xB0	0x00B0
0xB1	0x00B1
0xB2	0x00B2
0xB3	0x00B3
0xB4	0x00B4
0xB5	0x00B5
0xB6	0x00B6
0xB7	0x00B7
0xB8	0x00B8
0xB9	0x00B9
0xBA	0x00BA
0xBB	0x00BB
0xBC	0x00BC
0xBD	0x00BD
0xBE	0x00BE
0xBF	0x00BF
0xC0	0x00C0
0xC1	0x00C1
0xC2	0x00C2
0xC3	0x00C3
0xC4	0x00C4
0xC5	0x00C5
0xC6	0x00C6
0xC7	0x00C7
0xC8	0x00C8
0xC9	0x00C9
0xCA	0x00CA
0xCB	0x00CB
0xCC	0x00CC
0xCD	0x00CD
0xCE	0x00CE
0xCF	0x00CF
0xD0	0x00D0
0xD1	0x00D1
0xD2	0x00D2
0xD3	0x00D3
0xD4	0x00D4
0xD5	0x00D5
0xD6	0x00D6
0xD7	0x00D7
0xD8	0x00D8
0xD9	0x00D9
0xDA	0x00DA
0xDB	0x00DB
0xDC	0x00DC
0xDD	0x00DD
0xDE	0x00DE
0xDF	0x00DF
0xE0	0x00E0
0xE1	0x00E1
0xE2	0x00E2
0xE3	0x00E3
0xE4	0x00E4
0xE5	0x00E5
0xE6	0x00E6
0xE7	0x00E7
0xE8	0x00E8
0xE9	0x00E9
0xEA	0x00EA
0xEB	0x00EB
0xEC	0x00EC
0xED	0x00ED
0xEE	0x00EE
0xEF	0x00EF
0xF0	0x00F0
0xF1	0x00F1
0xF2	0x00F2
0xF3	0x00F3
0xF4	0x00F4
0xF5	0x00F5
0xF6	0x00F6
0xF7	0x00F7
0xF8	0x00F8
0xF9	0x00F9
0xFA	0x00FA
0xFB	0x00FB
0xFC	0x00FC
0xFD	0x00FD
0xFE	0x00FE
0xFF	0x00FF
