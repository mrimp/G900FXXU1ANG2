.class Lcom/android/phone/RoamingAutoDialSettings$1;
.super Ljava/lang/Object;
.source "RoamingAutoDialSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RoamingAutoDialSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingAutoDialSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/RoamingAutoDialSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RoamingAutoDialSettings$1;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/RoamingAutoDialSettings$1;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/RoamingAutoDialSettings$1;->this$0:Lcom/android/phone/RoamingAutoDialSettings;

    const-class v3, Lcom/android/phone/RoamingAutoDialMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
