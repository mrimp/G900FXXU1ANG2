.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$FolderNameChangeListener;,
        Lcom/android/launcher2/Folder$FolderVertScroller;,
        Lcom/android/launcher2/Folder$FolderManager;,
        Lcom/android/launcher2/Folder$FolderColor;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field public static final FOLDER_TCHEVHDL_CLOSED:I = 0x2

.field public static final FOLDER_TCHEVHDL_EDIT_CANCELLED:I = 0x1

.field public static final FOLDER_TCHEVHDL_UNPROCESSED:I = 0x3

.field static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sHintText:Ljava/lang/String;


# instance fields
.field folderLocation:[I

.field iconLocation:[I

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

.field protected mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

.field mDragState:Lcom/android/launcher2/DragState;

.field mExpandDuration:I

.field mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field mFolderColorDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mFolderColorViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Folder$FolderNameChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderNameHeight:I

.field mFolderOptionButton:Landroid/widget/ImageView;

.field mFolderOptionView:Landroid/widget/LinearLayout;

.field mFolderTextColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIgnoreShrinkingFolder:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderItem;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mIsFolderOpenAnimationEnded:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxFolderVisibleCols:I

.field private mMaxFolderVisibleRows:I

.field mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field mOnColorViewClickListener:Landroid/view/View$OnClickListener;

.field final mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field mOtherParent:Landroid/view/ViewGroup;

.field private mScrollView:Landroid/view/View;

.field private mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    new-instance v1, Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    new-instance v1, Lcom/android/launcher2/Folder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/launcher2/Folder$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    new-instance v1, Lcom/android/launcher2/Folder$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    new-instance v1, Lcom/android/launcher2/Folder$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$9;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020041

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020042

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020044

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f09003a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f09003b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f09003d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f09003e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f09003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/launcher2/Folder;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/Folder;

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/Folder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0    # Lcom/android/launcher2/Folder;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/Folder;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/launcher2/Folder;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0    # Lcom/android/launcher2/Folder;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    return-void
.end method

.method private animateOpen()V
    .locals 3

    const/high16 v2, 0x3f800000

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->prepareForOpenAnimate()V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->animateOpen()V

    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getGridValues(Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;

    const v0, 0x7f0b0029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    const v0, 0x7f0b002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    return-void
.end method

.method private getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 4
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    :goto_2
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private notifyFolderNameChangeListeners(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder$FolderNameChangeListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/Folder$FolderNameChangeListener;->onFolderNameChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCloseComplete()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private openFolderWithoutAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->open()V

    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    invoke-virtual {v2, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iget-object v11, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    iget v13, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    add-int/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    iget v13, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    add-int/2addr v12, v13

    aput v12, v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher2/MenuView;

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    new-array v5, v10, [I

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v5, v12

    aput v12, v10, v11

    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v6, v10

    iget-object v10, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-float v7, v10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0064

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_1

    instance-of v10, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v10, :cond_4

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v0, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v10, 0x2

    if-ge v0, v10, :cond_3

    rsub-int/lit8 v10, v0, 0x2

    div-int/lit8 v11, v1, 0x4

    mul-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v6, v10

    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setPivotY(F)V

    int-to-float v10, v1

    iget v11, p0, Lcom/android/launcher2/Folder;->mWidth:I

    int-to-float v11, v11

    div-float v8, v10, v11

    int-to-float v10, v1

    iget v11, p0, Lcom/android/launcher2/Folder;->mHeight:I

    int-to-float v11, v11

    div-float v9, v10, v11

    invoke-virtual {p0, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v9}, Landroid/view/View;->setScaleY(F)V

    const/high16 v10, 0x3f800000

    invoke-virtual {p0, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v10, v0, -0x1

    div-int/lit8 v11, v1, 0x4

    mul-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v6, v10

    goto :goto_0

    :cond_4
    instance-of v10, v3, Lcom/android/launcher2/AppItem;

    if-eqz v10, :cond_1

    check-cast v3, Lcom/android/launcher2/AppItem;

    iget v10, v3, Lcom/android/launcher2/AppItem;->mCell:I

    rem-int/lit8 v0, v10, 0x4

    const/4 v10, 0x2

    if-ge v0, v10, :cond_5

    rsub-int/lit8 v10, v0, 0x2

    div-int/lit8 v11, v1, 0x4

    mul-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v6, v10

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v0, -0x1

    div-int/lit8 v11, v1, 0x4

    mul-int/2addr v10, v11

    int-to-float v10, v10

    add-float/2addr v6, v10

    goto :goto_0
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 10
    .param p1    # Landroid/view/DragEvent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-gt v8, v9, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    div-int/lit8 v9, v1, 0x3

    add-int v4, v8, v9

    int-to-float v8, v4

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollUp()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v8, v2, v3

    div-int/lit8 v9, v1, 0x3

    sub-int v0, v8, v9

    int-to-float v8, v0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollDown()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    move v6, v7

    goto :goto_0
.end method

.method private setScrollViewSize()V
    .locals 6

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 4
    .param p1    # I

    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder visible cols = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    goto :goto_0
.end method

.method private showAddFolderItem()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v8, 0x7f08003d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03000c

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v8, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v7, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    const/4 v7, 0x2

    new-array v4, v7, [I

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v2

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v7

    rem-int v5, v2, v7

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v7

    div-int v7, v2, v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v6, v7

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v5, v6, v4}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    new-instance v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v3, v11, v11, v10, v10}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    aget v7, v4, v12

    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    aget v7, v4, v10

    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateTextViewFocus()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setNextFocusUpId(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Folder$FolderNameChangeListener;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method beginHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget v1, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/FolderAnimator;->bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method bind(Lcom/android/launcher2/FolderItem;)V
    .locals 9
    .param p1    # Lcom/android/launcher2/FolderItem;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-interface {p1, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7, v4}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    instance-of v7, v4, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v4, Lcom/android/launcher2/HomeItem;

    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Folder;->setFolderNameDefaultFontSize(Z)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/Folder;->setFolderColor(IZ)V

    return-void
.end method

.method public cancelCloseFolderAlarm()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method cancelHotseatSwapAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    return-void
.end method

.method public centerAboutIcon()V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v15, v0, [I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v15, v0, v14}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v29

    add-int v27, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    const v28, 0x7f0d01d7

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const v29, 0x7f0d01db

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v28, v28, v29

    const v29, 0x7f0d01dc

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v5, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    add-int v28, v28, v29

    move/from16 v0, v23

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v29

    add-int v28, v28, v29

    add-int v28, v28, v6

    const v29, 0x7f0d01cc

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v7, v28, v29

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v28

    div-int/lit8 v28, v28, 0x3

    add-int v7, v7, v28

    :cond_2
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v28

    sub-int v28, v28, v27

    div-int/lit8 v17, v28, 0x2

    const v28, 0x7f0d00aa

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f0f0015

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    const/16 v28, 0x1

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    const/16 v28, 0x2

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    const v28, 0x7f0d01e3

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const v28, 0x7f0d01e4

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    const/16 v19, 0x0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    add-int v29, v22, v21

    add-int v29, v29, v12

    add-int v29, v29, v11

    add-int v29, v29, v10

    sub-int v18, v28, v29

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    move/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/launcher2/HomeItem;

    iget-wide v0, v8, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x64

    cmp-long v28, v28, v30

    if-nez v28, :cond_5

    iget v0, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    iget v0, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    :cond_4
    const v28, 0x7f0d0010

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    :cond_5
    :goto_1
    iget-wide v0, v8, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x65

    cmp-long v28, v28, v30

    if-nez v28, :cond_6

    sub-int v26, v18, v7

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    if-nez v28, :cond_7

    const/16 v28, 0x1

    aget v26, v15, v28

    :cond_7
    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v20

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b001a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    add-int v28, v28, v26

    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/Folder;->mHeight:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mWidth:I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const v28, 0x7f0d0011

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto :goto_1

    :cond_9
    iget v0, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_5

    const v28, 0x7f0d0013

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    sub-int v18, v18, v28

    sub-int v26, v18, v7

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/AppItem;

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v2, v16

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x4

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    const v28, 0x7f0d000b

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    :cond_c
    const v28, 0x7f0d000c

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_d
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x4

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    const v28, 0x7f0d000b

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    const v28, 0x7f0d000c

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const v28, 0x7f0d000d

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_10
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x4

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    const v28, 0x7f0d000b

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    const v28, 0x7f0d000c

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    const v28, 0x7f0d000e

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    goto/16 :goto_2

    :cond_13
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x4

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    const v29, 0x7f0d0012

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    sub-int v18, v28, v29

    sub-int v26, v18, v7

    goto/16 :goto_2

    :array_0
    .array-data 4
        0x1010095
        0x10100d9
        0x1010171
    .end array-data
.end method

.method public close(ZZ)V
    .locals 10
    .param p1    # Z
    .param p2    # Z

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x3f800000

    const v6, 0x3e4ccccd

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_2

    new-array v3, v9, [I

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v3, v8

    sget-object v5, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    aget v5, v5, v8

    if-eq v4, v5, :cond_2

    const/4 p2, 0x0

    :cond_2
    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v4}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderAnimator;->animateClose(Lcom/android/launcher2/DragState;)V

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v9, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/Folder$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v4, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    if-nez v4, :cond_5

    const-wide/16 v1, 0x64

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v5, v5

    const-wide/16 v7, 0x64

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v4}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    goto/16 :goto_0
.end method

.method public completeDragExit()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public disableChildBadges()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dismissEditingName(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1    # Landroid/view/DragEvent;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    :cond_1
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    const/16 v4, 0x64

    if-gt v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public doneEditingFolderName(Z)V
    .locals 11
    .param p1    # Z

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v7, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->setFolderNameDefaultFontSize(Z)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/android/launcher2/FolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/launcher2/Folder;->notifyFolderNameChangeListeners(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    instance-of v6, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v6, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x7f0a0012

    :goto_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0063

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    move-object v4, v0

    :cond_3
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-boolean v10, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return-void

    :cond_5
    const v6, 0x7f0a0011

    goto :goto_0

    :cond_6
    const-string v5, ""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public enableChildBadges()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->showBadge()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method finishHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->finishBouncingItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getEditTextRegion()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 6
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_1
.end method

.method public getIconId()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v3}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v3, Lcom/android/launcher2/BaseItem;->mId:J

    :cond_0
    return-wide v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getInfo()Lcom/android/launcher2/FolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/ChildIterable;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/ChildIterable;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public getNormalVisibleItems()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getVisibleItems()I
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleTouchOutsideBounds(Landroid/view/MotionEvent;Landroid/view/ViewGroup;)I
    .locals 7
    .param p1    # Landroid/view/MotionEvent;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x3

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/Folder;->close(ZZ)V

    const/4 v2, 0x2

    goto :goto_0
.end method

.method public ignoreShrinkingFolder()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    return-void
.end method

.method public isEditingName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFolderOpenAnimationEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    return-void
.end method

.method notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onAttachedToWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 15
    .param p1    # Landroid/content/res/Configuration;

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v6

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v12

    if-eqz v12, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v13, 0x7f0d008a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0d008b

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v13, 0x7f0d00cf

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0d00d0

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    const v12, 0x7f0d00d1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v10, 0x0

    const v12, 0x7f0d00d2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v12, 0x7f0d00d3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12, v8, v10, v9, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0, v6}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v12, 0x7f0f001c

    invoke-static {v4, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v12, 0x7f0f001c

    invoke-static {v4, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onDetachedFromWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 7
    .param p1    # Landroid/view/DragEvent;

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0x320

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    const-wide/32 v3, -0x80000000

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v2, v0, v5, v5}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # Landroid/widget/TextView;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v6, 0x7f0800ce

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/view/View;

    const v6, 0x7f0800cf

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-object p0, v6, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-boolean v10, v6, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v7, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v6, v7, v10}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    const v6, 0x7f0800cb

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/FolderEditText;

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    const v6, 0x7f0800cc

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    const v6, 0x7f0800cd

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    new-instance v7, Lcom/android/launcher2/Folder$2;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    sget-object v7, Lcom/android/launcher2/FocusHelper;->FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v8, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v6, 0x7f08003f

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v8, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v8, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v6, 0x7f080041

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v8, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v6, 0x7f080042

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v8, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v6, 0x7f080043

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v6, Lcom/android/launcher2/FocusHelper;->FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_2

    if-eqz v5, :cond_2

    const-string v6, "(?i).*talkback.*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v7, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v7, Lcom/android/launcher2/Folder$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v7, Lcom/android/launcher2/Folder$4;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v4, v4}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7}, Landroid/widget/TextView;->getInputType()I

    move-result v7

    or-int/lit16 v7, v7, 0x4000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    invoke-virtual {p0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_5

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setCursorVisible(Z)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto/16 :goto_0
.end method

.method public onItemsChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .param p1    # Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v14, v9, Lcom/android/launcher2/BaseItem;

    if-eqz v14, :cond_7

    move-object v4, v9

    check-cast v4, Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    sget-boolean v14, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0e009d

    new-instance v5, Landroid/widget/Toast;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f03001e

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v14, 0x7f080059

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x7f0d010d

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v14, 0x7f0d010e

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const v14, 0x7f0d0109

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v14, 0x7f0d010a

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v2, :cond_3

    iget v1, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    const/4 v14, 0x4

    if-le v1, v14, :cond_2

    const/4 v1, 0x4

    add-int/lit8 v7, v7, 0x46

    :cond_2
    mul-int v14, v1, v13

    add-int/2addr v7, v14

    :cond_3
    const/16 v14, 0x30

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v7}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v14, v15, :cond_5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v14

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v15, "vibrator"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    const-wide/16 v15, 0x23

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateViewsToTheirItemPositions()V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Z

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateCustomViewToCellLayout()V

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Folder;->animateOpen()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->onFolderOpen()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->openFolderWithoutAnimation()V

    goto :goto_0
.end method

.method public parentLayoutEntered()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    :cond_0
    return-void
.end method

.method public refreshIconView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    :cond_0
    return-void
.end method

.method public removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/Folder$FolderNameChangeListener;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public repositionOpenFolder()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/Folder$10;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$10;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->updateTempIconPosition()V

    return-void
.end method

.method public requestChildFocusForHWKey()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1, v3, v3}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public restoreText(Ljava/lang/String;II)Z
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method setFolderColor(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/Folder;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0
.end method

.method setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V
    .locals 7
    .param p1    # Lcom/android/launcher2/Folder$FolderColor;
    .param p2    # Z

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/launcher2/FolderItem;->setFolderColor(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/Folder$FolderManager;

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    new-instance v1, Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public setFolderNameDefaultFontSize(Z)V
    .locals 9
    .param p1    # Z

    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    const v6, 0x7f0d00d5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v6, v0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const v6, 0x7f0d01cd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v7, 0x7f0d00cb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x7f0d00ce

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float v2, v6, v7

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    if-eqz p1, :cond_0

    cmpl-float v6, v5, v2

    if-lez v6, :cond_0

    const v6, 0x7f0d01cf

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v6, v0

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/HomeView;

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setHomeView(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public startEditingFolderName()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    :cond_0
    return-void
.end method

.method public startEditingFolderName(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    return-void
.end method

.method updateFolderColorViews(Lcom/android/launcher2/Folder$FolderColor;)V
    .locals 7
    .param p1    # Lcom/android/launcher2/Folder$FolderColor;

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    :cond_0
    return-void
.end method
