.class public final Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;
.super Ljava/lang/Object;
.source "HexSupport.java"


# static fields
.field private static final HEX_TABLE:[Ljava/lang/String;

.field private static final INT_OFFSETS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "03"

    aput-object v2, v0, v1

    const-string v1, "04"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v3, "05"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "06"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "07"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "08"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "09"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "0a"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "0b"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "0c"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "0d"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "0e"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "0f"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "10"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "11"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "12"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v3, "13"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "14"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v3, "15"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v3, "16"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v3, "17"

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string v3, "18"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v3, "19"

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v3, "1a"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string v3, "1b"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string v3, "1c"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v3, "1d"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string v3, "1e"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v3, "1f"

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string v3, "20"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const-string v3, "21"

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v3, "22"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-string v3, "23"

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-string v3, "24"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const-string v3, "25"

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v3, "26"

    aput-object v3, v0, v1

    const/16 v1, 0x27

    const-string v3, "27"

    aput-object v3, v0, v1

    const/16 v1, 0x28

    const-string v3, "28"

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-string v3, "29"

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    const-string v3, "2a"

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    const-string v3, "2b"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v3, "2c"

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    const-string v3, "2d"

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    const-string v3, "2e"

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    const-string v3, "2f"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string v3, "30"

    aput-object v3, v0, v1

    const/16 v1, 0x31

    const-string v3, "31"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v3, "32"

    aput-object v3, v0, v1

    const/16 v1, 0x33

    const-string v3, "33"

    aput-object v3, v0, v1

    const/16 v1, 0x34

    const-string v3, "34"

    aput-object v3, v0, v1

    const/16 v1, 0x35

    const-string v3, "35"

    aput-object v3, v0, v1

    const/16 v1, 0x36

    const-string v3, "36"

    aput-object v3, v0, v1

    const/16 v1, 0x37

    const-string v3, "37"

    aput-object v3, v0, v1

    const/16 v1, 0x38

    const-string v3, "38"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v3, "39"

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    const-string v3, "3a"

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    const-string v3, "3b"

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v3, "3c"

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    const-string v3, "3d"

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v3, "3e"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    const-string v3, "3f"

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v3, "40"

    aput-object v3, v0, v1

    const/16 v1, 0x41

    const-string v3, "41"

    aput-object v3, v0, v1

    const/16 v1, 0x42

    const-string v3, "42"

    aput-object v3, v0, v1

    const/16 v1, 0x43

    const-string v3, "43"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v3, "44"

    aput-object v3, v0, v1

    const/16 v1, 0x45

    const-string v3, "45"

    aput-object v3, v0, v1

    const/16 v1, 0x46

    const-string v3, "46"

    aput-object v3, v0, v1

    const/16 v1, 0x47

    const-string v3, "47"

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v3, "48"

    aput-object v3, v0, v1

    const/16 v1, 0x49

    const-string v3, "49"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v3, "4a"

    aput-object v3, v0, v1

    const/16 v1, 0x4b

    const-string v3, "4b"

    aput-object v3, v0, v1

    const/16 v1, 0x4c

    const-string v3, "4c"

    aput-object v3, v0, v1

    const/16 v1, 0x4d

    const-string v3, "4d"

    aput-object v3, v0, v1

    const/16 v1, 0x4e

    const-string v3, "4e"

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    const-string v3, "4f"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v3, "50"

    aput-object v3, v0, v1

    const/16 v1, 0x51

    const-string v3, "51"

    aput-object v3, v0, v1

    const/16 v1, 0x52

    const-string v3, "52"

    aput-object v3, v0, v1

    const/16 v1, 0x53

    const-string v3, "53"

    aput-object v3, v0, v1

    const/16 v1, 0x54

    const-string v3, "54"

    aput-object v3, v0, v1

    const/16 v1, 0x55

    const-string v3, "55"

    aput-object v3, v0, v1

    const/16 v1, 0x56

    const-string v3, "56"

    aput-object v3, v0, v1

    const/16 v1, 0x57

    const-string v3, "57"

    aput-object v3, v0, v1

    const/16 v1, 0x58

    const-string v3, "58"

    aput-object v3, v0, v1

    const/16 v1, 0x59

    const-string v3, "59"

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    const-string v3, "5a"

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    const-string v3, "5b"

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    const-string v3, "5c"

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    const-string v3, "5d"

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    const-string v3, "5e"

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    const-string v3, "5f"

    aput-object v3, v0, v1

    const/16 v1, 0x60

    const-string v3, "60"

    aput-object v3, v0, v1

    const/16 v1, 0x61

    const-string v3, "61"

    aput-object v3, v0, v1

    const/16 v1, 0x62

    const-string v3, "62"

    aput-object v3, v0, v1

    const/16 v1, 0x63

    const-string v3, "63"

    aput-object v3, v0, v1

    const/16 v1, 0x64

    const-string v3, "64"

    aput-object v3, v0, v1

    const/16 v1, 0x65

    const-string v3, "65"

    aput-object v3, v0, v1

    const/16 v1, 0x66

    const-string v3, "66"

    aput-object v3, v0, v1

    const/16 v1, 0x67

    const-string v3, "67"

    aput-object v3, v0, v1

    const/16 v1, 0x68

    const-string v3, "68"

    aput-object v3, v0, v1

    const/16 v1, 0x69

    const-string v3, "69"

    aput-object v3, v0, v1

    const/16 v1, 0x6a

    const-string v3, "6a"

    aput-object v3, v0, v1

    const/16 v1, 0x6b

    const-string v3, "6b"

    aput-object v3, v0, v1

    const/16 v1, 0x6c

    const-string v3, "6c"

    aput-object v3, v0, v1

    const/16 v1, 0x6d

    const-string v3, "6d"

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    const-string v3, "6e"

    aput-object v3, v0, v1

    const/16 v1, 0x6f

    const-string v3, "6f"

    aput-object v3, v0, v1

    const/16 v1, 0x70

    const-string v3, "70"

    aput-object v3, v0, v1

    const/16 v1, 0x71

    const-string v3, "71"

    aput-object v3, v0, v1

    const/16 v1, 0x72

    const-string v3, "72"

    aput-object v3, v0, v1

    const/16 v1, 0x73

    const-string v3, "73"

    aput-object v3, v0, v1

    const/16 v1, 0x74

    const-string v3, "74"

    aput-object v3, v0, v1

    const/16 v1, 0x75

    const-string v3, "75"

    aput-object v3, v0, v1

    const/16 v1, 0x76

    const-string v3, "76"

    aput-object v3, v0, v1

    const/16 v1, 0x77

    const-string v3, "77"

    aput-object v3, v0, v1

    const/16 v1, 0x78

    const-string v3, "78"

    aput-object v3, v0, v1

    const/16 v1, 0x79

    const-string v3, "79"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string v3, "7a"

    aput-object v3, v0, v1

    const/16 v1, 0x7b

    const-string v3, "7b"

    aput-object v3, v0, v1

    const/16 v1, 0x7c

    const-string v3, "7c"

    aput-object v3, v0, v1

    const/16 v1, 0x7d

    const-string v3, "7d"

    aput-object v3, v0, v1

    const/16 v1, 0x7e

    const-string v3, "7e"

    aput-object v3, v0, v1

    const/16 v1, 0x7f

    const-string v3, "7f"

    aput-object v3, v0, v1

    const/16 v1, 0x80

    const-string v3, "80"

    aput-object v3, v0, v1

    const/16 v1, 0x81

    const-string v3, "81"

    aput-object v3, v0, v1

    const/16 v1, 0x82

    const-string v3, "82"

    aput-object v3, v0, v1

    const/16 v1, 0x83

    const-string v3, "83"

    aput-object v3, v0, v1

    const/16 v1, 0x84

    const-string v3, "84"

    aput-object v3, v0, v1

    const/16 v1, 0x85

    const-string v3, "85"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v3, "86"

    aput-object v3, v0, v1

    const/16 v1, 0x87

    const-string v3, "87"

    aput-object v3, v0, v1

    const/16 v1, 0x88

    const-string v3, "88"

    aput-object v3, v0, v1

    const/16 v1, 0x89

    const-string v3, "89"

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    const-string v3, "8a"

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    const-string v3, "8b"

    aput-object v3, v0, v1

    const/16 v1, 0x8c

    const-string v3, "8c"

    aput-object v3, v0, v1

    const/16 v1, 0x8d

    const-string v3, "8d"

    aput-object v3, v0, v1

    const/16 v1, 0x8e

    const-string v3, "8e"

    aput-object v3, v0, v1

    const/16 v1, 0x8f

    const-string v3, "8f"

    aput-object v3, v0, v1

    const/16 v1, 0x90

    const-string v3, "90"

    aput-object v3, v0, v1

    const/16 v1, 0x91

    const-string v3, "91"

    aput-object v3, v0, v1

    const/16 v1, 0x92

    const-string v3, "92"

    aput-object v3, v0, v1

    const/16 v1, 0x93

    const-string v3, "93"

    aput-object v3, v0, v1

    const/16 v1, 0x94

    const-string v3, "94"

    aput-object v3, v0, v1

    const/16 v1, 0x95

    const-string v3, "95"

    aput-object v3, v0, v1

    const/16 v1, 0x96

    const-string v3, "96"

    aput-object v3, v0, v1

    const/16 v1, 0x97

    const-string v3, "97"

    aput-object v3, v0, v1

    const/16 v1, 0x98

    const-string v3, "98"

    aput-object v3, v0, v1

    const/16 v1, 0x99

    const-string v3, "99"

    aput-object v3, v0, v1

    const/16 v1, 0x9a

    const-string v3, "9a"

    aput-object v3, v0, v1

    const/16 v1, 0x9b

    const-string v3, "9b"

    aput-object v3, v0, v1

    const/16 v1, 0x9c

    const-string v3, "9c"

    aput-object v3, v0, v1

    const/16 v1, 0x9d

    const-string v3, "9d"

    aput-object v3, v0, v1

    const/16 v1, 0x9e

    const-string v3, "9e"

    aput-object v3, v0, v1

    const/16 v1, 0x9f

    const-string v3, "9f"

    aput-object v3, v0, v1

    const/16 v1, 0xa0

    const-string v3, "a0"

    aput-object v3, v0, v1

    const/16 v1, 0xa1

    const-string v3, "a1"

    aput-object v3, v0, v1

    const/16 v1, 0xa2

    const-string v3, "a2"

    aput-object v3, v0, v1

    const/16 v1, 0xa3

    const-string v3, "a3"

    aput-object v3, v0, v1

    const/16 v1, 0xa4

    const-string v3, "a4"

    aput-object v3, v0, v1

    const/16 v1, 0xa5

    const-string v3, "a5"

    aput-object v3, v0, v1

    const/16 v1, 0xa6

    const-string v3, "a6"

    aput-object v3, v0, v1

    const/16 v1, 0xa7

    const-string v3, "a7"

    aput-object v3, v0, v1

    const/16 v1, 0xa8

    const-string v3, "a8"

    aput-object v3, v0, v1

    const/16 v1, 0xa9

    const-string v3, "a9"

    aput-object v3, v0, v1

    const/16 v1, 0xaa

    const-string v3, "aa"

    aput-object v3, v0, v1

    const/16 v1, 0xab

    const-string v3, "ab"

    aput-object v3, v0, v1

    const/16 v1, 0xac

    const-string v3, "ac"

    aput-object v3, v0, v1

    const/16 v1, 0xad

    const-string v3, "ad"

    aput-object v3, v0, v1

    const/16 v1, 0xae

    const-string v3, "ae"

    aput-object v3, v0, v1

    const/16 v1, 0xaf

    const-string v3, "af"

    aput-object v3, v0, v1

    const/16 v1, 0xb0

    const-string v3, "b0"

    aput-object v3, v0, v1

    const/16 v1, 0xb1

    const-string v3, "b1"

    aput-object v3, v0, v1

    const/16 v1, 0xb2

    const-string v3, "b2"

    aput-object v3, v0, v1

    const/16 v1, 0xb3

    const-string v3, "b3"

    aput-object v3, v0, v1

    const/16 v1, 0xb4

    const-string v3, "b4"

    aput-object v3, v0, v1

    const/16 v1, 0xb5

    const-string v3, "b5"

    aput-object v3, v0, v1

    const/16 v1, 0xb6

    const-string v3, "b6"

    aput-object v3, v0, v1

    const/16 v1, 0xb7

    const-string v3, "b7"

    aput-object v3, v0, v1

    const/16 v1, 0xb8

    const-string v3, "b8"

    aput-object v3, v0, v1

    const/16 v1, 0xb9

    const-string v3, "b9"

    aput-object v3, v0, v1

    const/16 v1, 0xba

    const-string v3, "ba"

    aput-object v3, v0, v1

    const/16 v1, 0xbb

    const-string v3, "bb"

    aput-object v3, v0, v1

    const/16 v1, 0xbc

    const-string v3, "bc"

    aput-object v3, v0, v1

    const/16 v1, 0xbd

    const-string v3, "bd"

    aput-object v3, v0, v1

    const/16 v1, 0xbe

    const-string v3, "be"

    aput-object v3, v0, v1

    const/16 v1, 0xbf

    const-string v3, "bf"

    aput-object v3, v0, v1

    const/16 v1, 0xc0

    const-string v3, "c0"

    aput-object v3, v0, v1

    const/16 v1, 0xc1

    const-string v3, "c1"

    aput-object v3, v0, v1

    const/16 v1, 0xc2

    const-string v3, "c2"

    aput-object v3, v0, v1

    const/16 v1, 0xc3

    const-string v3, "c3"

    aput-object v3, v0, v1

    const/16 v1, 0xc4

    const-string v3, "c4"

    aput-object v3, v0, v1

    const/16 v1, 0xc5

    const-string v3, "c5"

    aput-object v3, v0, v1

    const/16 v1, 0xc6

    const-string v3, "c6"

    aput-object v3, v0, v1

    const/16 v1, 0xc7

    const-string v3, "c7"

    aput-object v3, v0, v1

    const/16 v1, 0xc8

    const-string v3, "c8"

    aput-object v3, v0, v1

    const/16 v1, 0xc9

    const-string v3, "c9"

    aput-object v3, v0, v1

    const/16 v1, 0xca

    const-string v3, "ca"

    aput-object v3, v0, v1

    const/16 v1, 0xcb

    const-string v3, "cb"

    aput-object v3, v0, v1

    const/16 v1, 0xcc

    const-string v3, "cc"

    aput-object v3, v0, v1

    const/16 v1, 0xcd

    const-string v3, "cd"

    aput-object v3, v0, v1

    const/16 v1, 0xce

    const-string v3, "ce"

    aput-object v3, v0, v1

    const/16 v1, 0xcf

    const-string v3, "cf"

    aput-object v3, v0, v1

    const/16 v1, 0xd0

    const-string v3, "d0"

    aput-object v3, v0, v1

    const/16 v1, 0xd1

    const-string v3, "d1"

    aput-object v3, v0, v1

    const/16 v1, 0xd2

    const-string v3, "d2"

    aput-object v3, v0, v1

    const/16 v1, 0xd3

    const-string v3, "d3"

    aput-object v3, v0, v1

    const/16 v1, 0xd4

    const-string v3, "d4"

    aput-object v3, v0, v1

    const/16 v1, 0xd5

    const-string v3, "d5"

    aput-object v3, v0, v1

    const/16 v1, 0xd6

    const-string v3, "d6"

    aput-object v3, v0, v1

    const/16 v1, 0xd7

    const-string v3, "d7"

    aput-object v3, v0, v1

    const/16 v1, 0xd8

    const-string v3, "d8"

    aput-object v3, v0, v1

    const/16 v1, 0xd9

    const-string v3, "d9"

    aput-object v3, v0, v1

    const/16 v1, 0xda

    const-string v3, "da"

    aput-object v3, v0, v1

    const/16 v1, 0xdb

    const-string v3, "db"

    aput-object v3, v0, v1

    const/16 v1, 0xdc

    const-string v3, "dc"

    aput-object v3, v0, v1

    const/16 v1, 0xdd

    const-string v3, "dd"

    aput-object v3, v0, v1

    const/16 v1, 0xde

    const-string v3, "de"

    aput-object v3, v0, v1

    const/16 v1, 0xdf

    const-string v3, "df"

    aput-object v3, v0, v1

    const/16 v1, 0xe0

    const-string v3, "e0"

    aput-object v3, v0, v1

    const/16 v1, 0xe1

    const-string v3, "e1"

    aput-object v3, v0, v1

    const/16 v1, 0xe2

    const-string v3, "e2"

    aput-object v3, v0, v1

    const/16 v1, 0xe3

    const-string v3, "e3"

    aput-object v3, v0, v1

    const/16 v1, 0xe4

    const-string v3, "e4"

    aput-object v3, v0, v1

    const/16 v1, 0xe5

    const-string v3, "e5"

    aput-object v3, v0, v1

    const/16 v1, 0xe6

    const-string v3, "e6"

    aput-object v3, v0, v1

    const/16 v1, 0xe7

    const-string v3, "e7"

    aput-object v3, v0, v1

    const/16 v1, 0xe8

    const-string v3, "e8"

    aput-object v3, v0, v1

    const/16 v1, 0xe9

    const-string v3, "e9"

    aput-object v3, v0, v1

    const/16 v1, 0xea

    const-string v3, "ea"

    aput-object v3, v0, v1

    const/16 v1, 0xeb

    const-string v3, "eb"

    aput-object v3, v0, v1

    const/16 v1, 0xec

    const-string v3, "ec"

    aput-object v3, v0, v1

    const/16 v1, 0xed

    const-string v3, "ed"

    aput-object v3, v0, v1

    const/16 v1, 0xee

    const-string v3, "ee"

    aput-object v3, v0, v1

    const/16 v1, 0xef

    const-string v3, "ef"

    aput-object v3, v0, v1

    const/16 v1, 0xf0

    const-string v3, "f0"

    aput-object v3, v0, v1

    const/16 v1, 0xf1

    const-string v3, "f1"

    aput-object v3, v0, v1

    const/16 v1, 0xf2

    const-string v3, "f2"

    aput-object v3, v0, v1

    const/16 v1, 0xf3

    const-string v3, "f3"

    aput-object v3, v0, v1

    const/16 v1, 0xf4

    const-string v3, "f4"

    aput-object v3, v0, v1

    const/16 v1, 0xf5

    const-string v3, "f5"

    aput-object v3, v0, v1

    const/16 v1, 0xf6

    const-string v3, "f6"

    aput-object v3, v0, v1

    const/16 v1, 0xf7

    const-string v3, "f7"

    aput-object v3, v0, v1

    const/16 v1, 0xf8

    const-string v3, "f8"

    aput-object v3, v0, v1

    const/16 v1, 0xf9

    const-string v3, "f9"

    aput-object v3, v0, v1

    const/16 v1, 0xfa

    const-string v3, "fa"

    aput-object v3, v0, v1

    const/16 v1, 0xfb

    const-string v3, "fb"

    aput-object v3, v0, v1

    const/16 v1, 0xfc

    const-string v3, "fc"

    aput-object v3, v0, v1

    const/16 v1, 0xfd

    const-string v3, "fd"

    aput-object v3, v0, v1

    const/16 v1, 0xfe

    const-string v3, "fe"

    aput-object v3, v0, v1

    const/16 v1, 0xff

    const-string v3, "ff"

    aput-object v3, v0, v1

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->HEX_TABLE:[Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->INT_OFFSETS:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x10
        0x8
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toBufferFromHex(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-object p0
.end method

.method public static toHexFromBuffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v2, v3

    iget p0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    :goto_0
    if-ge p0, v2, :cond_0

    sget-object v3, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->HEX_TABLE:[Ljava/lang/String;

    aget-byte v4, v0, p0

    and-int/lit16 v4, v4, 0xff

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHexFromInt(IZ)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->INT_OFFSETS:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->INT_OFFSETS:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    aget v3, v3, v2

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-eqz p1, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    sget-object p1, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->HEX_TABLE:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p1, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
