.class public interface abstract Lcom/android/mms/util/DummyFramework$SpamSms;
.super Ljava/lang/Object;
.source "DummyFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DummyFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpamSms"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://spamsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/DummyFramework$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
