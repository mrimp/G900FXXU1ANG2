.class Lcom/android/phone/PhotoringGuide$2;
.super Ljava/lang/Object;
.source "PhotoringGuide.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoringGuide;->createThreadAndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoringGuide;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoringGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoringGuide$2;->this$0:Lcom/android/phone/PhotoringGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhotoringGuide$2;->this$0:Lcom/android/phone/PhotoringGuide;

    # invokes: Lcom/android/phone/PhotoringGuide;->loadText()V
    invoke-static {v0}, Lcom/android/phone/PhotoringGuide;->access$300(Lcom/android/phone/PhotoringGuide;)V

    return-void
.end method
