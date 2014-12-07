.class public Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSliderMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;
    }
.end annotation


# static fields
.field private static final BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_X:I

.field private static final BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_Y:I

.field private static final BEAUTYFACE_LEVEL_NUM_OF_STEP:I

.field private static final BEAUTYLEVEL_MENU_TYPE:I = 0x3

.field private static final BEAUTY_BUTTON_HEIGHT:I

.field private static final BEAUTY_BUTTON_WIDTH:I

.field private static final BEAUTY_MINUS_BUTTON_POS_X:I

.field private static final BEAUTY_MINUS_BUTTON_POS_Y:I

.field private static final BEAUTY_PLUS_BUTTON_POS_X:I

.field private static final BEAUTY_PLUS_BUTTON_POS_Y:I

.field private static final BEAUTY_SLIDEBAR_HEIGHT:I

.field private static final BEAUTY_SLIDEBAR_POS_X:I

.field private static final BEAUTY_SLIDEBAR_POS_Y:I

.field private static final BEAUTY_SLIDEBAR_WIDTH:I

.field private static final BEAUTY_TITLE_IMAGE_HEIGHT:I

.field private static final BEAUTY_TITLE_IMAGE_POS_X:I

.field private static final BEAUTY_TITLE_IMAGE_POS_Y:I

.field private static final BEAUTY_TITLE_IMAGE_WIDTH:I

.field private static final COMMON_INDICATOR_GROUP_HEIGHT:I

