.class Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;->this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;->this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener$1;->this$1:Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/android/dialer/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method
