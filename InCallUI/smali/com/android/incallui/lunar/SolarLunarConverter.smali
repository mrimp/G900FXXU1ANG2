.class public final Lcom/android/incallui/lunar/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xd

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
        0x16e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccumulatedDays(I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method private isLeapYear(I)Z
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 12

    const-string v9, "feature_chn"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p4}, Lcom/android/incallui/lunar/SolarLunarConverter;->convertLunarToSolar_CHN(IIIZ)V

    :goto_0
    return-void

    :cond_0
    const/16 v9, 0x759

    if-lt p1, v9, :cond_1

    const/16 v9, 0x834

    if-gt p1, v9, :cond_1

    if-ltz p2, :cond_1

    const/16 v9, 0xb

    if-gt p2, v9, :cond_1

    const/4 v9, 0x1

    if-lt p3, v9, :cond_1

    const/16 v9, 0x1e

    if-le p3, v9, :cond_2

    if-nez p4, :cond_2

    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    add-int/lit16 v3, p1, -0x759

    mul-int/lit8 v8, v3, 0xe

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    const/16 v9, 0x7f

    if-ne v5, v9, :cond_3

    const/16 v7, 0xc

    :goto_1
    const/16 v9, 0xc

    if-ne v7, v9, :cond_4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p2, :cond_7

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 v7, 0xd

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_7

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_6

    add-int/lit8 v6, p2, 0x1

    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_7

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    move v6, p2

    goto :goto_4

    :cond_7
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    const/16 v9, 0x759

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    const/16 v9, 0x1e

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    const/16 v9, 0x14f

    if-le v0, v9, :cond_b

    const/16 v9, 0x75a

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/lit16 v0, v0, -0x150

    const/16 v2, 0x16d

    :goto_6
    if-lt v0, v2, :cond_9

    sub-int/2addr v0, v2

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/android/incallui/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v2, 0x16e

    goto :goto_6

    :cond_8
    const/16 v2, 0x16d

    goto :goto_6

    :cond_9
    :goto_7
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_a

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    goto :goto_7

    :cond_a
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x1

    if-le v0, v9, :cond_d

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/lit8 v0, v0, -0x2

    :goto_8
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_c

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    :cond_c
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    :cond_d
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0
.end method

.method public convertLunarToSolar_CHN(IIIZ)V
    .locals 12

    const/16 v9, 0x759

    if-lt p1, v9, :cond_0

    const/16 v9, 0x834

    if-gt p1, v9, :cond_0

    if-ltz p2, :cond_0

    const/16 v9, 0xb

    if-gt p2, v9, :cond_0

    const/4 v9, 0x1

    if-lt p3, v9, :cond_0

    const/16 v9, 0x1e

    if-le p3, v9, :cond_1

    if-nez p4, :cond_1

    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    add-int/lit16 v3, p1, -0x759

    mul-int/lit8 v8, v3, 0xe

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->accumulatedLunarDaysCHN:[I

    aget v0, v9, v3

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunarCHN:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    const/16 v9, 0x7f

    if-ne v5, v9, :cond_2

    const/16 v7, 0xc

    :goto_0
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p2, :cond_6

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunarCHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v7, 0xd

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_6

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunarCHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_5

    add-int/lit8 v6, p2, 0x1

    :goto_3
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_6

    sget-object v9, Lcom/android/incallui/lunar/SolarLunarTables;->lunarCHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v6, p2

    goto :goto_3

    :cond_6
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    const/16 v9, 0x759

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    const/16 v9, 0x1e

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    const/16 v9, 0x14f

    if-le v0, v9, :cond_a

    const/16 v9, 0x75a

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/lit16 v0, v0, -0x150

    const/16 v2, 0x16d

    :goto_5
    if-lt v0, v2, :cond_8

    sub-int/2addr v0, v2

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/android/incallui/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v2, 0x16e

    goto :goto_5

    :cond_7
    const/16 v2, 0x16d

    goto :goto_5

    :cond_8
    :goto_6
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_9

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    goto :goto_6

    :cond_9
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    :goto_7
    return-void

    :cond_a
    const/4 v9, 0x1

    if-le v0, v9, :cond_c

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/lit8 v0, v0, -0x2

    :goto_8
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_b

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    :cond_b
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    goto :goto_7

    :cond_c
    iget v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    goto :goto_7
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/lunar/SolarLunarConverter;->year_:I

    return v0
.end method
