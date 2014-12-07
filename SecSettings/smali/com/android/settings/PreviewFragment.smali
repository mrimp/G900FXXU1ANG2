.class public Lcom/android/settings/PreviewFragment;
.super Landroid/app/ListFragment;
.source "PreviewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewFragment$RadioAdapter;
    }
.end annotation


# static fields
.field private static mModeItem:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/PreviewFragment$RadioAdapter;

.field backgroundImage:[I

.field dbValues:[Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSaveButton:Landroid/widget/Button;

.field private mcancelButton:Landroid/widget/Button;

.field menuName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreviewFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateImageResource()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, "UnlockEffect"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_ripple_effect"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "ClockSize"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_3
    const-string v2, "PatternType"

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_pattern_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "MenuName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    const-string v1, "PreviewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityCreated() Menu Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    const-string v1, "UnlockEffect"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/PreviewFragment;->populateUnlockEffectsOptions()V

    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/PreviewFragment$RadioAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040125

    sget-object v4, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/PreviewFragment$RadioAdapter;-><init>(Lcom/android/settings/PreviewFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->adapter:Lcom/android/settings/PreviewFragment$RadioAdapter;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->adapter:Lcom/android/settings/PreviewFragment$RadioAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b01f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040060

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-direct {p0}, Lcom/android/settings/PreviewFragment;->updateImageResource()V

    return-void

    :cond_1
    const-string v1, "ClockSize"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    goto :goto_0

    :cond_2
    const-string v1, "PatternType"

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x7f0204cd
        0x7f0204cc
        0x7f0204cb
    .end array-data

    :array_1
    .array-data 4
        0x7f0204d1
        0x7f0204cf
        0x7f0204d0
        0x7f0204ce
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/PreviewFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PreviewFragment$1;-><init>(Lcom/android/settings/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/PreviewFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f090c6b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/PreviewFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PreviewFragment$2;-><init>(Lcom/android/settings/PreviewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "PreviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView() Menu Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->menuName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040116

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/PreviewFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    iget-object v2, p0, Lcom/android/settings/PreviewFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method populateUnlockEffectsOptions()V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x5

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0913c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v5, 0x7f0204d2

    aput v5, v4, v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0918b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v2, v3, 0x1

    const v5, 0x7f0204d3

    aput v5, v4, v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0918b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v5, 0x7f0204d5

    aput v5, v4, v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0918b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v2, v3, 0x1

    const v5, 0x7f0204d6

    aput v5, v4, v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0918ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090090

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/PreviewFragment;->backgroundImage:[I

    add-int/lit8 v3, v2, 0x1

    const v5, 0x7f0204d4

    aput v5, v4, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/android/settings/PreviewFragment;->mModeItem:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/PreviewFragment;->dbValues:[Ljava/lang/String;

    return-void
.end method
