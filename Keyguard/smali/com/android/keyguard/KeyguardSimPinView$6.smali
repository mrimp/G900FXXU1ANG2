.class Lcom/android/keyguard/KeyguardSimPinView$6;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$6;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x7

    if-le p6, v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "^[0-9]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