.field private static final COMMON_INDICATOR_GROUP_POS_X:[F

.field private static final COMMON_INDICATOR_GROUP_POS_Y:[F

.field private static final COMMON_INDICATOR_GROUP_WIDTH:I

.field private static final COMMON_INDICATOR_SYMBOL_HEIGHT:I

.field private static final COMMON_INDICATOR_SYMBOL_WIDTH:I

.field private static final COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

.field private static final COMMON_INDICATOR_VALUE_TEXT_WIDTH:I

.field private static final EXPOSURE_BUTTON_HEIGHT:I

.field private static final EXPOSURE_BUTTON_WIDTH:I

.field private static final EXPOSURE_MENU_TYPE:I = 0x1

.field private static final EXPOSURE_MINUS_BUTTON_POS_X:I

.field private static final EXPOSURE_MINUS_BUTTON_POS_Y:I

.field private static final EXPOSURE_PLUS_BUTTON_POS_X:I

.field private static final EXPOSURE_PLUS_BUTTON_POS_Y:I

.field private static final EXPOSURE_SLIDEBAR_HEIGHT:I

.field private static final EXPOSURE_SLIDEBAR_POS_X:I

.field private static final EXPOSURE_SLIDEBAR_POS_Y:I

.field private static final EXPOSURE_SLIDEBAR_WIDTH:I

.field private static final EXPOSURE_VALUE_NUM_OF_STEP:I

.field private static final EXPOSURE_VALUE_OFFSET:I

.field private static final GAUGE_BALL_SELECT_AREA_HEIGHT:F

.field private static final GAUGE_BALL_SELECT_AREA_WIDTH:F

.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

.field private static final SLIDEBAR_TOUCH_AREA_HEIGHT:I

.field private static final SLIDEBAR_TOUCH_AREA_WIDTH:I

.field private static final SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

.field private static final SLIDE_BEAUTYFACE_GROUP_POS_X:I

.field private static final SLIDE_BEAUTYFACE_GROUP_POS_Y:I

.field private static final SLIDE_BEAUTYFACE_GROUP_WIDTH:I

.field private static final SLIDE_GROUP_HEIGHT:I

.field private static final SLIDE_GROUP_POS_X:I

.field private static final SLIDE_GROUP_POS_Y:I

.field private static final SLIDE_GROUP_WIDTH:I

.field private static final ZOOM_BUTTON_HEIGHT:I

.field private static final ZOOM_BUTTON_WIDTH:I

.field private static final ZOOM_INDICATOR_TEXT_FONT_SIZE:I

.field private static final ZOOM_MENU_TYPE:I = 0x2

.field private static final ZOOM_MINUS_BUTTON_POS_X:I

.field private static final ZOOM_MINUS_BUTTON_POS_Y:I

.field private static final ZOOM_NUM_OF_STEP:I

.field private static final ZOOM_PLUS_BUTTON_POS_X:I

.field private static final ZOOM_PLUS_BUTTON_POS_Y:I

.field private static final ZOOM_SLIDEBAR_HEIGHT:I

.field private static final ZOOM_SLIDEBAR_POS_X:I

.field private static final ZOOM_SLIDEBAR_POS_Y:I

.field private static final ZOOM_SLIDEBAR_WIDTH:I

.field private static final ZOOM_TEXT_SHADOW:Z

.field private static final ZOOM_TEXT_STROKE_COLOR:I

.field private static final ZOOM_TEXT_STROKE_WIDTH:I

.field private static final ZOOM_VALUE_TEXT_FONT_SIZE:I


# instance fields
.field private mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCommonLevelText:Lcom/sec/android/glview/TwGLText;

.field private mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

.field private mEVSliderBackground:Lcom/sec/android/glview/TwGLImage;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMinusButton:Lcom/sec/android/glview/TwGLButton;

.field protected mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

.field mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

.field private mPlusButton:Lcom/sec/android/glview/TwGLButton;

.field private mSlider:Lcom/sec/android/glview/TwGLSlider;

.field private mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

.field private mTitleButton:Lcom/sec/android/glview/TwGLButton;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v6, [F

    const v3, 0x7f090134

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v1

    const v3, 0x7f090135

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v0

    const v3, 0x7f090136

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f090137

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v5

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_X:[F

    new-array v2, v6, [F

    const v3, 0x7f090138

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v1

    const v3, 0x7f090139

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v0

    const v3, 0x7f09013a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v4

    const v3, 0x7f09013b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    aput v3, v2, v5

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_Y:[F

    const v2, 0x7f09013c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_X:I

    const v2, 0x7f09013d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_Y:I

    const v2, 0x7f09013e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_WIDTH:I

    const v2, 0x7f09013f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    const v2, 0x7f090142

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_WIDTH:I

    const v2, 0x7f090143

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_HEIGHT:I

    const v2, 0x7f090140

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_WIDTH:I

    const v2, 0x7f090141

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    const v2, 0x7f09012c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_X:I

    const v2, 0x7f09012d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_Y:I

    const v2, 0x7f09012e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    const v2, 0x7f09012f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    const v2, 0x7f090130

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_X:I

    const v2, 0x7f090131

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_Y:I

    const v2, 0x7f090132

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_WIDTH:I

    const v2, 0x7f090133

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

    const v2, 0x7f090144

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_X:I

    const v2, 0x7f090145

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    const v2, 0x7f090146

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_WIDTH:I

    const v2, 0x7f090147

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_HEIGHT:I

    const v2, 0x7f090148

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_X:I

    const v2, 0x7f090149

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    const v2, 0x7f09014a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_WIDTH:I

    const v2, 0x7f09014b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_HEIGHT:I

    const v2, 0x7f09014c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_X:I

    const v2, 0x7f09014d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_Y:I

    const v2, 0x7f09014e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_WIDTH:I

    const v2, 0x7f09014f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_HEIGHT:I

    const v2, 0x7f090150

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    const v2, 0x7f090151

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    const v2, 0x7f090152

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    const v2, 0x7f090153

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    const v2, 0x7f09015a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_X:I

    const v2, 0x7f09015b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_Y:I

    const v2, 0x7f09015c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_X:I

    const v2, 0x7f09015d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_Y:I

    const v2, 0x7f09015e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_WIDTH:I

    const v2, 0x7f09015f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_HEIGHT:I

    const v2, 0x7f0a0003

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    const v2, 0x7f0a0004

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    const v2, 0x7f090154

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_X:I

    const v2, 0x7f090155

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_Y:I

    const v2, 0x7f090156

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_X:I

    const v2, 0x7f090157

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_Y:I

    const v2, 0x7f090158

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_WIDTH:I

    const v2, 0x7f090159

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_HEIGHT:I

    const v2, 0x7f090160

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_X:I

    const v2, 0x7f090161

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_Y:I

    const v2, 0x7f090162

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_X:I

    const v2, 0x7f090163

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_Y:I

    const v2, 0x7f090158

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_WIDTH:I

    const v2, 0x7f090159

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_HEIGHT:I

    const v2, 0x7f090164

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_X:I

    const v2, 0x7f090165

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_Y:I

    const v2, 0x7f090166

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_WIDTH:I

    const v2, 0x7f090167

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_HEIGHT:I

    const v2, 0x7f0a0040

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    const v2, 0x7f0a0041

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_INDICATOR_TEXT_FONT_SIZE:I

    const v2, 0x7f0a001d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    const/high16 v2, 0x7f080000

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    const v2, 0x7f0a0024

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    const v0, 0x7f0a0005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_NUM_OF_STEP:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 10

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setCaptureEnabled(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setInternalFocus(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202cf

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_X:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_POS_Y:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    invoke-virtual {p4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :sswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202d1

    const v7, 0x7f0202d0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_NUM_OF_STEP:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v1, 0x7f0203cd

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider;->setGaugeMarker(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeZeroStep(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSlider;->expandTouchAreaFromCenter(FF)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0x7f02007b

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mEVSliderBackground:Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_PLUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020079

    const v7, 0x7f02007a

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRepeatClickWhenLongClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_MINUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020077

    const v7, 0x7f020078

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xe11

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRepeatClickWhenLongClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mEVSliderBackground:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "0"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_PLUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202d4

    const v7, 0x7f0202d5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x17d4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRepeatClickWhenLongClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_MINUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202d2

    const v7, 0x7f0202d3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x17d5

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRepeatClickWhenLongClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202d1

    const v7, 0x7f0202d0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_NUM_OF_STEP:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v1, 0x7f0203cd

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider;->setGaugeMarker(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSlider;->expandTouchAreaFromCenter(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "x"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_INDICATOR_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_SYMBOL_WIDTH:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, "1.0"

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonSymbolText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :sswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDE_BEAUTYFACE_GROUP_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202cf

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatch;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroupBackground:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_TITLE_IMAGE_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02001f

    const v7, 0x7f020020

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b011d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_PLUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f02001b

    const v7, 0x7f02001c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x19c8

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRepeatClickWhenLongClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_MINUS_BUTTON_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f020019

    const v7, 0x7f02001a

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0x19c9

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRepeatClickWhenLongClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTY_SLIDEBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0202d1

    const v7, 0x7f0202d0

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_NUM_OF_STEP:I

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLSlider;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    const v1, 0x7f0203cd

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->GAUGE_BALL_SELECT_AREA_HEIGHT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider;->setGaugeMarker(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->SLIDEBAR_TOUCH_AREA_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLSlider;->expandTouchAreaFromCenter(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSliderGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->BEAUTYFACE_LEVEL_INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->COMMON_INDICATOR_VALUE_TEXT_HEIGHT:I

    int-to-float v5, v5

    const-string v6, ""

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_TEXT_SHADOW:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonIndicatorGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x6d -> :sswitch_2
        0xbc5 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLSlider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/glview/TwGLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->hideBeautyMenu()V

    :cond_1
    return v2
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 6

    const/high16 v5, 0x3f800000

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1
    move v1, v2

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    :cond_3
    move v1, v2

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    :cond_5
    move v1, v2

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_8
    move v1, v2

    goto/16 :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_b
    move v1, v2

    goto/16 :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_e
    move v1, v2

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    if-lez v0, :cond_f

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_11
    move v1, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x51 -> :sswitch_0
        0xe10 -> :sswitch_1
        0xe11 -> :sswitch_2
        0x17d4 -> :sswitch_3
        0x17d5 -> :sswitch_4
        0x19c8 -> :sswitch_5
        0x19c9 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getCurrentStep()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLSlider;->getNumOfStep()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLSlider;->moveStep(I)Z

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    :cond_8
    :goto_2
    move v1, v2

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    sub-int v3, v0, v3

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;->onExposureValueMenuSelect(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isDualFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;->onBeautyLevelMenuSelect(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method protected onShow()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->refreshMenuPosition()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLSlider;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioZoom()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f020017

    const v3, 0x7f020018

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f02000f

    const v3, 0x7f020010

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0202d4

    const v3, 0x7f0202d5

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    const v2, 0x7f0202d2

    const v3, 0x7f0202d3

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_2

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$6;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v0

    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exposure : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_VALUE_OFFSET:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setExposureValueText()V

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v0

    const-string v1, "MenuBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getZoomValue()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mSlider:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLSlider;->setGaugeBarSize()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setBeautyFaceImage(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x6d -> :sswitch_2
        0xbc5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public refreshMenuPosition()V
    .locals 5

    const v4, 0x7f090015

    const/high16 v3, 0x40000000

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mId:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->moveLayoutAbsolute(FF)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mPlusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mMinusButton:Lcom/sec/android/glview/TwGLButton;

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setOrientation(I)V

    :cond_2
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->EXPOSURE_SLIDEBAR_POS_Y:I

    int-to-float v1, v1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v1, v1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getTop()F

    move-result v1

    div-float/2addr v1, v3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->ZOOM_SLIDEBAR_POS_Y:I

    int-to-float v1, v1

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v0, v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
        0x6d -> :sswitch_2
        0xbc5 -> :sswitch_1
    .end sparse-switch
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setBeautyFaceImage(I)V
    .locals 5

    const v4, 0x7f0b0032

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001f

    const v2, 0x7f020020

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b011d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    const v1, 0x7f02001d

    const v2, 0x7f02001e

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mTitleButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v3, 0x7f0b011e

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExposureValueText()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValue()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposureValueResourceString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v1, "0"

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mCommonLevelText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setOnBeautyLevelChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnBeautyLevelChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;

    return-void
.end method

.method public setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnExposureValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;

    return-void
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;

    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
