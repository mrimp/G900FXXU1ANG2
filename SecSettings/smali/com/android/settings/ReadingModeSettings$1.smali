.class Lcom/android/settings/ReadingModeSettings$1;
.super Ljava/lang/Object;
.source "ReadingModeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ReadingModeSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ReadingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ReadingModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p1    # Landroid/widget/AdapterView;
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    # invokes: Lcom/android/settings/ReadingModeSettings;->getCheckedReadingModeAppNum()I
    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$000(Lcom/android/settings/ReadingModeSettings;)I

    move-result v2

    const v3, 0x7f0b042e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    # getter for: Lcom/android/settings/ReadingModeSettings;->mAppListAdapter:Lcom/android/settings/ReadingModeSettings$AppListAdapter;
    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$100(Lcom/android/settings/ReadingModeSettings;)Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    # getter for: Lcom/android/settings/ReadingModeSettings;->mAppListAdapter:Lcom/android/settings/ReadingModeSettings$AppListAdapter;
    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$100(Lcom/android/settings/ReadingModeSettings;)Lcom/android/settings/ReadingModeSettings$AppListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ReadingModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnItemClickListener mAppinfo :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    # getter for: Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$200(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    sget v3, Lcom/android/settings/ReadingModeSettings;->MAX_READINGMODE:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    # getter for: Lcom/android/settings/ReadingModeSettings;->mTempCheckedApplist:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$200(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    # getter for: Lcom/android/settings/ReadingModeSettings;->mTempApplist:Ljava/util/LinkedHashMap;
    invoke-static {v3}, Lcom/android/settings/ReadingModeSettings;->access$300(Lcom/android/settings/ReadingModeSettings;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ReadingModeSettings$1;->this$0:Lcom/android/settings/ReadingModeSettings;

    const v5, 0x7f091737

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/android/settings/ReadingModeSettings;->MAX_READINGMODE:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
