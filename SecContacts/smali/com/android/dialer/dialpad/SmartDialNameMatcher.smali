.class public Lcom/android/dialer/dialpad/SmartDialNameMatcher;
.super Ljava/lang/Object;
.source "SmartDialNameMatcher.java"


# static fields
.field public static final LATIN_LETTERS_TO_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method private isLowercaseLatinLetterOrDigit(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_2

    const/16 v0, 0x39

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static remapAccentedChars(C)C
    .locals 5

    const/16 v1, 0x65

    const/16 v2, 0x69

    const/16 v0, 0x61

    const/16 v4, 0x75

    const/16 v3, 0x6f

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return p0

    :pswitch_1
    move p0, v0

    goto :goto_0

    :pswitch_2
    move p0, v0

    goto :goto_0

    :pswitch_3
    move p0, v0

    goto :goto_0

    :pswitch_4
    move p0, v0

    goto :goto_0

    :pswitch_5
    move p0, v0

    goto :goto_0

    :pswitch_6
    move p0, v0

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x63

    goto :goto_0

    :pswitch_8
    move p0, v1

    goto :goto_0

    :pswitch_9
    move p0, v1

    goto :goto_0

    :pswitch_a
    move p0, v1

    goto :goto_0

    :pswitch_b
    move p0, v1

    goto :goto_0

    :pswitch_c
    move p0, v2

    goto :goto_0

    :pswitch_d
    move p0, v2

    goto :goto_0

    :pswitch_e
    move p0, v2

    goto :goto_0

    :pswitch_f
    move p0, v2

    goto :goto_0

    :pswitch_10
    const/16 p0, 0x64

    goto :goto_0

    :pswitch_11
    const/16 p0, 0x6e

    goto :goto_0

    :pswitch_12
    move p0, v3

    goto :goto_0

    :pswitch_13
    move p0, v3

    goto :goto_0

    :pswitch_14
    move p0, v3

    goto :goto_0

    :pswitch_15
    move p0, v3

    goto :goto_0

    :pswitch_16
    move p0, v3

    goto :goto_0

    :pswitch_17
    const/16 p0, 0x78

    goto :goto_0

    :pswitch_18
    move p0, v3

    goto :goto_0

    :pswitch_19
    move p0, v4

    goto :goto_0

    :pswitch_1a
    move p0, v4

    goto :goto_0

    :pswitch_1b
    move p0, v4

    goto :goto_0

    :pswitch_1c
    move p0, v4

    goto :goto_0

    :pswitch_1d
    move p0, v4

    goto :goto_0

    :pswitch_1e
    move p0, v0

    goto :goto_0

    :pswitch_1f
    move p0, v0

    goto :goto_0

    :pswitch_20
    move p0, v0

    goto :goto_0

    :pswitch_21
    move p0, v0

    goto :goto_0

    :pswitch_22
    move p0, v0

    goto :goto_0

    :pswitch_23
    move p0, v0

    goto :goto_0

    :pswitch_24
    const/16 p0, 0x63

    goto :goto_0

    :pswitch_25
    move p0, v1

    goto :goto_0

    :pswitch_26
    move p0, v1

    goto :goto_0

    :pswitch_27
    move p0, v1

    goto :goto_0

    :pswitch_28
    move p0, v1

    goto :goto_0

    :pswitch_29
    move p0, v2

    goto :goto_0

    :pswitch_2a
    move p0, v2

    goto :goto_0

    :pswitch_2b
    move p0, v2

    goto :goto_0

    :pswitch_2c
    move p0, v2

    goto :goto_0

    :pswitch_2d
    const/16 p0, 0x64

    goto :goto_0

    :pswitch_2e
    const/16 p0, 0x6e

    goto :goto_0

    :pswitch_2f
    move p0, v3

    goto :goto_0

    :pswitch_30
    move p0, v3

    goto :goto_0

    :pswitch_31
    move p0, v3

    goto :goto_0

    :pswitch_32
    move p0, v3

    goto :goto_0

    :pswitch_33
    move p0, v3

    goto :goto_0

    :pswitch_34
    move p0, v3

    goto :goto_0

    :pswitch_35
    move p0, v4

    goto :goto_0

    :pswitch_36
    move p0, v4

    goto :goto_0

    :pswitch_37
    move p0, v4

    goto :goto_0

    :pswitch_38
    move p0, v4

    goto :goto_0

    :pswitch_39
    const/16 p0, 0x79

    goto :goto_0

    :pswitch_3a
    const/16 p0, 0x79

    goto :goto_0

    :pswitch_3b
    move p0, v0

    goto :goto_0

    :pswitch_3c
    move p0, v0

    goto/16 :goto_0

    :pswitch_3d
    move p0, v0

    goto/16 :goto_0

    :pswitch_3e
    move p0, v0

    goto/16 :goto_0

    :pswitch_3f
    move p0, v0

    goto/16 :goto_0

    :pswitch_40
    move p0, v0

    goto/16 :goto_0

    :pswitch_41
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_42
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_43
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_44
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_45
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_46
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_47
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_48
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_49
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_4a
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_4b
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_4c
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_4d
    move p0, v1

    goto/16 :goto_0

    :pswitch_4e
    move p0, v1

    goto/16 :goto_0

    :pswitch_4f
    move p0, v1

    goto/16 :goto_0

    :pswitch_50
    move p0, v1

    goto/16 :goto_0

    :pswitch_51
    move p0, v1

    goto/16 :goto_0

    :pswitch_52
    move p0, v1

    goto/16 :goto_0

    :pswitch_53
    move p0, v1

    goto/16 :goto_0

    :pswitch_54
    move p0, v1

    goto/16 :goto_0

    :pswitch_55
    move p0, v1

    goto/16 :goto_0

    :pswitch_56
    move p0, v1

    goto/16 :goto_0

    :pswitch_57
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_58
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_59
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_5a
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_5b
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_5c
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_5d
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_5e
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_5f
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_60
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_61
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_62
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_63
    move p0, v2

    goto/16 :goto_0

    :pswitch_64
    move p0, v2

    goto/16 :goto_0

    :pswitch_65
    move p0, v2

    goto/16 :goto_0

    :pswitch_66
    move p0, v2

    goto/16 :goto_0

    :pswitch_67
    move p0, v2

    goto/16 :goto_0

    :pswitch_68
    move p0, v2

    goto/16 :goto_0

    :pswitch_69
    move p0, v2

    goto/16 :goto_0

    :pswitch_6a
    move p0, v2

    goto/16 :goto_0

    :pswitch_6b
    move p0, v2

    goto/16 :goto_0

    :pswitch_6c
    move p0, v2

    goto/16 :goto_0

    :pswitch_6d
    const/16 p0, 0x6a

    goto/16 :goto_0

    :pswitch_6e
    const/16 p0, 0x6a

    goto/16 :goto_0

    :pswitch_6f
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_70
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_71
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_72
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_73
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_74
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_75
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_76
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_77
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_78
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_79
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_7a
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_7b
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_7c
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_7d
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_7e
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_7f
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_80
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_81
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_82
    move p0, v3

    goto/16 :goto_0

    :pswitch_83
    move p0, v3

    goto/16 :goto_0

    :pswitch_84
    move p0, v3

    goto/16 :goto_0

    :pswitch_85
    move p0, v3

    goto/16 :goto_0

    :pswitch_86
    move p0, v3

    goto/16 :goto_0

    :pswitch_87
    move p0, v3

    goto/16 :goto_0

    :pswitch_88
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_89
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_8a
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_8b
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_8c
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_8d
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_8e
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_8f
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_90
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_91
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_92
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_93
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_94
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_95
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_96
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_97
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_98
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_99
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_9a
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_9b
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_9c
    move p0, v4

    goto/16 :goto_0

    :pswitch_9d
    move p0, v4

    goto/16 :goto_0

    :pswitch_9e
    move p0, v4

    goto/16 :goto_0

    :pswitch_9f
    move p0, v4

    goto/16 :goto_0

    :pswitch_a0
    move p0, v4

    goto/16 :goto_0

    :pswitch_a1
    move p0, v4

    goto/16 :goto_0

    :pswitch_a2
    move p0, v4

    goto/16 :goto_0

    :pswitch_a3
    move p0, v4

    goto/16 :goto_0

    :pswitch_a4
    move p0, v4

    goto/16 :goto_0

    :pswitch_a5
    move p0, v4

    goto/16 :goto_0

    :pswitch_a6
    move p0, v4

    goto/16 :goto_0

    :pswitch_a7
    move p0, v4

    goto/16 :goto_0

    :pswitch_a8
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_a9
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_aa
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_ab
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_ac
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_ad
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_ae
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_af
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_b0
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_b1
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_b2
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_b3
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_b4
    const/16 p0, 0x62

    goto/16 :goto_0

    :pswitch_b5
    const/16 p0, 0x62

    goto/16 :goto_0

    :pswitch_b6
    const/16 p0, 0x62

    goto/16 :goto_0

    :pswitch_b7
    const/16 p0, 0x62

    goto/16 :goto_0

    :pswitch_b8
    move p0, v3

    goto/16 :goto_0

    :pswitch_b9
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_ba
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_bb
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_bc
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_bd
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_be
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_bf
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_c0
    move p0, v1

    goto/16 :goto_0

    :pswitch_c1
    const/16 p0, 0x66

    goto/16 :goto_0

    :pswitch_c2
    const/16 p0, 0x66

    goto/16 :goto_0

    :pswitch_c3
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_c4
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_c5
    move p0, v2

    goto/16 :goto_0

    :pswitch_c6
    move p0, v2

    goto/16 :goto_0

    :pswitch_c7
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_c8
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_c9
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_ca
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_cb
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_cc
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_cd
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_ce
    move p0, v3

    goto/16 :goto_0

    :pswitch_cf
    move p0, v3

    goto/16 :goto_0

    :pswitch_d0
    move p0, v3

    goto/16 :goto_0

    :pswitch_d1
    const/16 p0, 0x70

    goto/16 :goto_0

    :pswitch_d2
    const/16 p0, 0x70

    goto/16 :goto_0

    :pswitch_d3
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_d4
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_d5
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_d6
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_d7
    move p0, v4

    goto/16 :goto_0

    :pswitch_d8
    move p0, v4

    goto/16 :goto_0

    :pswitch_d9
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_da
    const/16 p0, 0x76

    goto/16 :goto_0

    :pswitch_db
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_dc
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_dd
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_de
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_df
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_e0
    move p0, v0

    goto/16 :goto_0

    :pswitch_e1
    move p0, v0

    goto/16 :goto_0

    :pswitch_e2
    move p0, v2

    goto/16 :goto_0

    :pswitch_e3
    move p0, v2

    goto/16 :goto_0

    :pswitch_e4
    move p0, v3

    goto/16 :goto_0

    :pswitch_e5
    move p0, v3

    goto/16 :goto_0

    :pswitch_e6
    move p0, v4

    goto/16 :goto_0

    :pswitch_e7
    move p0, v4

    goto/16 :goto_0

    :pswitch_e8
    move p0, v4

    goto/16 :goto_0

    :pswitch_e9
    move p0, v4

    goto/16 :goto_0

    :pswitch_ea
    move p0, v4

    goto/16 :goto_0

    :pswitch_eb
    move p0, v4

    goto/16 :goto_0

    :pswitch_ec
    move p0, v4

    goto/16 :goto_0

    :pswitch_ed
    move p0, v4

    goto/16 :goto_0

    :pswitch_ee
    move p0, v4

    goto/16 :goto_0

    :pswitch_ef
    move p0, v4

    goto/16 :goto_0

    :pswitch_f0
    move p0, v0

    goto/16 :goto_0

    :pswitch_f1
    move p0, v0

    goto/16 :goto_0

    :pswitch_f2
    move p0, v0

    goto/16 :goto_0

    :pswitch_f3
    move p0, v0

    goto/16 :goto_0

    :pswitch_f4
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_f5
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_f6
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_f7
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_f8
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_f9
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_fa
    move p0, v3

    goto/16 :goto_0

    :pswitch_fb
    move p0, v3

    goto/16 :goto_0

    :pswitch_fc
    move p0, v3

    goto/16 :goto_0

    :pswitch_fd
    move p0, v3

    goto/16 :goto_0

    :pswitch_fe
    const/16 p0, 0x6a

    goto/16 :goto_0

    :pswitch_ff
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_100
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_101
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_102
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_103
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_104
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_105
    move p0, v0

    goto/16 :goto_0

    :pswitch_106
    move p0, v0

    goto/16 :goto_0

    :pswitch_107
    move p0, v3

    goto/16 :goto_0

    :pswitch_108
    move p0, v3

    goto/16 :goto_0

    :pswitch_109
    move p0, v0

    goto/16 :goto_0

    :pswitch_10a
    move p0, v0

    goto/16 :goto_0

    :pswitch_10b
    move p0, v0

    goto/16 :goto_0

    :pswitch_10c
    move p0, v0

    goto/16 :goto_0

    :pswitch_10d
    move p0, v1

    goto/16 :goto_0

    :pswitch_10e
    move p0, v1

    goto/16 :goto_0

    :pswitch_10f
    move p0, v1

    goto/16 :goto_0

    :pswitch_110
    move p0, v1

    goto/16 :goto_0

    :pswitch_111
    move p0, v2

    goto/16 :goto_0

    :pswitch_112
    move p0, v2

    goto/16 :goto_0

    :pswitch_113
    move p0, v2

    goto/16 :goto_0

    :pswitch_114
    move p0, v2

    goto/16 :goto_0

    :pswitch_115
    move p0, v3

    goto/16 :goto_0

    :pswitch_116
    move p0, v3

    goto/16 :goto_0

    :pswitch_117
    move p0, v3

    goto/16 :goto_0

    :pswitch_118
    move p0, v3

    goto/16 :goto_0

    :pswitch_119
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_11a
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_11b
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_11c
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_11d
    move p0, v4

    goto/16 :goto_0

    :pswitch_11e
    move p0, v4

    goto/16 :goto_0

    :pswitch_11f
    move p0, v4

    goto/16 :goto_0

    :pswitch_120
    move p0, v4

    goto/16 :goto_0

    :pswitch_121
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_122
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_123
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_124
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_125
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_126
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_127
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_128
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_129
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_12a
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_12b
    move p0, v0

    goto/16 :goto_0

    :pswitch_12c
    move p0, v0

    goto/16 :goto_0

    :pswitch_12d
    move p0, v1

    goto/16 :goto_0

    :pswitch_12e
    move p0, v1

    goto/16 :goto_0

    :pswitch_12f
    move p0, v3

    goto/16 :goto_0

    :pswitch_130
    move p0, v3

    goto/16 :goto_0

    :pswitch_131
    move p0, v3

    goto/16 :goto_0

    :pswitch_132
    move p0, v3

    goto/16 :goto_0

    :pswitch_133
    move p0, v3

    goto/16 :goto_0

    :pswitch_134
    move p0, v3

    goto/16 :goto_0

    :pswitch_135
    move p0, v3

    goto/16 :goto_0

    :pswitch_136
    move p0, v3

    goto/16 :goto_0

    :pswitch_137
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_138
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_139
    move p0, v0

    goto/16 :goto_0

    :pswitch_13a
    const/16 p0, 0x62

    goto/16 :goto_0

    :pswitch_13b
    const/16 p0, 0x63

    goto/16 :goto_0

    :pswitch_13c
    const/16 p0, 0x64

    goto/16 :goto_0

    :pswitch_13d
    move p0, v1

    goto/16 :goto_0

    :pswitch_13e
    const/16 p0, 0x66

    goto/16 :goto_0

    :pswitch_13f
    const/16 p0, 0x67

    goto/16 :goto_0

    :pswitch_140
    const/16 p0, 0x68

    goto/16 :goto_0

    :pswitch_141
    move p0, v2

    goto/16 :goto_0

    :pswitch_142
    const/16 p0, 0x6a

    goto/16 :goto_0

    :pswitch_143
    const/16 p0, 0x6b

    goto/16 :goto_0

    :pswitch_144
    const/16 p0, 0x6c

    goto/16 :goto_0

    :pswitch_145
    const/16 p0, 0x6d

    goto/16 :goto_0

    :pswitch_146
    const/16 p0, 0x6e

    goto/16 :goto_0

    :pswitch_147
    move p0, v3

    goto/16 :goto_0

    :pswitch_148
    const/16 p0, 0x70

    goto/16 :goto_0

    :pswitch_149
    const/16 p0, 0x71

    goto/16 :goto_0

    :pswitch_14a
    const/16 p0, 0x72

    goto/16 :goto_0

    :pswitch_14b
    const/16 p0, 0x73

    goto/16 :goto_0

    :pswitch_14c
    const/16 p0, 0x74

    goto/16 :goto_0

    :pswitch_14d
    move p0, v4

    goto/16 :goto_0

    :pswitch_14e
    const/16 p0, 0x76

    goto/16 :goto_0

    :pswitch_14f
    const/16 p0, 0x77

    goto/16 :goto_0

    :pswitch_150
    const/16 p0, 0x78

    goto/16 :goto_0

    :pswitch_151
    const/16 p0, 0x79

    goto/16 :goto_0

    :pswitch_152
    const/16 p0, 0x7a

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_139
        :pswitch_13a
        :pswitch_13b
        :pswitch_13c
        :pswitch_13d
        :pswitch_13e
        :pswitch_13f
        :pswitch_140
        :pswitch_141
        :pswitch_142
        :pswitch_143
        :pswitch_144
        :pswitch_145
        :pswitch_146
        :pswitch_147
        :pswitch_148
        :pswitch_149
        :pswitch_14a
        :pswitch_14b
        :pswitch_14c
        :pswitch_14d
        :pswitch_14e
        :pswitch_14f
        :pswitch_150
        :pswitch_151
        :pswitch_152
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_0
        :pswitch_0
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_0
        :pswitch_0
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_0
        :pswitch_0
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_0
        :pswitch_0
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_0
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_0
        :pswitch_0
        :pswitch_d1
        :pswitch_d2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_df
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
        :pswitch_0
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_0
        :pswitch_0
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_0
        :pswitch_0
        :pswitch_fe
        :pswitch_0
        :pswitch_ff
        :pswitch_0
        :pswitch_100
        :pswitch_101
        :pswitch_0
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_105
        :pswitch_106
        :pswitch_0
        :pswitch_0
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_114
        :pswitch_115
        :pswitch_116
        :pswitch_117
        :pswitch_118
        :pswitch_119
        :pswitch_11a
        :pswitch_11b
        :pswitch_11c
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
        :pswitch_120
        :pswitch_121
        :pswitch_122
        :pswitch_123
        :pswitch_124
        :pswitch_125
        :pswitch_126
        :pswitch_127
        :pswitch_128
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_129
        :pswitch_12a
        :pswitch_12b
        :pswitch_12c
        :pswitch_12d
        :pswitch_12e
        :pswitch_12f
        :pswitch_130
        :pswitch_131
        :pswitch_132
        :pswitch_133
        :pswitch_134
        :pswitch_135
        :pswitch_136
        :pswitch_137
        :pswitch_138
    .end packed-switch
.end method


# virtual methods
.method matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    if-nez v7, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v4, v3, :cond_d

    if-ge v8, v7, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x61

    if-lt v1, v12, :cond_2

    const/16 v12, 0x7a

    if-gt v1, v12, :cond_2

    sget-object v12, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->LATIN_LETTERS_TO_DIGITS:[C

    add-int/lit8 v13, v1, -0x61

    aget-char v1, v12, v13

    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v1, v12, :cond_6

    if-eqz v8, :cond_3

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    move v11, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v12, v7, -0x1

    if-ne v8, v12, :cond_7

    new-instance v12, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int v13, v7, v11

    add-int/2addr v13, v10

    invoke-direct {v12, v11, v13}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto :goto_0

    :cond_7
    const/4 v12, 0x1

    if-ge v8, v12, :cond_9

    move v2, v4

    :goto_3
    if-ge v2, v3, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->remapAccentedChars(C)C

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->isLowercaseLatinLetterOrDigit(C)Z

    move-result v12

    if-nez v12, :cond_a

    :cond_8
    add-int/lit8 v12, v3, -0x1

    if-ge v2, v12, :cond_9

    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v12, v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v9, v12, v6}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v12

    if-eqz v12, :cond_9

    add-int/lit8 v12, v2, 0x1

    invoke-static {v6, v12}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->advanceMatchPositions(Ljava/util/ArrayList;I)V

    const/4 v12, 0x0

    new-instance v13, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    add-int/lit8 v14, v4, 0x1

    invoke-direct {v13, v4, v14}, Lcom/android/dialer/dialpad/SmartDialMatchPosition;-><init>(II)V

    invoke-virtual {v6, v12, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v5, v6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    if-nez v8, :cond_c

    move v11, v4

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0
.end method
