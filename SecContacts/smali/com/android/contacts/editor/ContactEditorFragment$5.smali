.class Lcom/android/contacts/editor/ContactEditorFragment$5;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;

.field final synthetic val$editor:Lcom/android/contacts/editor/BaseRawContactEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->val$editor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$5;->val$editor:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->getEditorListener()Lcom/android/contacts/editor/Editor$EditorListener;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/Editor$EditorListener;->onRequest(I)V

    return-void
.end method
