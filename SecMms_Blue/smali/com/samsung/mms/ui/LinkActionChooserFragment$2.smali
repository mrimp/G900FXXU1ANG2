.class Lcom/samsung/mms/ui/LinkActionChooserFragment$2;
.super Ljava/lang/Object;
.source "LinkActionChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/ui/LinkActionChooserFragment;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;

.field final synthetic val$action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

.field final synthetic val$m_Text:Ljava/lang/String;

.field final synthetic val$m_Url:Ljava/lang/String;

.field final synthetic val$urlActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/mms/ui/LinkActionChooserFragment;Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->this$0:Lcom/samsung/mms/ui/LinkActionChooserFragment;

    iput-object p2, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    iput-object p3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$urlActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$m_Url:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$m_Text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$urlActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$m_Url:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;->val$m_Text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
