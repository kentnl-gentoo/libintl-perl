#! /bin/false
# -*- perl -*-
# $Id: IBM424.pm,v 1.2 2002/07/09 19:02:16 guido Exp $

# Conversion routines for IBM424.
# Copyright (C) 2002 Guido Flohr <guido@imperia.net>, all rights reserved.
# This file is generated, do not edit!

# Distribution either under the terms of the Artistic license (see
# Artistic) or - at your choice - under the terms and conditions of
# the GNU General Public License described below.

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
# 02111-1307, USA.

package Locale::IconvData::IBM424;

use base Locale::IconvData;

use strict;

my @to_ucs4 = (
    0x00000000,
    0x00000001,
    0x00000002,
    0x00000003,
    0x0000009c,
    0x00000009,
    0x00000086,
    0x0000007f,
    0x00000097,
    0x0000008d,
    0x0000008e,
    0x0000000b,
    0x0000000c,
    0x0000000d,
    0x0000000e,
    0x0000000f,
    0x00000010,
    0x00000011,
    0x00000012,
    0x00000013,
    0x0000009d,
    0x00000085,
    0x00000008,
    0x00000087,
    0x00000018,
    0x00000019,
    0x00000092,
    0x0000008f,
    0x0000001c,
    0x0000001d,
    0x0000001e,
    0x0000001f,
    0x00000080,
    0x00000081,
    0x00000082,
    0x00000083,
    0x00000084,
    0x0000000a,
    0x00000017,
    0x0000001b,
    0x00000088,
    0x00000089,
    0x0000008a,
    0x0000008b,
    0x0000008c,
    0x00000005,
    0x00000006,
    0x00000007,
    0x00000090,
    0x00000091,
    0x00000016,
    0x00000093,
    0x00000094,
    0x00000095,
    0x00000096,
    0x00000004,
    0x00000098,
    0x00000099,
    0x0000009a,
    0x0000009b,
    0x00000014,
    0x00000015,
    0x0000009e,
    0x0000001a,
    0x00000020,
    0x000005d0,
    0x000005d1,
    0x000005d2,
    0x000005d3,
    0x000005d4,
    0x000005d5,
    0x000005d6,
    0x000005d7,
    0x000005d8,
    0x000000a2,
    0x0000002e,
    0x0000003c,
    0x00000028,
    0x0000002b,
    0x0000007c,
    0x00000026,
    0x000005d9,
    0x000005da,
    0x000005db,
    0x000005dc,
    0x000005dd,
    0x000005de,
    0x000005df,
    0x000005e0,
    0x000005e1,
    0x00000021,
    0x00000024,
    0x0000002a,
    0x00000029,
    0x0000003b,
    0x000000ac,
    0x0000002d,
    0x0000002f,
    0x000005e2,
    0x000005e3,
    0x000005e4,
    0x000005e5,
    0x000005e6,
    0x000005e7,
    0x000005e8,
    0x000005e9,
    0x000000a6,
    0x0000002c,
    0x00000025,
    0x0000005f,
    0x0000003e,
    0x0000003f,
    undef,
    0x000005ea,
    undef,
    undef,
    0x000000a0,
    undef,
    undef,
    undef,
    0x000021d4,
    0x00000060,
    0x0000003a,
    0x00000023,
    0x00000040,
    0x00000027,
    0x0000003d,
    0x00000022,
    undef,
    0x00000061,
    0x00000062,
    0x00000063,
    0x00000064,
    0x00000065,
    0x00000066,
    0x00000067,
    0x00000068,
    0x00000069,
    0x000000ab,
    0x000000bb,
    undef,
    undef,
    undef,
    undef,
    0x000000b0,
    0x0000006a,
    0x0000006b,
    0x0000006c,
    0x0000006d,
    0x0000006e,
    0x0000006f,
    0x00000070,
    0x00000071,
    0x00000072,
    undef,
    undef,
    undef,
    0x000000b8,
    undef,
    0x000000a4,
    0x000000b5,
    0x0000007e,
    0x00000073,
    0x00000074,
    0x00000075,
    0x00000076,
    0x00000077,
    0x00000078,
    0x00000079,
    0x0000007a,
    undef,
    undef,
    undef,
    undef,
    undef,
    0x000000ae,
    0x0000005e,
    0x000000a3,
    0x000000a5,
    0x000000b7,
    0x000000a9,
    0x000000a7,
    0x000000b6,
    0x000000bc,
    0x000000bd,
    0x000000be,
    0x0000005b,
    0x0000005d,
    0x0000203e,
    0x000000a8,
    0x000000b4,
    0x000000d7,
    0x0000007b,
    0x00000041,
    0x00000042,
    0x00000043,
    0x00000044,
    0x00000045,
    0x00000046,
    0x00000047,
    0x00000048,
    0x00000049,
    0x000000ad,
    undef,
    undef,
    undef,
    undef,
    undef,
    0x0000007d,
    0x0000004a,
    0x0000004b,
    0x0000004c,
    0x0000004d,
    0x0000004e,
    0x0000004f,
    0x00000050,
    0x00000051,
    0x00000052,
    0x000000b9,
    undef,
    undef,
    undef,
    undef,
    undef,
    0x0000005c,
    0x000000f7,
    0x00000053,
    0x00000054,
    0x00000055,
    0x00000056,
    0x00000057,
    0x00000058,
    0x00000059,
    0x0000005a,
    0x000000b2,
    undef,
    undef,
    undef,
    undef,
    undef,
    0x00000030,
    0x00000031,
    0x00000032,
    0x00000033,
    0x00000034,
    0x00000035,
    0x00000036,
    0x00000037,
    0x00000038,
    0x00000039,
    0x000000b3,
    undef,
    undef,
    undef,
    undef,
    0x0000009f,
);

