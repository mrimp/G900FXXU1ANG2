.class final Lcom/google/android/finsky/previews/PreviewController$1;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/previews/PreviewController$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    # getter for: Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;
    invoke-static {}, Lcom/google/android/finsky/previews/PreviewController;->access$000()Lcom/google/android/finsky/previews/PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->clear()V

    # getter for: Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;
    invoke-static {}, Lcom/google/android/finsky/previews/PreviewController;->access$000()Lcom/google/android/finsky/previews/PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->stop()V

    # getter for: Lcom/google/android/finsky/previews/PreviewController;->mPlayer:Lcom/google/android/finsky/previews/PreviewPlayer;
    invoke-static {}, Lcom/google/android/finsky/previews/PreviewController;->access$000()Lcom/google/android/finsky/previews/PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/finsky/previews/PreviewController$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method
