.class abstract Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SelectableItemStateObj"
.end annotation


# static fields
.field private static final CHECKED_APPS:Ljava/lang/String; = "CHECKED_APPS"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mCheckedState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Landroid/view/View;

.field private mNumSelected:Landroid/widget/TextView;

.field protected mPreCheckedItem:Lcom/android/launcher2/AppItem;

.field private mSelectedCnt:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mPreCheckedItem:Lcom/android/launcher2/AppItem;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected abstract complete()V
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 15
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$2900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v11

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, p2

    if-ne v0, v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v10}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_1

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    const v10, 0x7f0800a1

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    const v10, 0x7f0800a2

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/launcher2/MenuAppsGrid;->access$4200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e004e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0050

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v10, 0x7f08006a

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    new-instance v11, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;

    invoke-direct {v11, p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v9

    move-object/from16 v6, p2

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v9, v10, :cond_3

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/View;->setEnabled(Z)V

    :goto_2
    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;

    invoke-direct {v3, p0, v9, v6}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    const v10, 0x7f0800a4

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f0800a1

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v10

    if-nez v10, :cond_2

    const v10, 0x7f0800a3

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v10, "all_apps_button_icon"

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v6, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3000(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v3, v3, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mPreCheckedItem:Lcom/android/launcher2/AppItem;

    if-ne v1, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    if-nez v0, :cond_0

    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/AppIconView;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    sput-boolean v5, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getAppIconViewWithId(J)Lcom/android/launcher2/AppIconView;
    .locals 6
    .param p1    # J

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$3900(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    iget-wide v4, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getCheckedDisabledItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected getCheckedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected getCheckedViews()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    move v5, v0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v0, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/PagedView;->isPageConstructed(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    move v4, v5

    :goto_2
    if-gt v4, v7, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v10, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;
    invoke-static {v10}, Lcom/android/launcher2/MenuAppsGrid;->access$4400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v12, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-interface {v11, v2, v10}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v9
.end method

.method protected hasCheckedItems()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 8
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Landroid/view/View;

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/android/launcher2/AppIconView;

    if-ne v2, v5, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->toggle()V

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e004e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mBackButton:Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04000a

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return v3

    :cond_1
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V
    .locals 8
    .param p1    # Lcom/android/launcher2/AppItem;
    .param p2    # Landroid/view/View;

    const v5, 0x7f0e004e

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v3, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mPreCheckedItem:Lcom/android/launcher2/AppItem;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$4000(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getAppIconViewWithId(J)Lcom/android/launcher2/AppIconView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/launcher2/AppIconView;

    if-ne v2, v3, :cond_3

    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->toggle()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v2, v2, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mSelectedCnt:I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    iget-wide v3, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mScreenLocation:[I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mPreCheckedItem:Lcom/android/launcher2/AppItem;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mDoneButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mNumSelected:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$4100(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mPreCheckedItem:Lcom/android/launcher2/AppItem;

    goto :goto_0
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 5
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v2, "CHECKED_APPS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [J

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->mCheckedState:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    const-string v5, "CHECKED_APPS"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method