my @to_utf8 = (
    "\x00",
    "\x01",
    "\x02",
    "\x03",
    "\xc2\x9c",
    "\x09",
    "\xc2\x86",
    "\x7f",
    "\xc2\x97",
    "\xc2\x8d",
    "\xc2\x8e",
    "\x0b",
    "\x0c",
    "\x0d",
    "\x0e",
    "\x0f",
    "\x10",
    "\x11",
    "\x12",
    "\x13",
    "\xc2\x9d",
    "\xc2\x85",
    "\x08",
    "\xc2\x87",
    "\x18",
    "\x19",
    "\xc2\x92",
    "\xc2\x8f",
    "\x1c",
    "\x1d",
    "\x1e",
    "\x1f",
    "\xc2\x80",
    "\xc2\x81",
    "\xc2\x82",
    "\xc2\x83",
    "\xc2\x84",
    "\x0a",
    "\x17",
    "\x1b",
    "\xc2\x88",
    "\xc2\x89",
    "\xc2\x8a",
    "\xc2\x8b",
    "\xc2\x8c",
    "\x05",
    "\x06",
    "\x07",
    "\xc2\x90",
    "\xc2\x91",
    "\x16",
    "\xc2\x93",
    "\xc2\x94",
    "\xc2\x95",
    "\xc2\x96",
    "\x04",
    "\xc2\x98",
    "\xc2\x99",
    "\xc2\x9a",
    "\xc2\x9b",
    "\x14",
    "\x15",
    "\xc2\x9e",
    "\x1a",
    "\x20",
    "\xd7\x90",
    "\xd7\x91",
    "\xd7\x92",
    "\xd7\x93",
    "\xd7\x94",
    "\xd7\x95",
    "\xd7\x96",
    "\xd7\x97",
    "\xd7\x98",
    "\xc2\xa2",
    "\x2e",
    "\x3c",
    "\x28",
    "\x2b",
    "\x7c",
    "\x26",
    "\xd7\x99",
    "\xd7\x9a",
    "\xd7\x9b",
    "\xd7\x9c",
    "\xd7\x9d",
    "\xd7\x9e",
    "\xd7\x9f",
    "\xd7\xa0",
    "\xd7\xa1",
    "\x21",
    "\x24",
    "\x2a",
    "\x29",
    "\x3b",
    "\xc2\xac",
    "\x2d",
    "\x2f",
    "\xd7\xa2",
    "\xd7\xa3",
    "\xd7\xa4",
    "\xd7\xa5",
    "\xd7\xa6",
    "\xd7\xa7",
    "\xd7\xa8",
    "\xd7\xa9",
    "\xc2\xa6",
    "\x2c",
    "\x25",
    "\x5f",
    "\x3e",
    "\x3f",
    undef,
    "\xd7\xaa",
    undef,
    undef,
    "\xc2\xa0",
    undef,
    undef,
    undef,
    "\xe2\x87\x94",
    "\x60",
    "\x3a",
    "\x23",
    "\x40",
    "\x27",
    "\x3d",
    "\x22",
    undef,
    "\x61",
    "\x62",
    "\x63",
    "\x64",
    "\x65",
    "\x66",
    "\x67",
    "\x68",
    "\x69",
    "\xc2\xab",
    "\xc2\xbb",
    undef,
    undef,
    undef,
    undef,
    "\xc2\xb0",
    "\x6a",
    "\x6b",
    "\x6c",
    "\x6d",
    "\x6e",
    "\x6f",
    "\x70",
    "\x71",
    "\x72",
    undef,
    undef,
    undef,
    "\xc2\xb8",
    undef,
    "\xc2\xa4",
    "\xc2\xb5",
    "\x7e",
    "\x73",
    "\x74",
    "\x75",
    "\x76",
    "\x77",
    "\x78",
    "\x79",
    "\x7a",
    undef,
    undef,
    undef,
    undef,
    undef,
    "\xc2\xae",
    "\x5e",
    "\xc2\xa3",
    "\xc2\xa5",
    "\xc2\xb7",
    "\xc2\xa9",
    "\xc2\xa7",
    "\xc2\xb6",
    "\xc2\xbc",
    "\xc2\xbd",
    "\xc2\xbe",
    "\x5b",
    "\x5d",
    "\xe2\x80\xbe",
    "\xc2\xa8",
    "\xc2\xb4",
    "\xc3\x97",
    "\x7b",
    "\x41",
    "\x42",
    "\x43",
    "\x44",
    "\x45",
    "\x46",
    "\x47",
    "\x48",
    "\x49",
    "\xc2\xad",
    undef,
    undef,
    undef,
    undef,
    undef,
    "\x7d",
    "\x4a",
    "\x4b",
    "\x4c",
    "\x4d",
    "\x4e",
    "\x4f",
    "\x50",
    "\x51",
    "\x52",
    "\xc2\xb9",
    undef,
    undef,
    undef,
    undef,
    undef,
    "\x5c",
    "\xc3\xb7",
    "\x53",
    "\x54",
    "\x55",
    "\x56",
    "\x57",
    "\x58",
    "\x59",
    "\x5a",
    "\xc2\xb2",
    undef,
    undef,
    undef,
    undef,
    undef,
    "\x30",
    "\x31",
    "\x32",
    "\x33",
    "\x34",
    "\x35",
    "\x36",
    "\x37",
    "\x38",
    "\x39",
    "\xc2\xb3",
    undef,
    undef,
    undef,
    undef,
    "\xc2\x9f",
);

