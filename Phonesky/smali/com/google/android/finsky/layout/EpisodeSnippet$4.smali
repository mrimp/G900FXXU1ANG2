.class final Lcom/google/android/finsky/layout/EpisodeSnippet$4;
.super Ljava/lang/Object;
.source "EpisodeSnippet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/EpisodeSnippet;->updateBuyButtonState(Landroid/content/res/Resources;Lcom/google/android/play/layout/PlayActionButton;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;ZLcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$owner:Landroid/accounts/Account;

.field final synthetic val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$owner:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0xda

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$owner:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeSnippet$4;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method
