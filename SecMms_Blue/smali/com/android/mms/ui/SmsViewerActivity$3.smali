.class Lcom/android/mms/ui/SmsViewerActivity$3;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$3;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$3;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
