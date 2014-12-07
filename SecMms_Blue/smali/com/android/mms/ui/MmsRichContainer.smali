.class public Lcom/android/mms/ui/MmsRichContainer;
.super Landroid/widget/LinearLayout;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;,
        Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;,
        Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;
    }
.end annotation


# static fields
.field private static final LOCATION_INDEX:I = 0x0

.field public static final MENU_REMOVE_MEDIA:I = 0x16

.field public static final MENU_REPLACE_MEDIA:I = 0x15

.field public static final MENU_VIEW_MEDIA:I = 0x14

.field public static final MSG_DPAD_DOWN:I = 0x33

.field public static final MSG_DPAD_LEFT:I = 0x35

.field public static final MSG_DPAD_RIGHT:I = 0x34

.field public static final MSG_DPAD_UP:I = 0x32

.field public static final MSG_FOCUS_CHANGED:I = 0x28

.field public static final MSG_REMOVE_CURRENT_SLIDE:I = 0x5

.field public static final MSG_REMOVE_MEDIA:I = 0x3

.field public static final MSG_REMOVE_PREVIOUS_SLIDE:I = 0x4

.field public static final MSG_REPLACE_MEDIA:I = 0x2

.field public static final MSG_SET_LOCATION:I = 0x3c

.field public static final MSG_TYPE_AUDIO:I = 0xc

.field public static final MSG_TYPE_IMAGE:I = 0xa

.field public static final MSG_TYPE_LOCATION:I = 0xe

.field public static final MSG_TYPE_TEXT:I = 0xd

.field public static final MSG_TYPE_VIDEO:I = 0xb

.field public static final MSG_VIEW_MEDIA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/MmsRichContainer"

.field private static final TOP_PADDING_DEFAULT:I

.field public static final UPDATE_CHANGE_MMS_TO_SMS:I = 0x20

.field public static final UPDATE_DEFAULT:I = 0x1e

.field public static final UPDATE_DEFAULT_WITHOUT_ANIMATION:I = 0x21

.field public static final UPDATE_REMOVE_CURRENT_SLIDE:I = 0x23

.field public static final UPDATE_REMOVE_IMAGE_VIDEO:I = 0x1f

.field public static final UPDATE_REMOVE_PREVIOUS_SLIDE:I = 0x22


# instance fields
.field private isNeedToBlockTheKey:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mEditorTouchListener:Landroid/view/View$OnTouchListener;

.field private mFontSize:F

.field private mFontSizeIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mHintResId:I

.field private mMediaTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

.field private mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

.field private mParentTextWatcher:Landroid/text/TextWatcher;

.field private mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

.field private mTextColor:I

.field private mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mTextTop:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41200000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    sput v0, Lcom/android/mms/ui/MmsRichContainer;->TOP_PADDING_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$7;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$8;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$9;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSizeIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    iput-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$3;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$4;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$5;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$6;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$7;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$8;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsRichContainer$9;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSizeIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MmsRichContainer;)Lcom/android/mms/ui/OnEventListener;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsRichContainer;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-boolean v0, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MmsRichContainer;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsRichContainer;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MmsRichContainer;II)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;Z)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/MmsRichContainer;
    .param p1    # Landroid/view/View;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method private calcParams(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 13
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x43100000

    const/high16 v11, 0x42a20000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v1, v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v0, v8

    const-string v8, "Mms/MmsRichContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calcParams bitmap.w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bitmap.h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpg-float v8, v1, v0

    if-gtz v8, :cond_1

    invoke-static {v11}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v4, v8

    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v3, v8

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    div-float v5, v4, v1

    mul-float v8, v0, v5

    float-to-int v6, v8

    int-to-float v8, v6

    cmpg-float v8, v8, v3

    if-gez v8, :cond_0

    int-to-float v3, v6

    :cond_0
    :goto_1
    float-to-int v8, v4

    iput v8, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    float-to-int v8, v3

    iput v8, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v8, "Mms/MmsRichContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "calcParams w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    invoke-static {v12}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v4, v8

    invoke-static {v11}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v8

    int-to-float v3, v8

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    div-float v5, v3, v0

    mul-float v8, v1, v5

    float-to-int v7, v8

    int-to-float v8, v7

    cmpg-float v8, v8, v4

    if-gez v8, :cond_0

    int-to-float v4, v7

    goto :goto_1
.end method