my %from_ucs4 = (
    0x00000000 => "\x00",
    0x00000001 => "\x01",
    0x00000002 => "\x02",
    0x00000003 => "\x03",
    0x00000004 => "\x37",
    0x00000005 => "\x2d",
    0x00000006 => "\x2e",
    0x00000007 => "\x2f",
    0x00000008 => "\x16",
    0x00000009 => "\x05",
    0x0000000a => "\x25",
    0x0000000b => "\x0b",
    0x0000000c => "\x0c",
    0x0000000d => "\x0d",
    0x0000000e => "\x0e",
    0x0000000f => "\x0f",
    0x00000010 => "\x10",
    0x00000011 => "\x11",
    0x00000012 => "\x12",
    0x00000013 => "\x13",
    0x00000014 => "\x3c",
    0x00000015 => "\x3d",
    0x00000016 => "\x32",
    0x00000017 => "\x26",
    0x00000018 => "\x18",
    0x00000019 => "\x19",
    0x0000001a => "\x3f",
    0x0000001b => "\x27",
    0x0000001c => "\x1c",
    0x0000001d => "\x1d",
    0x0000001e => "\x1e",
    0x0000001f => "\x1f",
    0x00000020 => "\x40",
    0x00000021 => "\x5a",
    0x00000022 => "\x7f",
    0x00000023 => "\x7b",
    0x00000024 => "\x5b",
    0x00000025 => "\x6c",
    0x00000026 => "\x50",
    0x00000027 => "\x7d",
    0x00000028 => "\x4d",
    0x00000029 => "\x5d",
    0x0000002a => "\x5c",
    0x0000002b => "\x4e",
    0x0000002c => "\x6b",
    0x0000002d => "\x60",
    0x0000002e => "\x4b",
    0x0000002f => "\x61",
    0x00000030 => "\xf0",
    0x00000031 => "\xf1",
    0x00000032 => "\xf2",
    0x00000033 => "\xf3",
    0x00000034 => "\xf4",
    0x00000035 => "\xf5",
    0x00000036 => "\xf6",
    0x00000037 => "\xf7",
    0x00000038 => "\xf8",
    0x00000039 => "\xf9",
    0x0000003a => "\x7a",
    0x0000003b => "\x5e",
    0x0000003c => "\x4c",
    0x0000003d => "\x7e",
    0x0000003e => "\x6e",
    0x0000003f => "\x6f",
    0x00000040 => "\x7c",
    0x00000041 => "\xc1",
    0x00000042 => "\xc2",
    0x00000043 => "\xc3",
    0x00000044 => "\xc4",
    0x00000045 => "\xc5",
    0x00000046 => "\xc6",
    0x00000047 => "\xc7",
    0x00000048 => "\xc8",
    0x00000049 => "\xc9",
    0x0000004a => "\xd1",
    0x0000004b => "\xd2",
    0x0000004c => "\xd3",
    0x0000004d => "\xd4",
    0x0000004e => "\xd5",
    0x0000004f => "\xd6",
    0x00000050 => "\xd7",
    0x00000051 => "\xd8",
    0x00000052 => "\xd9",
    0x00000053 => "\xe2",
    0x00000054 => "\xe3",
    0x00000055 => "\xe4",
    0x00000056 => "\xe5",
    0x00000057 => "\xe6",
    0x00000058 => "\xe7",
    0x00000059 => "\xe8",
    0x0000005a => "\xe9",
    0x0000005b => "\xba",
    0x0000005c => "\xe0",
    0x0000005d => "\xbb",
    0x0000005e => "\xb0",
    0x0000005f => "\x6d",
    0x00000060 => "\x79",
    0x00000061 => "\x81",
    0x00000062 => "\x82",
    0x00000063 => "\x83",
    0x00000064 => "\x84",
    0x00000065 => "\x85",
    0x00000066 => "\x86",
    0x00000067 => "\x87",
    0x00000068 => "\x88",
    0x00000069 => "\x89",
    0x0000006a => "\x91",
    0x0000006b => "\x92",
    0x0000006c => "\x93",
    0x0000006d => "\x94",
    0x0000006e => "\x95",
    0x0000006f => "\x96",
    0x00000070 => "\x97",
    0x00000071 => "\x98",
    0x00000072 => "\x99",
    0x00000073 => "\xa2",
    0x00000074 => "\xa3",
    0x00000075 => "\xa4",
    0x00000076 => "\xa5",
    0x00000077 => "\xa6",
    0x00000078 => "\xa7",
    0x00000079 => "\xa8",
    0x0000007a => "\xa9",
    0x0000007b => "\xc0",
    0x0000007c => "\x4f",
    0x0000007d => "\xd0",
    0x0000007e => "\xa1",
    0x0000007f => "\x07",
    0x00000080 => "\x20",
    0x00000081 => "\x21",
    0x00000082 => "\x22",
    0x00000083 => "\x23",
    0x00000084 => "\x24",
    0x00000085 => "\x15",
    0x00000086 => "\x06",
    0x00000087 => "\x17",
    0x00000088 => "\x28",
    0x00000089 => "\x29",
    0x0000008a => "\x2a",
    0x0000008b => "\x2b",
    0x0000008c => "\x2c",
    0x0000008d => "\x09",
    0x0000008e => "\x0a",
    0x0000008f => "\x1b",
    0x00000090 => "\x30",
    0x00000091 => "\x31",
    0x00000092 => "\x1a",
    0x00000093 => "\x33",
    0x00000094 => "\x34",
    0x00000095 => "\x35",
    0x00000096 => "\x36",
    0x00000097 => "\x08",
    0x00000098 => "\x38",
    0x00000099 => "\x39",
    0x0000009a => "\x3a",
    0x0000009b => "\x3b",
    0x0000009c => "\x04",
    0x0000009d => "\x14",
    0x0000009e => "\x3e",
    0x0000009f => "\xff",
    0x000000a0 => "\x74",
    0x000000a2 => "\x4a",
    0x000000a3 => "\xb1",
    0x000000a4 => "\x9f",
    0x000000a5 => "\xb2",
    0x000000a6 => "\x6a",
    0x000000a7 => "\xb5",
    0x000000a8 => "\xbd",
    0x000000a9 => "\xb4",
    0x000000ab => "\x8a",
    0x000000ac => "\x5f",
    0x000000ad => "\xca",
    0x000000ae => "\xaf",
    0x000000b0 => "\x90",
    0x000000b2 => "\xea",
    0x000000b3 => "\xfa",
    0x000000b4 => "\xbe",
    0x000000b5 => "\xa0",
    0x000000b6 => "\xb6",
    0x000000b7 => "\xb3",
    0x000000b8 => "\x9d",
    0x000000b9 => "\xda",
    0x000000bb => "\x8b",
    0x000000bc => "\xb7",
    0x000000bd => "\xb8",
    0x000000be => "\xb9",
    0x000000d7 => "\xbf",
    0x000000f7 => "\xe1",
    0x000005d0 => "\x41",
    0x000005d1 => "\x42",
    0x000005d2 => "\x43",
    0x000005d3 => "\x44",
    0x000005d4 => "\x45",
    0x000005d5 => "\x46",
    0x000005d6 => "\x47",
    0x000005d7 => "\x48",
    0x000005d8 => "\x49",
    0x000005d9 => "\x51",
    0x000005da => "\x52",
    0x000005db => "\x53",
    0x000005dc => "\x54",
    0x000005dd => "\x55",
    0x000005de => "\x56",
    0x000005df => "\x57",
    0x000005e0 => "\x58",
    0x000005e1 => "\x59",
    0x000005e2 => "\x62",
    0x000005e3 => "\x63",
    0x000005e4 => "\x64",
    0x000005e5 => "\x65",
    0x000005e6 => "\x66",
    0x000005e7 => "\x67",
    0x000005e8 => "\x68",
    0x000005e9 => "\x69",
    0x000005ea => "\x71",
    0x0000203e => "\xbc",
    0x000021d4 => "\x78",
);

