.class public final Lcom/android/settings/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BatteryHistoryChart:[I

.field public static final ChartGridView:[I

.field public static final ChartNetworkSeriesView:[I

.field public static final ChartSweepView:[I

.field public static final ChartView:[I

.field public static final IconPreferenceScreen:[I

.field public static final PercentageBarChart:[I

.field public static final TwTouchPunchView:[I

.field public static final WifiEncryptionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/R$styleable;->ChartGridView:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/R$styleable;->ChartSweepView:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/R$styleable;->ChartView:[I

    new-array v0, v4, [I

    const v1, 0x7f010001

    aput v1, v0, v3

    sput-object v0, Lcom/android/settings/R$styleable;->IconPreferenceScreen:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings/R$styleable;->PercentageBarChart:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/settings/R$styleable;->TwTouchPunchView:[I

    new-array v0, v4, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v3

    sput-object v0, Lcom/android/settings/R$styleable;->WifiEncryptionState:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010096
        0x1010097
        0x1010098
        0x1010161
        0x1010162
        0x1010163
        0x1010164
    .end array-data

    :array_1
    .array-data 4
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
    .end array-data

    :array_2
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data

    :array_3
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
    .end array-data

    :array_4
    .array-data 4
        0x7f010004
        0x7f010005
    .end array-data

    :array_5
    .array-data 4
        0x7f010002
        0x7f010003
    .end array-data

    :array_6
    .array-data 4
        0x7f010013
        0x7f010014
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