.method private getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .param p1    # Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f0b0229

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method private getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1    # Landroid/view/View;

    if-eqz p1, :cond_0

    const v1, 0x7f0b021c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1    # Landroid/view/View;

    const v1, 0x7f0b022c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1    # Landroid/view/View;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0221

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method private getSignatureText()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_signature_text"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTopPaddingPerFontSizeIndex(I)I
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/android/mms/ui/MmsRichContainer;->TOP_PADDING_DEFAULT:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/android/mms/ui/MmsRichContainer;->TOP_PADDING_DEFAULT:I

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x41080000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const v0, 0x40d66666

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x40b00000

    invoke-static {v0}, Lcom/android/mms/util/UIUtils;->dp2Pixels(F)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getVisibleEditText(IZ)Landroid/widget/EditText;
    .locals 7
    .param p1    # I
    .param p2    # Z

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v4, "Mms/MmsRichContainer"

    const-string v5, "mView is null. just return"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const v4, 0x7f0b021b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v4, 0x7f0b0228

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mBottomEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextEditorFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move-object v3, v2

    :goto_2
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    const v4, 0x2000004

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v3, v0

    goto :goto_2
.end method

.method private isSignatureEnabled()Z
    .locals 2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method private pageHasContents(Landroid/view/View;Z)Z
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const v9, 0x7f0b021c

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    const v9, 0x7f0b0229

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f0b0221

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v7, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/WorkingMessage;->isSignatureAdded()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->hasOnlySignatureText(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    move v7, v8

    goto :goto_0
.end method

.method private resetLayoutAttr()V
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v2, v6

    :goto_0
    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-direct {p0, v9, v11}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    const/high16 v8, 0x3f800000

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    invoke-virtual {p0, v9, v11}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFontSizeIndex()I

    move-result v8

    invoke-direct {p0, v7, v9, v8}, Lcom/android/mms/ui/MmsRichContainer;->setEditorTopPadding(Landroid/view/View;II)V

    return-void
.end method

.method private resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V
    .locals 6
    .param p1    # Lcom/android/mms/model/SlideModel;
    .param p2    # I

    const/16 v5, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private setAddAnimation()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createAddEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setDeleteAnimation(II)V
    .locals 5
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/animation/MsgObjectAnimation;->createDeleteEffect(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/MmsRichContainer$10;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private setEditorTopPadding(Landroid/view/View;II)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-static {p3}, Lcom/android/mms/ui/MmsRichContainer;->getTopPaddingPerFontSizeIndex(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setWeight(Landroid/view/View;F)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # F

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWBInfo()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_5

    invoke-direct {p0, v1, v7}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    invoke-virtual {v5, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v6

    if-nez v6, :cond_1

    if-le v4, v7, :cond_3

    :cond_1
    const-string v6, "isMmsMode"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v6, "isMmsMode"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v6, "isMmsMode"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public addPage(I)V
    .locals 11
    .param p1    # I

    const/4 v10, 0x3

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f04006a

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v7

    const/16 v8, 0xff

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v7

    invoke-static {v10, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v6

    :goto_0
    invoke-virtual {p0, v4, v6}, Lcom/android/mms/ui/MmsRichContainer;->setEditorFontSize(Landroid/view/View;F)V

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSizeIndex:I

    invoke-direct {p0, v4, p1, v7}, Lcom/android/mms/ui/MmsRichContainer;->setEditorTopPadding(Landroid/view/View;II)V

    new-instance v7, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v8, 0xd

    invoke-direct {v7, p0, v8, p1}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v7, 0x2000004

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v1, v9}, Lcom/android/mms/ui/MmsRichContainer;->setWritingBuddy(Landroid/widget/EditText;Z)V

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v7, v7, Lcom/android/mms/ui/ComposeMessageFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    :cond_0
    const v7, 0x7f0b021e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v7, 0x7f0b0229

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mMediaTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v4, p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v7

    invoke-static {v10, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v6

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1    # Landroid/text/TextWatcher;

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "addTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public changeFontSize(I)V
    .locals 5
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSizeIndex:I

    const/4 v3, 0x3

    invoke-static {v3, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSize:F

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSize:F

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->setEditorFontSize(Landroid/view/View;F)V

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/ui/MmsRichContainer;->setEditorTopPadding(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public changeLayout(Lcom/android/mms/data/WorkingMessage;)V
    .locals 11
    .param p1    # Lcom/android/mms/data/WorkingMessage;

    const/high16 v10, 0x3f800000

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v0

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1, v8}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v7

    if-ne v7, v9, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v7

    if-ne v7, v9, :cond_3

    move v5, v1

    if-lt v1, v9, :cond_2

    add-int/lit8 v5, v1, -0x1

    :cond_2
    invoke-direct {p0, v5, v8}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v6

    :goto_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v1}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1, v8}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1, v8}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v6

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v7

    if-ne v7, v9, :cond_6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    :cond_6
    :goto_3
    invoke-virtual {p0, v0, v9}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, ""

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto :goto_3

    :cond_9
    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v7, :cond_a

    const-string v7, ""

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_4
.end method

.method public changeTextColor(I)V
    .locals 8
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b021b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v7, 0x7f0b0228

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v7, 0x7f0b0229

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    const v7, 0x7f0b022b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    :goto_1
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method

.method public clearFocusEditText(I)V
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method public getBitmapforWB()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 3
    .param p1    # Landroid/view/View;

    if-nez p1, :cond_0

    const-string v1, "Mms/MmsRichContainer"

    const-string v2, "mView is null. just return"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b021b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :goto_1
    iget v1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0228

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_1
.end method

.method public getFocusedEditText()Landroid/widget/EditText;
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocusedSlideIndex()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFontSizeIndex()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSizeIndex:I

    return v0
.end method

.method public getMMSLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPageCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public hasContents(Z)Z
    .locals 6
    .param p1    # Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    if-le v0, v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->isSignatureAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/MmsRichContainer;->pageHasContents(Landroid/view/View;Z)Z

    move-result v3

    goto :goto_0
.end method

.method public hasOnlySignatureText(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initContainer()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02037f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    const-string v10, "DragDrop"

    const-string v11, "Unknown action type received by OnDragListener."

    invoke-static {v10, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "text/html"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "text/plain"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c014c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSupportedUri(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c014c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->isComposerPanelVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v10, v6, v3, v4, v11}, Lcom/android/mms/ui/MessageUtils;->setIntentforDrop(Landroid/net/Uri;Landroid/content/Intent;Landroid/content/ClipData;Landroid/content/ClipDescription;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c014c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x1

    if-ne v5, v10, :cond_4

    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getHandleComposerAttachment()Lcom/android/mms/util/HandleComposerAttachment;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12, v8}, Lcom/android/mms/util/HandleComposerAttachment;->HandleSingleAttachMentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/SharedPreferences;)Z

    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getHandleComposerAttachment()Lcom/android/mms/util/HandleComposerAttachment;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v10, v11, v6, v12}, Lcom/android/mms/util/HandleComposerAttachment;->HandleMultiAttachmentFromIntent(Landroid/os/Handler;Landroid/content/Intent;Landroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public release()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0b021b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f0b0228

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, p1, -0x1

    if-gez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .param p1    # Landroid/text/TextWatcher;

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "removeTextChangedListener()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;

    :cond_0
    return-void
.end method

.method public setAudioAndKeyListener(Ljava/lang/String;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/16 v3, 0xc

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedAudioView(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Mms/MmsRichContainer"

    const-string v3, "audioInfo is null just return!!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0b022b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method public setBitmapforWB(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setClipExMgr(Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 0
    .param p1    # Landroid/sec/clipboard/ClipboardExManager;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    return-void
.end method

.method public setComposer(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method public setEditorFontSize(Landroid/view/View;F)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const-string v2, "Mms/MmsRichContainer"

    const-string v3, "view is null. just return"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0b021b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x7f0b0228

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public setEnabledEditTextAll(Z)V
    .locals 2
    .param p1    # Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFocusEditText()V
    .locals 2

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setFocusEditText() on first"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    return-void
.end method

.method public setFocusEditText(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public setFocusEditText(IZ)V
    .locals 7
    .param p1    # I
    .param p2    # Z

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 p1, v3, -0x1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->isSignatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/mms/ui/MmsRichContainer;->getSignatureText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageFragment;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    invoke-virtual {v3, v4, v5}, Landroid/sec/clipboard/ClipboardExManager;->setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_1

    :cond_5
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public setFontSizeIndex(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mFontSizeIndex:I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setHint()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportBubbleViewPinchZoom()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBubbleFontSize()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_1
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHintRes(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    return-void
.end method

.method public setImageAndKeyListener(Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const v8, 0x7f0b021d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v8, 0x7f0b021e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v8, 0x7f0b021f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0b0220

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020058

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_1
    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_2

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, p1, v6}, Lcom/android/mms/ui/MmsRichContainer;->calcParams(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v8, 0x1

    const v9, 0x7f0b021e

    invoke-virtual {v0, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    new-instance v8, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v8, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v8, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v8, "Mms/MmsRichContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLastElementFocus(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1    # Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    instance-of v3, v1, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public setLocationAndKeyListener(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    const/16 v8, 0xe

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocussedLocationView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v6, 0x7f0b0222

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x7f0b0223

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0b0224

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v6, 0x7f0b0225

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0227

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0200eb

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    invoke-direct {v6, p0, v8, p5}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v6, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    invoke-direct {v6, p0, v8, p5}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    return-void

    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMMSLayout(Z)V
    .locals 2
    .param p1    # Z

    const-string v0, "Mms/MmsRichContainer"

    const-string v1, "setMMSLayout()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    return-void
.end method

.method public setOnSipUpListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/OnEventListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method public setPageDivider(I)V
    .locals 8
    .param p1    # I

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedPageDivierView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v3, 0x7f0b022d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer;->mPageDividerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-le v2, v7, :cond_0

    add-int/lit8 v3, p1, 0x1

    if-eq v3, v2, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPasteEvent(Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;)V
    .locals 0
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mPasteEvent:Lcom/android/mms/ui/ComposeMessageFragment$IClipboardDataPasteEventImpl;

    return-void
.end method

.method public setRichEditorAction(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .param p1    # Landroid/widget/TextView$OnEditorActionListener;

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method public setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Landroid/widget/EditText;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, p3}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/MmsRichContainer;->mTextColor:I

    return-void
.end method

.method public setVideoAndKeyListener(Landroid/net/Uri;I)V
    .locals 12
    .param p1    # Landroid/net/Uri;
    .param p2    # I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const v9, 0x7f0b021d

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v9, 0x7f0b021e

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00aa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v9, 0x7f0b021f

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v9, 0x7f0b0220

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9, p1}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020291

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/MmsRichContainer;->calcParams(Landroid/graphics/Bitmap;Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, 0x1

    const v10, 0x7f0b021e

    invoke-virtual {v1, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020255

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    new-instance v9, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v10, 0xb

    invoke-direct {v9, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v9, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;

    const/16 v10, 0xb

    invoke-direct {v9, p0, v10, p2}, Lcom/android/mms/ui/MmsRichContainer$ContentContextMenuListener;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v9, p0, Lcom/android/mms/ui/MmsRichContainer;->mDummyViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v9, "Mms/MmsRichContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OutOfMemoryError"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setWritingBuddy(Landroid/widget/EditText;Z)V
    .locals 2
    .param p1    # Landroid/widget/EditText;
    .param p2    # Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWritingBuddy()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/mms/ui/MessageUtils;->setMaximumLengthforWB(Landroid/widget/EditText;I)V

    new-instance v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    new-instance v1, Lcom/android/mms/ui/MmsRichContainer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsRichContainer$1;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V

    new-instance v1, Lcom/android/mms/ui/MmsRichContainer$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MmsRichContainer$2;-><init>(Lcom/android/mms/ui/MmsRichContainer;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->show()Z

    :cond_0
    return-void
.end method

.method public update(Lcom/android/mms/data/WorkingMessage;I)V
    .locals 19
    .param p1    # Lcom/android/mms/data/WorkingMessage;
    .param p2    # I

    const-string v2, "Mms/MmsRichContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(),type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v2, v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->addPage(I)V

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v15, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v11, v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    add-int/lit8 v2, v15, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    :goto_4
    packed-switch p2, :pswitch_data_0

    :goto_5
    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->hasContents(Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_3
    const/16 v2, 0x1e

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setAddAnimation()V

    :cond_4
    :goto_7
    return-void

    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getFormattedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getLocation()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/mms/model/LocationVcardModel;->getContactNumber()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MmsRichContainer;->setLocationAndKeyListener(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setImageAndKeyListener(Landroid/graphics/Bitmap;I)V

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setVideoAndKeyListener(Landroid/net/Uri;I)V

    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setAudioAndKeyListener(Ljava/lang/String;I)V

    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/mms/ui/MmsRichContainer;->getVisibleEditText(IZ)Landroid/widget/EditText;

    move-result-object v12

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v12, :cond_b

    new-instance v2, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;

    const/16 v3, 0xd

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v11}, Lcom/android/mms/ui/MmsRichContainer$MessageOnKey;-><init>(Lcom/android/mms/ui/MmsRichContainer;II)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr(Lcom/android/mms/model/SlideModel;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1, v11}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_9

    :cond_c
    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v11}, Lcom/android/mms/ui/MmsRichContainer;->setTextAndKeyListener(Landroid/widget/EditText;Ljava/lang/String;I)V

    goto :goto_9

    :cond_d
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    goto/16 :goto_4

    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setLastElementFocus(Landroid/view/ViewGroup;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/MmsRichContainer;->mHintResId:I

    if-nez v2, :cond_11

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_6

    :cond_12
    const/16 v2, 0x23

    move/from16 v0, p2

    if-ne v0, v2, :cond_13

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/mms/ui/MmsRichContainer;->setWeight(Landroid/view/View;F)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MmsRichContainer;->setPageDivider(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    :cond_13
    const/16 v2, 0x20

    move/from16 v0, p2

    if-ne v0, v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/MmsRichContainer;->isNeedToBlockTheKey:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    :cond_14
    const/16 v2, 0x22

    move/from16 v0, p2

    if-ne v0, v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto/16 :goto_7

    :cond_15
    const/16 v2, 0x1e

    move/from16 v0, p2

    if-eq v0, v2, :cond_16

    const/16 v2, 0x21

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->resetLayoutAttr()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MmsRichContainer;->getEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v8

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v18, :cond_17

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_a
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_7

    :cond_18
    invoke-static {v8}, Lcom/android/mms/util/UIUtils;->clearText(Landroid/widget/TextView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