sub _recode
{
    my $unknown = $_[0]->{_unknown};

    if ($_[0]->{_from} eq 'INTERNAL') {
	my $unknown_chr = $from_ucs4{$unknown};
	$unknown_chr = '' unless defined $unknown_chr;
	$_[1] = join '',
	    map $from_ucs4{$_} || (defined $from_ucs4{$_} ? 0 : $unknown_chr),
	        @{$_[1]};
    } elsif ($_[0]->{_to} =~ m,^UTF-8/+,) {
	return $_[0]->__toUTF8 ($_[1]);
    } else {
	$_[1] = [ map 
	    $to_ucs4[$_] || (defined $to_ucs4[$_] ? 0 : $unknown),
	        unpack 'C*', $_[1] 
	];
    }

    return 1;
}

sub __toUTF8
{
    $_[1] = join '', map $to_utf8[$_], unpack 'C*', $_[1];
    return 1;
}

1;

__END__

=head1 NAME

Locale::IconvData::$module_name

=head1 SYNOPSIS

This module is internal to libintl.  Do not use directly!

=head1 DESCRIPTION

This module is generated and contains the conversion tables and
routines for $codeset.

=head1 COMMENTS

The following comments have been extracted from the original charmap:

 version: 1.0
  source: IBM NLS RM Vol2 SE09-8002-01, March 1990
 alias CP424
 alias EBCDIC-CP-HE

