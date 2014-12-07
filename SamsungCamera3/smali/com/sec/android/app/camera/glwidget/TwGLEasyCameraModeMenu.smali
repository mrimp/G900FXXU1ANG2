.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEasyCameraModeMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLModeItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field private static final LIST_PADDING:I

.field private static final LIST_POS_Y:I

.field private static final LIST_WIDTH:I

.field private static final MODE_ITEM_MARGIN:I

.field private static final MODE_MENU_ITEM_HEIGHT:I

.field private static final MODE_MENU_ITEM_WIDTH:I

.field private static final TUTORIAL_HELP_GROUP_WIDTH:I


# instance fields
.field private mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f09002f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_POS_Y:I

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    const v0, 0x7f090030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_PADDING:I

    const v0, 0x7f090031

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    const v0, 0x7f090032

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    const v0, 0x7f090046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_ITEM_MARGIN:I

    const v0, 0x7f0901f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # I
    .param p3    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .param p5    # Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_ITEM_MARGIN:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLList;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setInternalFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->TUTORIAL_HELP_GROUP_WIDTH:I

    int-to-float v4, v1

    invoke-virtual {p3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;-><init>(Lcom/sec/android/app/camera/Camera;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_MENU_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->MODE_ITEM_MARGIN:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->reset()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1
    return v3
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStepHide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->finish()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLContext;->setFocusIndicatorRefesh(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    return-void
.end method

.method public onSelect(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/16 v4, 0xcb

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->STEP_NUM:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mTutorial3:Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorial3;->setStep3()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->getItemWithData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mPreviousSelectedItemData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->getItemWithData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setSelect(Z)V

    :cond_2
    return-void
.end method

.method protected onShow()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->refreshMenuPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isFocusIndicatorVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public refreshMenuPosition()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->LIST_WIDTH:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :cond_1
    return-void
.end method

.method public setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x4

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->reset()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mAdapter:Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu$TwGLMenuAdapter;->setResourceData(Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mTutorialModeDescription:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraModeMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    return-void
.end method
