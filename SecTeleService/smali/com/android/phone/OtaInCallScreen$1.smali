.class Lcom/android/phone/OtaInCallScreen$1;
.super Ljava/lang/Object;
.source "OtaInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OtaInCallScreen;->onClickOtaActivateSkipButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OtaInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/OtaInCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OtaInCallScreen$1;->this$0:Lcom/android/phone/OtaInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const-string v0, "Ignoring key events..."

    # invokes: Lcom/android/phone/OtaInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/OtaInCallScreen;->access$100(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