Please note that aliases listed above are not necessarily valid!

=head1 CHARACTER TABLE

The following table is sorted in the same order as the original charmap.
All character codes are in hexadecimal.  Please read 'ISO-10646' as
'ISO-10646-UCS4'.

 Local | ISO-10646 | Description
-------+-----------+-------------------------------------------------
    00 |  00000000 | NULL (NUL)
    01 |  00000001 | START OF HEADING (SOH)
    02 |  00000002 | START OF TEXT (STX)
    03 |  00000003 | END OF TEXT (ETX)
    04 |  0000009C | STRING TERMINATOR (ST)
    05 |  00000009 | CHARACTER TABULATION (HT)
    06 |  00000086 | START OF SELECTED AREA (SSA)
    07 |  0000007F | DELETE (DEL)
    08 |  00000097 | END OF GUARDED AREA (EPA)
    09 |  0000008D | REVERSE LINE FEED (RI)
    0A |  0000008E | SINGLE-SHIFT TWO (SS2)
    0B |  0000000B | LINE TABULATION (VT)
    0C |  0000000C | FORM FEED (FF)
    0D |  0000000D | CARRIAGE RETURN (CR)
    0E |  0000000E | SHIFT OUT (SO)
    0F |  0000000F | SHIFT IN (SI)
    10 |  00000010 | DATALINK ESCAPE (DLE)
    11 |  00000011 | DEVICE CONTROL ONE (DC1)
    12 |  00000012 | DEVICE CONTROL TWO (DC2)
    13 |  00000013 | DEVICE CONTROL THREE (DC3)
    14 |  0000009D | OPERATING SYSTEM COMMAND (OSC)
    15 |  00000085 | NEXT LINE (NEL)
    16 |  00000008 | BACKSPACE (BS)
    17 |  00000087 | END OF SELECTED AREA (ESA)
    18 |  00000018 | CANCEL (CAN)
    19 |  00000019 | END OF MEDIUM (EM)
    1A |  00000092 | PRIVATE USE TWO (PU2)
    1B |  0000008F | SINGLE-SHIFT THREE (SS3)
    1C |  0000001C | FILE SEPARATOR (IS4)
    1D |  0000001D | GROUP SEPARATOR (IS3)
    1E |  0000001E | RECORD SEPARATOR (IS2)
    1F |  0000001F | UNIT SEPARATOR (IS1)
    20 |  00000080 | PADDING CHARACTER (PAD)
    21 |  00000081 | HIGH OCTET PRESET (HOP)
    22 |  00000082 | BREAK PERMITTED HERE (BPH)
    23 |  00000083 | NO BREAK HERE (NBH)
    24 |  00000084 | INDEX (IND)
    25 |  0000000A | LINE FEED (LF)
    26 |  00000017 | END OF TRANSMISSION BLOCK (ETB)
    27 |  0000001B | ESCAPE (ESC)
    28 |  00000088 | CHARACTER TABULATION SET (HTS)
    29 |  00000089 | CHARACTER TABULATION WITH JUSTIFICATION (HTJ)
    2A |  0000008A | LINE TABULATION SET (VTS)
    2B |  0000008B | PARTIAL LINE FORWARD (PLD)
    2C |  0000008C | PARTIAL LINE BACKWARD (PLU)
    2D |  00000005 | ENQUIRY (ENQ)
    2E |  00000006 | ACKNOWLEDGE (ACK)
    2F |  00000007 | BELL (BEL)
    30 |  00000090 | DEVICE CONTROL STRING (DCS)
    31 |  00000091 | PRIVATE USE ONE (PU1)
    32 |  00000016 | SYNCHRONOUS IDLE (SYN)
    33 |  00000093 | SET TRANSMIT STATE (STS)
    34 |  00000094 | CANCEL CHARACTER (CCH)
    35 |  00000095 | MESSAGE WAITING (MW)
    36 |  00000096 | START OF GUARDED AREA (SPA)
    37 |  00000004 | END OF TRANSMISSION (EOT)
    38 |  00000098 | START OF STRING (SOS)
    39 |  00000099 | SINGLE GRAPHIC CHARACTER INTRODUCER (SGCI)
    3A |  0000009A | SINGLE CHARACTER INTRODUCER (SCI)
    3B |  0000009B | CONTROL SEQUENCE INTRODUCER (CSI)
    3C |  00000014 | DEVICE CONTROL FOUR (DC4)
    3D |  00000015 | NEGATIVE ACKNOWLEDGE (NAK)
    3E |  0000009E | PRIVACY MESSAGE (PM)
    3F |  0000001A | SUBSTITUTE (SUB)
    40 |  00000020 | SPACE
    41 |  000005D0 | HEBREW LETTER ALEF
    42 |  000005D1 | HEBREW LETTER BET
    43 |  000005D2 | HEBREW LETTER GIMEL
    44 |  000005D3 | HEBREW LETTER DALET
    45 |  000005D4 | HEBREW LETTER HE
    46 |  000005D5 | HEBREW LETTER VAV
    47 |  000005D6 | HEBREW LETTER ZAYIN
    48 |  000005D7 | HEBREW LETTER HET
    49 |  000005D8 | HEBREW LETTER TET
    4A |  000000A2 | CENT SIGN
    4B |  0000002E | FULL STOP
    4C |  0000003C | LESS-THAN SIGN
    4D |  00000028 | LEFT PARENTHESIS
    4E |  0000002B | PLUS SIGN
    4F |  0000007C | VERTICAL LINE
    50 |  00000026 | AMPERSAND
    51 |  000005D9 | HEBREW LETTER YOD
    52 |  000005DA | HEBREW LETTER FINAL KAF
    53 |  000005DB | HEBREW LETTER KAF
    54 |  000005DC | HEBREW LETTER LAMED
    55 |  000005DD | HEBREW LETTER FINAL MEM
    56 |  000005DE | HEBREW LETTER MEM
    57 |  000005DF | HEBREW LETTER FINAL NUN
    58 |  000005E0 | HEBREW LETTER NUN
    59 |  000005E1 | HEBREW LETTER SAMEKH
    5A |  00000021 | EXCLAMATION MARK
    5B |  00000024 | DOLLAR SIGN
    5C |  0000002A | ASTERISK
    5D |  00000029 | RIGHT PARENTHESIS
    5E |  0000003B | SEMICOLON
    5F |  000000AC | NOT SIGN
    60 |  0000002D | HYPHEN-MINUS
    61 |  0000002F | SOLIDUS
    62 |  000005E2 | HEBREW LETTER AYIN
    63 |  000005E3 | HEBREW LETTER FINAL PE
    64 |  000005E4 | HEBREW LETTER PE
    65 |  000005E5 | HEBREW LETTER FINAL TSADI
    66 |  000005E6 | HEBREW LETTER TSADI
    67 |  000005E7 | HEBREW LETTER QOF
    68 |  000005E8 | HEBREW LETTER RESH
    69 |  000005E9 | HEBREW LETTER SHIN
    6A |  000000A6 | BROKEN BAR
    6B |  0000002C | COMMA
    6C |  00000025 | PERCENT SIGN
    6D |  0000005F | LOW LINE
    6E |  0000003E | GREATER-THAN SIGN
    6F |  0000003F | QUESTION MARK
    71 |  000005EA | HEBREW LETTER TAV
    74 |  000000A0 | NO-BREAK SPACE
    78 |  000021D4 | LEFT RIGHT DOUBLE ARROW
    79 |  00000060 | GRAVE ACCENT
    7A |  0000003A | COLON
    7B |  00000023 | NUMBER SIGN
    7C |  00000040 | COMMERCIAL AT
    7D |  00000027 | APOSTROPHE
    7E |  0000003D | EQUALS SIGN
    7F |  00000022 | QUOTATION MARK
    81 |  00000061 | LATIN SMALL LETTER A
    82 |  00000062 | LATIN SMALL LETTER B
    83 |  00000063 | LATIN SMALL LETTER C
    84 |  00000064 | LATIN SMALL LETTER D
    85 |  00000065 | LATIN SMALL LETTER E
    86 |  00000066 | LATIN SMALL LETTER F
    87 |  00000067 | LATIN SMALL LETTER G
    88 |  00000068 | LATIN SMALL LETTER H
    89 |  00000069 | LATIN SMALL LETTER I
    8A |  000000AB | LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
    8B |  000000BB | RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
    90 |  000000B0 | DEGREE SIGN
    91 |  0000006A | LATIN SMALL LETTER J
    92 |  0000006B | LATIN SMALL LETTER K
    93 |  0000006C | LATIN SMALL LETTER L
    94 |  0000006D | LATIN SMALL LETTER M
    95 |  0000006E | LATIN SMALL LETTER N
    96 |  0000006F | LATIN SMALL LETTER O
    97 |  00000070 | LATIN SMALL LETTER P
    98 |  00000071 | LATIN SMALL LETTER Q
    99 |  00000072 | LATIN SMALL LETTER R
    9D |  000000B8 | CEDILLA
    9F |  000000A4 | CURRENCY SIGN
    A0 |  000000B5 | MICRO SIGN
    A1 |  0000007E | TILDE
    A2 |  00000073 | LATIN SMALL LETTER S
    A3 |  00000074 | LATIN SMALL LETTER T
    A4 |  00000075 | LATIN SMALL LETTER U
    A5 |  00000076 | LATIN SMALL LETTER V
    A6 |  00000077 | LATIN SMALL LETTER W
    A7 |  00000078 | LATIN SMALL LETTER X
    A8 |  00000079 | LATIN SMALL LETTER Y
    A9 |  0000007A | LATIN SMALL LETTER Z
    AF |  000000AE | REGISTERED SIGN
    B0 |  0000005E | CIRCUMFLEX ACCENT
    B1 |  000000A3 | POUND SIGN
    B2 |  000000A5 | YEN SIGN
    B3 |  000000B7 | MIDDLE DOT
    B4 |  000000A9 | COPYRIGHT SIGN
    B5 |  000000A7 | SECTION SIGN
    B6 |  000000B6 | PILCROW SIGN
    B7 |  000000BC | VULGAR FRACTION ONE QUARTER
    B8 |  000000BD | VULGAR FRACTION ONE HALF
    B9 |  000000BE | VULGAR FRACTION THREE QUARTERS
    BA |  0000005B | LEFT SQUARE BRACKET
    BB |  0000005D | RIGHT SQUARE BRACKET
    BC |  0000203E | OVERLINE
    BD |  000000A8 | DIAERESIS
    BE |  000000B4 | ACUTE ACCENT
    BF |  000000D7 | MULTIPLICATION SIGN
    C0 |  0000007B | LEFT CURLY BRACKET
    C1 |  00000041 | LATIN CAPITAL LETTER A
    C2 |  00000042 | LATIN CAPITAL LETTER B
    C3 |  00000043 | LATIN CAPITAL LETTER C
    C4 |  00000044 | LATIN CAPITAL LETTER D
    C5 |  00000045 | LATIN CAPITAL LETTER E
    C6 |  00000046 | LATIN CAPITAL LETTER F
    C7 |  00000047 | LATIN CAPITAL LETTER G
    C8 |  00000048 | LATIN CAPITAL LETTER H
    C9 |  00000049 | LATIN CAPITAL LETTER I
    CA |  000000AD | SOFT HYPHEN
    D0 |  0000007D | RIGHT CURLY BRACKET
    D1 |  0000004A | LATIN CAPITAL LETTER J
    D2 |  0000004B | LATIN CAPITAL LETTER K
    D3 |  0000004C | LATIN CAPITAL LETTER L
    D4 |  0000004D | LATIN CAPITAL LETTER M
    D5 |  0000004E | LATIN CAPITAL LETTER N
    D6 |  0000004F | LATIN CAPITAL LETTER O
    D7 |  00000050 | LATIN CAPITAL LETTER P
    D8 |  00000051 | LATIN CAPITAL LETTER Q
    D9 |  00000052 | LATIN CAPITAL LETTER R
    DA |  000000B9 | SUPERSCRIPT ONE
    E0 |  0000005C | REVERSE SOLIDUS
    E1 |  000000F7 | DIVISION SIGN
    E2 |  00000053 | LATIN CAPITAL LETTER S
    E3 |  00000054 | LATIN CAPITAL LETTER T
    E4 |  00000055 | LATIN CAPITAL LETTER U
    E5 |  00000056 | LATIN CAPITAL LETTER V
    E6 |  00000057 | LATIN CAPITAL LETTER W
    E7 |  00000058 | LATIN CAPITAL LETTER X
    E8 |  00000059 | LATIN CAPITAL LETTER Y
    E9 |  0000005A | LATIN CAPITAL LETTER Z
    EA |  000000B2 | SUPERSCRIPT TWO
    F0 |  00000030 | DIGIT ZERO
    F1 |  00000031 | DIGIT ONE
    F2 |  00000032 | DIGIT TWO
    F3 |  00000033 | DIGIT THREE
    F4 |  00000034 | DIGIT FOUR
    F5 |  00000035 | DIGIT FIVE
    F6 |  00000036 | DIGIT SIX
    F7 |  00000037 | DIGIT SEVEN
    F8 |  00000038 | DIGIT EIGHT
    F9 |  00000039 | DIGIT NINE
    FA |  000000B3 | SUPERSCRIPT THREE
    FF |  0000009F | APPLICATION PROGRAM COMMAND (APC)


=head1 AUTHOR

Copyright (C) 2002, Guido Flohr E<lt>guido@imperia.netE<gt>, all
rights reserved.  See the source code for details.

This software is contributed to the Perl community by Imperia 
(http://www.imperia.net/).

=head1 SEE ALSO

Locale::IconvData(3), Locale::Iconv(3), perl(1)

