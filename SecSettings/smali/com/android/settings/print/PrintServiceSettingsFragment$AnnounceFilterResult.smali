.class final Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnnounceFilterResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;Lcom/android/settings/print/PrintServiceSettingsFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/print/PrintServiceSettingsFragment;
    .param p2    # Lcom/android/settings/print/PrintServiceSettingsFragment$1;

    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public post()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->remove()V

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    const v3, 0x7f090988

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$AnnounceFilterResult;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110009

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
