.class Lcom/android/phone/PhotoringPhrasesEdit$3;
.super Ljava/lang/Object;
.source "PhotoringPhrasesEdit.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoringPhrasesEdit;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoringPhrasesEdit;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoringPhrasesEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoringPhrasesEdit$3;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit$3;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    # invokes: Lcom/android/phone/PhotoringPhrasesEdit;->delItem()V
    invoke-static {v0}, Lcom/android/phone/PhotoringPhrasesEdit;->access$200(Lcom/android/phone/PhotoringPhrasesEdit;)V

    iget-object v0, p0, Lcom/android/phone/PhotoringPhrasesEdit$3;->this$0:Lcom/android/phone/PhotoringPhrasesEdit;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
