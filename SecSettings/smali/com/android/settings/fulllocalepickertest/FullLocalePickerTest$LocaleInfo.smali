.class public Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;
.super Ljava/lang/Object;
.source "FullLocalePickerTest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;)I
    .locals 3
    .param p1    # Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    sget-object v0, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->compareTo(Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fulllocalepickertest/FullLocalePickerTest$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
