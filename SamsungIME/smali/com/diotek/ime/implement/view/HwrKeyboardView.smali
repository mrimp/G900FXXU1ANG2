.class public Lcom/diotek/ime/implement/view/HwrKeyboardView;
.super Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
.source "HwrKeyboardView.java"


# instance fields
.field private DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

.field private mDefaultCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKeyLabelSize:I

.field private final mDefaultSymbolFixedValues:[Ljava/lang/String;

.field private mEnterKeyLabelSize:I

.field private mHorizontalLine:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

.field private mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

.field private mKeySettingIcon:Landroid/graphics/drawable/Drawable;

.field private mKeySplitIcon:Landroid/graphics/drawable/Drawable;

.field private mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

.field private final mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValues:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

.field private final mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

.field private mLefttArrow:Landroid/graphics/drawable/Drawable;

.field private mLongPressableIcon:Landroid/graphics/drawable/Drawable;

.field private mMonthKeyNumberLabelSize:I

.field private mMonthKeyTextLabelSize:I

.field private mNextPageKeyLabelSize:I

.field private mPreviewBg:Landroid/graphics/drawable/Drawable;

.field private mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

.field private mPreviewMinWidth:I

.field private mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

.field private mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

.field private mQwertyNonExtraLabelKeyOffsetY:I

.field private mRangeKeyLabelSize:I

.field private mRightArrow:Landroid/graphics/drawable/Drawable;

.field private mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKeyLanguageLabelSize:I

.field private mSymbolKeyLabelSize:I

.field private mSymbolPageNumberLabelSize:I

.field private mVerticalLine:Landroid/graphics/drawable/Drawable;

.field private mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

.field private mYearDateTimeKeyLabelSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u061f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u060c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uff0c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "\uff01"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\uff1f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3001"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ","

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultSymbolFixedValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, "-"

    aput-object v1, v0, v5

    const-string v1, "@"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I

    iput v3, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u061f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u060c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uff0c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "\uff01"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\uff1f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u3001"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-"

    aput-object v1, v0, v3

    const-string v1, "@"

    aput-object v1, v0, v4

    const-string v1, "\'"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ","

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "!"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultSymbolFixedValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":"

    aput-object v1, v0, v3

    const-string v1, "/"

    aput-object v1, v0, v4

    const-string v1, "-"

    aput-object v1, v0, v5

    const-string v1, "@"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->init()V

    return-void
.end method

.method private getDotComPopupKeyboardGap()F
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const-string v1, "floating_handwriting_dotcom_popup_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "handwriting_dotcom_popup_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/high16 v1, 0x41a00000

    goto :goto_0
.end method

.method private getFloatingMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Landroid/content/res/Resources;
    .param p3    # Z

    const v11, 0x7f0201af

    const v10, 0x7f020737

    const v9, 0x7f020730

    const v8, 0x7f0205a4

    const v7, 0x7f0205a2

    const/4 v2, 0x0

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_0
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_1
    :goto_0
    return-object v2

    :pswitch_1
    if-eqz p3, :cond_2

    :try_start_0
    const-string v6, "floating_qwerty_key_icon_hwr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const v6, 0x7f020722

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v6, "floating_qwerty_key_icon_hwr_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    const v6, 0x7f02071c

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_3

    :try_start_2
    const-string v6, "floating_qwerty_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    :try_start_3
    const-string v6, "floating_qwerty_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_4

    :try_start_4
    const-string v6, "floating_qwerty_key_icon_keyboard_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_4
    :try_start_5
    const-string v6, "floating_qwerty_key_icon_keyboard_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_5

    :try_start_6
    const-string v6, "floating_qwerty_key_icon_voice_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    goto :goto_0

    :catch_6
    move-exception v0

    const v6, 0x7f020788

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_5
    :try_start_7
    const-string v6, "floating_qwerty_key_icon_voice_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto :goto_0

    :catch_7
    move-exception v0

    const v6, 0x7f020785

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    if-eqz p3, :cond_6

    :try_start_8
    const-string v6, "floating_qwerty_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v2

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v6, 0x7f020761

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    :try_start_9
    const-string v6, "floating_qwerty_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v6, 0x7f02075f

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_6
    if-eqz p3, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_a
    const-string v6, "floating_qwerty_key_icon_clipboard_center_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const-string v6, "floating_qwerty_key_icon_clipboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v2

    goto/16 :goto_0

    :catch_a
    move-exception v0

    if-eqz v3, :cond_8

    :try_start_b
    const-string v6, "qwerty_key_icon_clipboard_center_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v2

    goto/16 :goto_0

    :catch_b
    move-exception v1

    const v6, 0x7f0206fc

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const v6, 0x7f0206fc

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    :try_start_c
    const-string v6, "floating_qwerty_key_icon_clipboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v2

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const v6, 0x7f0206f5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_7
    if-eqz p3, :cond_a

    :try_start_d
    const-string v6, "floating_qwerty_key_icon_ocr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v2

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const v6, 0x7f02074e

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    :try_start_e
    const-string v6, "floating_qwerty_key_icon_ocr_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v2

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const v6, 0x7f02074b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_8
    if-eqz p3, :cond_b

    :try_start_f
    const-string v6, "floating_qwerty_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v2

    goto/16 :goto_0

    :catch_f
    move-exception v0

    invoke-virtual {p2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    :try_start_10
    const-string v6, "floating_qwerty_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v2

    goto/16 :goto_0

    :catch_10
    move-exception v0

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_9
    if-eqz p3, :cond_c

    :try_start_11
    const-string v6, "floating_qwerty_key_icon_floating_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v2

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const v6, 0x7f02074e

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    :try_start_12
    const-string v6, "floating_qwerty_key_icon_floating_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v2

    goto/16 :goto_0

    :catch_12
    move-exception v0

    const v6, 0x7f020717

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_a
    if-eqz p3, :cond_d

    const v6, 0x7f0201bd

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    :try_start_13
    const-string v6, "floating_qwerty_key_icon_emoticon_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v2

    goto/16 :goto_0

    :catch_13
    move-exception v0

    const v6, 0x7f0201ba

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_b
    if-eqz p3, :cond_e

    const-string v6, "floating_qwerty_key_icon_chinesecharacter_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    :try_start_14
    const-string v6, "floating_qwerty_key_icon_chinesecharacter_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :catch_14
    move-exception v0

    invoke-virtual {p2, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    if-eqz p3, :cond_10

    :try_start_15
    const-string v6, "floating_qwerty_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    goto/16 :goto_0

    :catch_15
    move-exception v0

    const v6, 0x7f020761

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    :try_start_16
    const-string v6, "floating_qwerty_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v2

    goto/16 :goto_0

    :catch_16
    move-exception v0

    const v6, 0x7f02075f

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    packed-switch v5, :pswitch_data_1

    :pswitch_c
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_1d

    :try_start_17
    const-string v6, "floating_phonepad_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_2b

    move-result-object v2

    goto/16 :goto_0

    :pswitch_d
    if-eqz p3, :cond_12

    :try_start_18
    const-string v6, "floating_phonepad_key_icon_hwr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result-object v2

    goto/16 :goto_0

    :catch_17
    move-exception v0

    const v6, 0x7f020598

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    :try_start_19
    const-string v6, "floating_phonepad_key_icon_hwr_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result-object v2

    goto/16 :goto_0

    :catch_18
    move-exception v0

    const v6, 0x7f020593

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_e
    if-eqz p3, :cond_13

    :try_start_1a
    const-string v6, "floating_phonepad_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result-object v2

    goto/16 :goto_0

    :catch_19
    move-exception v0

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    :try_start_1b
    const-string v6, "floating_phonepad_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result-object v2

    goto/16 :goto_0

    :catch_1a
    move-exception v0

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_f
    if-eqz p3, :cond_14

    :try_start_1c
    const-string v6, "floating_phonepad_key_icon_voice_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result-object v2

    goto/16 :goto_0

    :catch_1b
    move-exception v0

    const v6, 0x7f0205fb

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_14
    :try_start_1d
    const-string v6, "floating_phonepad_key_icon_voice_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result-object v2

    goto/16 :goto_0

    :catch_1c
    move-exception v0

    const v6, 0x7f0205f9

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_10
    if-eqz p3, :cond_15

    :try_start_1e
    const-string v6, "floating_phonepad_key_icon_settings_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result-object v2

    goto/16 :goto_0

    :catch_1d
    move-exception v0

    const v6, 0x7f0205dd

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    :try_start_1f
    const-string v6, "floating_phonepad_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result-object v2

    goto/16 :goto_0

    :catch_1e
    move-exception v0

    const v6, 0x7f0205d8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_11
    if-eqz p3, :cond_16

    :try_start_20
    const-string v6, "floating_phonepad_key_icon_clipboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result-object v2

    goto/16 :goto_0

    :catch_1f
    move-exception v0

    const v6, 0x7f020585

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    :try_start_21
    const-string v6, "floating_phonepad_key_icon_clipboard"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result-object v2

    goto/16 :goto_0

    :catch_20
    move-exception v0

    const v6, 0x7f020582

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_12
    if-eqz p3, :cond_17

    :try_start_22
    const-string v6, "floating_phonepad_key_icon_ocr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_21

    move-result-object v2

    goto/16 :goto_0

    :catch_21
    move-exception v0

    const v6, 0x7f0205ba

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    :try_start_23
    const-string v6, "floating_phonepad_key_icon_ocr"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_22

    move-result-object v2

    goto/16 :goto_0

    :catch_22
    move-exception v0

    const v6, 0x7f0205b7

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_13
    if-eqz p3, :cond_18

    :try_start_24
    const-string v6, "floating_phonepad_key_icon_keyboard_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result-object v2

    goto/16 :goto_0

    :catch_23
    move-exception v0

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_18
    :try_start_25
    const-string v6, "floating_phonepad_key_icon_keyboard_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result-object v2

    goto/16 :goto_0

    :catch_24
    move-exception v0

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_14
    if-eqz p3, :cond_19

    :try_start_26
    const-string v6, "floating_phonepad_key_icon_keyboard_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result-object v2

    goto/16 :goto_0

    :catch_25
    move-exception v0

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_19
    :try_start_27
    const-string v6, "floating_phonepad_key_icon_keyboard_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result-object v2

    goto/16 :goto_0

    :catch_26
    move-exception v0

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_15
    if-eqz p3, :cond_1a

    :try_start_28
    const-string v6, "floating_phonepad_key_icon_floating_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result-object v2

    goto/16 :goto_0

    :catch_27
    move-exception v0

    const v6, 0x7f0205ba

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    :try_start_29
    const-string v6, "floating_phonepad_key_icon_floating"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result-object v2

    goto/16 :goto_0

    :catch_28
    move-exception v0

    const v6, 0x7f0205b7

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_16
    if-eqz p3, :cond_1b

    const v6, 0x7f0201bd

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    :try_start_2a
    const-string v6, "floating_qwerty_key_icon_emoticon_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result-object v2

    goto/16 :goto_0

    :catch_29
    move-exception v0

    const v6, 0x7f0201ba

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_17
    if-eqz p3, :cond_1c

    const-string v6, "floating_qwerty_key_icon_chinesecharacter_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1c
    :try_start_2b
    const-string v6, "floating_qwerty_key_icon_chinesecharacter_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result-object v2

    goto/16 :goto_0

    :catch_2a
    move-exception v0

    invoke-virtual {p2, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :catch_2b
    move-exception v0

    const v6, 0x7f0205dd

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1d
    :try_start_2c
    const-string v6, "floating_phonepad_key_icon_settings_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2c

    move-result-object v2

    goto/16 :goto_0

    :catch_2c
    move-exception v0

    const v6, 0x7f0205d8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_b
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x89
        :pswitch_17
        :pswitch_13
        :pswitch_16
        :pswitch_c
        :pswitch_14
        :pswitch_c
        :pswitch_15
        :pswitch_c
        :pswitch_c
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_11
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private getKeyExceptionIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Z

    const/16 v12, -0x79

    const v11, 0x7f0208f3

    const/4 v10, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Sip_Normal_Longpressable_Icon"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    :try_start_0
    const-string v7, "floating_sip_key_icon_longpressable"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_1

    :try_start_1
    const-string v7, "floating_sip_key_icon_longpressable_voice"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_2

    :try_start_2
    const-string v7, "floating_sip_key_icon_longpressable_setting"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    :try_start_3
    const-string v7, "sip_key_icon_longpressable_question_xml"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_4

    :try_start_4
    const-string v7, "floating_sip_key_icon_longpressable_question"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    iget-object v7, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v7, v7, v10

    const/16 v8, -0x75

    if-ne v7, v8, :cond_10

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v5

    const/16 v7, -0x78

    if-eq v5, v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_5
    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    :cond_6
    :goto_6
    iget-object v7, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v7, v7, v10

    const/16 v8, -0xe2

    if-ne v7, v8, :cond_7

    if-eqz p2, :cond_16

    :try_start_5
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "sip_button_longpress_press"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    :cond_7
    :goto_7
    if-eqz v2, :cond_8

    iget v7, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v9

    invoke-virtual {v2, v7, v10, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_8
    return-object v2

    :catch_0
    move-exception v0

    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableVoiceForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :catch_2
    move-exception v0

    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    :catch_4
    move-exception v0

    iget-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_a
    if-eq v5, v12, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v7, v8, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v6

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_8
    array-length v7, v6

    if-ge v1, v7, :cond_b

    aget v7, v6, v1

    if-ne v7, v12, :cond_c

    const/4 v3, 0x1

    :cond_b
    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableSettingForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_e
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_f
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_10
    iget-object v7, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v7, v7, v10

    const/16 v8, -0x7a

    if-ne v7, v8, :cond_5

    if-nez v4, :cond_5

    iget-boolean v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->enableSecondarySymbol()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_11
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_12
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestionForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_13
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableQuestion:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_6

    :cond_15
    :try_start_6
    const-string v7, "sip_button_longpress_normal"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_7

    :cond_16
    const-string v7, "sip_button_longpress_dim"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v2

    goto/16 :goto_7

    :catch_5
    move-exception v0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v7

    if-eqz v7, :cond_17

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mIconLongpressableForPopupKeyboard:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_7
.end method

.method private getKeyPreviewWidth(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)I
    .locals 8
    .param p1    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    const v7, 0x7f0901de

    const/16 v6, 0x8

    const v5, 0x7f0901db

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "qwerty_key_preview_extra_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v1, v3

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int/2addr v3, v1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_9

    const/4 v1, 0x0

    :try_start_1
    const-string v3, "qwerty_key_preview_extra_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v3

    float-to-int v1, v3

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int/2addr v3, v1

    goto :goto_0

    :sswitch_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HD:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_2
    const v3, 0x7f0901df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_3
    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_4
    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_5
    const v3, 0x7f0901e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_6
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_4

    :try_start_2
    const-string v3, "floating_qwerty_key_preview_default_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_4
    :try_start_3
    const-string v3, "preview_space_language_max_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :try_start_4
    const-string v3, "qwerty_key_preview_extra_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    float-to-int v1, v3

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_6

    :try_start_5
    const-string v3, "floating_qwerty_key_preview_default_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :sswitch_8
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    :try_start_6
    const-string v3, "qwerty_key_preview_extra_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v3

    float-to-int v1, v3

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int/2addr v3, v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_8

    :try_start_7
    const-string v3, "floating_qwerty_key_preview_range_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_7
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_a

    :try_start_8
    const-string v3, "floating_qwerty_key_preview_default_width"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_8
    move-exception v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xbe -> :sswitch_8
        -0x7e -> :sswitch_5
        -0x7b -> :sswitch_2
        -0x73 -> :sswitch_5
        -0x72 -> :sswitch_4
        -0x71 -> :sswitch_3
        -0x6e -> :sswitch_1
        -0x6d -> :sswitch_8
        -0x6a -> :sswitch_7
        -0x69 -> :sswitch_7
        -0x66 -> :sswitch_0
        0xa -> :sswitch_2
        0x20 -> :sswitch_6
    .end sparse-switch
.end method

.method private getLanguageChangeKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Landroid/content/res/Resources;
    .param p3    # Z

    const/4 v2, 0x0

    iget v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v7, -0x10000

    and-int v3, v6, v7

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_0

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p3, :cond_4

    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_2

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :try_start_0
    const-string v6, "phonepad_key_icon_floating_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const-string v6, "phonepad_key_icon_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    const-string v6, "phonepad_key_icon_floating_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v6, "phonepad_key_icon_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const v6, 0x7f0205a5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v6, "phonepad_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    const v6, 0x7f0205a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_b

    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7

    :try_start_2
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "qwerty_key_icon_floating_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v6, "qwerty_key_icon_floating_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_7
    const-string v6, "qwerty_key_icon_language_kr_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_8
    const/16 v6, 0x8

    if-ne v5, v6, :cond_a

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "qwerty_key_icon_floating_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_9
    const-string v6, "qwerty_key_icon_floating_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_a
    const-string v6, "qwerty_key_icon_language_en_selected"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_0

    :catch_2
    move-exception v0

    const v6, 0x7f02073a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    :try_start_3
    const-string v6, "qwerty_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const v6, 0x7f02073b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    :try_start_4
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v6

    if-eqz v6, :cond_e

    if-eqz p3, :cond_d

    const-string v6, "floating_qwerty_key_icon_language_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const-string v6, "floating_qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    if-eqz p3, :cond_f

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_1a

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-eqz v6, :cond_14

    if-eqz p3, :cond_12

    :try_start_5
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "phonepad_key_icon_oh_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    const-string v6, "phonepad_key_icon_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const v6, 0x7f0205a5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    :try_start_6
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "phonepad_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    const-string v6, "phonepad_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v6, 0x7f0205a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_14
    if-eqz p3, :cond_18

    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_16

    :try_start_7
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "phonepad_key_icon_oh_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    const-string v6, "phonepad_key_icon_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "phonepad_key_icon_oh_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    const-string v6, "phonepad_key_icon_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v6, 0x7f0205a5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_18
    :try_start_8
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_19

    const-string v6, "phonepad_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_19
    const-string v6, "phonepad_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v2

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v6, 0x7f0205a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    if-nez p3, :cond_1b

    :try_start_9
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    const v6, 0x7f0205a8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1c
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_25

    const/16 v6, 0x8

    if-ne v5, v6, :cond_25

    const/4 v6, 0x1

    if-eq v1, v6, :cond_1d

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1d

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1d

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1d

    const/high16 v6, 0x656e0000

    if-ne v3, v6, :cond_25

    :cond_1d
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v6

    if-nez v6, :cond_25

    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_22

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    if-eqz v4, :cond_1f

    if-eqz p3, :cond_1e

    :try_start_a
    const-string v6, "phonepad_key_icon_floating_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v2

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v6, 0x7f0205a5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1e
    :try_start_b
    const-string v6, "phonepad_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v2

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const v6, 0x7f0205a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1f
    if-eqz p3, :cond_21

    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_20

    :try_start_c
    const-string v6, "phonepad_key_icon_floating_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_20
    const-string v6, "phonepad_key_icon_floating_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v2

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const v6, 0x7f0205a5

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_21
    :try_start_d
    const-string v6, "phonepad_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v2

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const v6, 0x7f0205a6

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_22
    if-nez p3, :cond_23

    :try_start_e
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v2

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_23
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_24

    const/16 v6, 0x8

    if-ne v5, v6, :cond_24

    :try_start_f
    const-string v6, "floating_phonepad_key_icon_language_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v2

    goto/16 :goto_0

    :catch_f
    move-exception v0

    const v6, 0x7f0205a8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_24
    const v6, 0x7f0205a8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_25
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v6, :cond_38

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v6

    if-eqz v6, :cond_38

    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-eqz v6, :cond_2c

    if-eqz p3, :cond_29

    :try_start_10
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "qwerty_key_icon_oh_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_26
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_27

    const/16 v6, 0x8

    if-ne v5, v6, :cond_27

    const-string v6, "qwerty_key_icon_floating_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_27
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_28

    iget v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_28

    const-string v6, "handwriting_key_icon_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_28
    const-string v6, "qwerty_key_icon_language_no_selected_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v2

    goto/16 :goto_0

    :catch_10
    move-exception v0

    const v6, 0x7f02073a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_29
    :try_start_11
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string v6, "qwerty_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2a
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_2b

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2b

    const-string v6, "qwerty_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2b
    const-string v6, "qwerty_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v2

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const v6, 0x7f02073b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2c
    if-eqz p3, :cond_34

    const/high16 v6, 0x6b6f0000

    if-ne v3, v6, :cond_30

    :try_start_12
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "qwerty_key_icon_oh_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2d
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_2e

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2e

    const-string v6, "qwerty_key_icon_floating_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2e
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_2f

    const-string v6, "handwriting_key_icon_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2f
    const-string v6, "qwerty_key_icon_language_kr_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_30
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_31

    const-string v6, "qwerty_key_icon_oh_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_31
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_32

    const/16 v6, 0x8

    if-ne v5, v6, :cond_32

    const-string v6, "qwerty_key_icon_floating_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_32
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_33

    const-string v6, "handwriting_key_icon_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_33
    const-string v6, "qwerty_key_icon_language_en_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v2

    goto/16 :goto_0

    :catch_12
    move-exception v0

    const v6, 0x7f02073a

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_34
    :try_start_13
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v6

    if-eqz v6, :cond_35

    const-string v6, "qwerty_key_icon_oh_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_35
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_36

    const/16 v6, 0x8

    if-ne v5, v6, :cond_36

    const-string v6, "qwerty_key_icon_floating_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_36
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_37

    const-string v6, "handwriting_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_37
    const-string v6, "qwerty_key_icon_language_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v2

    goto/16 :goto_0

    :catch_13
    move-exception v0

    const v6, 0x7f02073b

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_38
    if-nez p3, :cond_3a

    :try_start_14
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_39

    const-string v6, "handwriting_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_39
    const-string v6, "qwerty_key_icon_language_change_dim"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :catch_14
    move-exception v0

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_3a
    iget-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v6, :cond_3b

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3b

    :try_start_15
    const-string v6, "floating_qwerty_key_icon_language_change_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    goto/16 :goto_0

    :catch_15
    move-exception v0

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_3b
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_3c

    :try_start_16
    const-string v6, "handwriting_key_icon_language_xml"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v2

    goto/16 :goto_0

    :catch_16
    move-exception v0

    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_3c
    const v6, 0x7f02073d

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getLanguageChangeKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Landroid/content/res/Resources;

    const v6, 0x7f0206a2

    const/4 v1, 0x0

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, -0x10000

    and-int v2, v4, v5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isLanguageEnKoOnKorMode()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x6b6f0000

    if-ne v2, v4, :cond_1

    :try_start_0
    const-string v4, "preview_qwerty_key_icon_language_kr"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v4, "preview_qwerty_key_icon_language_en"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private getMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Landroid/content/res/Resources;
    .param p3    # Z

    const v9, 0x7f020761

    const v8, 0x7f02075f

    const v7, 0x7f0206fc

    const v6, 0x7f020737

    const v5, 0x7f020730

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz p3, :cond_d

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :pswitch_1
    if-eqz p3, :cond_0

    const v4, 0x7f020722

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v4, "qwerty_key_icon_hwr_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const v4, 0x7f02071c

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_1

    :try_start_1
    const-string v4, "hwr_key_icon_keyboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v4, "hwr_icon_ime_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v4, "qwerty_key_icon_keyboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    if-eqz p3, :cond_2

    :try_start_4
    const-string v4, "hwr_key_icon_keyboard_change_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_5
    const-string v4, "hwr_icon_keyboard_change_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_6
    const-string v4, "qwerty_key_icon_keyboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v2

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_3

    :try_start_7
    const-string v4, "hwr_key_icon_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v2

    goto :goto_0

    :catch_7
    move-exception v0

    const v4, 0x7f020788

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    :try_start_8
    const-string v4, "hwr_icon_voice_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v2

    goto :goto_0

    :catch_8
    move-exception v0

    :try_start_9
    const-string v4, "qwerty_key_icon_voice_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v2

    goto/16 :goto_0

    :catch_9
    move-exception v1

    const v4, 0x7f020785

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_5
    if-eqz p3, :cond_4

    :try_start_a
    const-string v4, "hwr_key_icon_settings_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v2

    goto/16 :goto_0

    :catch_a
    move-exception v0

    invoke-virtual {p2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    :try_start_b
    const-string v4, "hwr_key_icon_setting_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v2

    goto/16 :goto_0

    :catch_b
    move-exception v0

    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_6
    if-eqz p3, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_c
    const-string v4, "qwerty_key_icon_clipboard_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v2

    goto/16 :goto_0

    :catch_c
    move-exception v0

    :try_start_d
    const-string v4, "hwr_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v2

    goto/16 :goto_0

    :catch_d
    move-exception v1

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    :try_start_e
    const-string v4, "hwr_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v2

    goto/16 :goto_0

    :catch_e
    move-exception v0

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    :try_start_f
    const-string v4, "hwr_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v2

    goto/16 :goto_0

    :catch_f
    move-exception v0

    :try_start_10
    const-string v4, "qwerty_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v2

    goto/16 :goto_0

    :catch_10
    move-exception v1

    const v4, 0x7f0206f5

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_7
    if-eqz p3, :cond_7

    const-string v4, "hwr_key_icon_ocr_xml"

    const v5, 0x7f02074e

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOCRIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    :try_start_11
    const-string v4, "hwr_key_icon_ocr_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v2

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const-string v4, "qwerty_key_icon_ocr_dim"

    const v5, 0x7f02074b

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOCRIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_8
    if-eqz p3, :cond_8

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    :try_start_12
    const-string v4, "qwerty_key_icon_keyboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v2

    goto/16 :goto_0

    :catch_12
    move-exception v0

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_9
    if-eqz p3, :cond_9

    :try_start_13
    const-string v4, "hwr_key_icon_floating_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result-object v2

    goto/16 :goto_0

    :catch_13
    move-exception v0

    const v4, 0x7f02071a

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    :try_start_14
    const-string v4, "hwr_key_icon_floating_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :catch_14
    move-exception v0

    :try_start_15
    const-string v4, "qwerty_key_icon_floating_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v2

    goto/16 :goto_0

    :catch_15
    move-exception v1

    const v4, 0x7f020717

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_a
    if-eqz p3, :cond_a

    const v4, 0x7f020781

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    :try_start_16
    const-string v4, "qwerty_key_icon_split_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v2

    goto/16 :goto_0

    :catch_16
    move-exception v0

    const v4, 0x7f02077e

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_b
    if-eqz p3, :cond_b

    const v4, 0x7f0202b3

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    :try_start_17
    const-string v4, "hwr_icon_emoticon_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_17

    move-result-object v2

    goto/16 :goto_0

    :catch_17
    move-exception v0

    const v4, 0x7f020287

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_c
    if-eqz p3, :cond_c

    const-string v4, "hwr_key_icon_chinesecharacter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    :try_start_18
    const-string v4, "hwr_key_icon_chinesecharacter_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_18

    move-result-object v2

    goto/16 :goto_0

    :catch_18
    move-exception v0

    const v4, 0x7f0206f1

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMMKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Landroid/content/res/Resources;

    const v6, 0x7f0206aa

    const v5, 0x7f0206a1

    const/4 v1, 0x0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v4

    if-eqz v4, :cond_0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    const-string v4, "preview_hwr_icon_setting"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_1
    return-object v1

    :pswitch_2
    :try_start_1
    const-string v4, "preview_hwr_icon_ime"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    :try_start_2
    const-string v4, "preview_hwr_icon_voice"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    const v4, 0x7f0206b4

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    :try_start_3
    const-string v4, "preview_hwr_icon_setting"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    :try_start_4
    const-string v4, "preview_hwr_icon_clipboard"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    goto :goto_0

    :catch_3
    move-exception v0

    const v4, 0x7f0206d6

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    :try_start_5
    const-string v4, "preview_hwr_icon_ocr"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    goto :goto_0

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    :try_start_6
    const-string v4, "preview_hwr_icon_floating"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    goto :goto_0

    :catch_5
    move-exception v0

    const v4, 0x7f02069d

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x85
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRangeChangeIcon(Z)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Z

    const/4 v4, 0x2

    const/high16 v3, 0x6b6f0000

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "floating_key_icon_handwriting_current_input_korean_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "floating_key_icon_handwriting_current_input_korean_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v2, "floating_key_icon_handwriting_current_input_english_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "floating_key_icon_handwriting_current_input_english_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-ne v2, v4, :cond_5

    if-eqz p1, :cond_4

    const-string v2, "floating_qwerty_key_icon_hwr_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v2, "floating_qwerty_key_icon_hwr_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const-string v2, "floating_key_icon_handwriting_current_input_number_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_6
    const-string v2, "floating_key_icon_handwriting_current_input_number_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v3, :cond_9

    if-eqz p1, :cond_8

    const-string v2, "vohwr_key_icon_handwriting_current_input_korean_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_8
    const-string v2, "vohwr_key_icon_handwriting_current_input_korean_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_a

    const-string v2, "vohwr_key_icon_handwriting_current_input_english_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_a
    const-string v2, "vohwr_key_icon_handwriting_current_input_english_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v3, :cond_d

    if-eqz p1, :cond_c

    const-string v2, "sip_key_icon_handwriting_current_input_korean_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_c
    const-string v2, "sip_key_icon_handwriting_current_input_korean_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    if-eqz p1, :cond_e

    const-string v2, "sip_key_icon_handwriting_current_input_english_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_e
    const-string v2, "sip_key_icon_handwriting_current_input_english_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-ne v2, v4, :cond_11

    if-eqz p1, :cond_10

    const-string v2, "sip_key_icon_handwriting_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    const-string v2, "sip_icon_handwriting_dim"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz p1, :cond_12

    const-string v2, "vohwr_key_icon_handwriting_current_input_number_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    const-string v2, "vohwr_key_icon_handwriting_current_input_number_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_13
    if-eqz p1, :cond_14

    const-string v2, "sip_key_icon_handwriting_current_input_number_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_14
    const-string v2, "sip_key_icon_handwriting_current_input_number_d"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private getRangeChangePreviewIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/high16 v4, 0x6b6f0000

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v4, :cond_1

    const-string v2, "vohwr_preview_handwriting_current_input_korean"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const-string v2, "vohwr_preview_handwriting_current_input_english"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    if-ne v2, v4, :cond_3

    const-string v2, "preview_handwriting_current_input_korean"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v2, "preview_handwriting_current_input_english"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "vohwr_preview_handwriting_current_input_number"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v2, "preview_handwriting_current_input_number"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide v8, 0x3fe999999999999aL

    const/4 v7, 0x0

    const v6, 0x7f0208f3

    iput v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeyboardViewType:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const v4, 0x7f0901d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    const v4, 0x7f0901d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    const v4, 0x7f0901d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    :try_start_0
    const-string v4, "preview_min_width"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    :cond_0
    :goto_1
    const v4, 0x7f0901d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    const v4, 0x7f090223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    const v4, 0x7f090224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    const v4, 0x7f090227

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    const v4, 0x7f09019b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    const v4, 0x7f09019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    const v4, 0x7f0901a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    :try_start_1
    const-string v4, "qwerty_non_extralabelkey_offset_y"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v4, :cond_1

    :try_start_2
    const-string v4, "hwr_key_icon_longpressable_setting_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    const-string v4, "hwr_key_icon_longpressableforpopup_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    const-string v4, "hwr_key_icon_longpressable_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    :try_start_3
    const-string v4, "sip_key_icon_longpressable_setting_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    :try_start_4
    const-string v4, "sip_key_icon_longpressableforpopup_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_5
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    :try_start_5
    const-string v4, "sip_key_icon_longpressable_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_6
    return-void

    :catch_0
    move-exception v1

    iput v10, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewMinWidth:I

    goto/16 :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    array-length v4, v4

    if-le v4, v11, :cond_0

    iget v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    int-to-double v4, v4

    mul-double/2addr v4, v8

    double-to-int v4, v4

    iput v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iput v10, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    goto :goto_2

    :catch_2
    move-exception v0

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSettingLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVoiceLongPressableIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_6
.end method

.method private isPopupKeyboard()Z
    .locals 2

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSymbolPopupPageNum()Ljava/lang/CharSequence;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v1
.end method


# virtual methods
.method protected adjustGestureGuideText(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const v3, 0x7f08003e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f08003f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "popup_hwr_gesture_sub_enter_text1"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    :try_start_1
    const-string v3, "popup_hwr_gesture_sub_enter_text2"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method protected drawCurrentInputRange(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const v4, 0x7f0d0118

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    :pswitch_1
    if-eqz v3, :cond_0

    const v4, 0x7f0b000e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    const v4, 0x7f0901da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v5, "SAMSUNGSANS_KEYPAD"

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v4, 0x7f0900da

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f0900db

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :pswitch_2
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x6b6f0000

    if-ne v4, v5, :cond_1

    const v4, 0x7f0d0120

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x61720000

    if-ne v4, v5, :cond_2

    const v4, 0x7f0d0121

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x66610000

    if-ne v4, v5, :cond_3

    const v4, 0x7f0d0122

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x75720000

    if-ne v4, v5, :cond_4

    const v4, 0x7f0d0123

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x69770000

    if-ne v4, v5, :cond_5

    const v4, 0x7f0d0124

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_6

    const v4, 0x7f0d0129

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f0d011f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const v4, 0x7f0d011e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawExceptionBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Paint;
    .param p3    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p4    # Z

    return-void
.end method

.method protected drawExceptionIcon(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Paint;
    .param p3    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p4    # Z

    invoke-direct {p0, p3, p4}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeyExceptionIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/diotek/ime/framework/view/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method protected drawExceptionLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Paint;
    .param p3    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    return-void
.end method

.method protected drawKeyExtraLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;Z)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    const/high16 v8, 0x40000000

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, v0, p2, p4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setShadowLayer(Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ua"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-float v3, v1

    const v4, 0x3f99999a

    mul-float/2addr v3, v4

    float-to-int v1, v3

    :cond_0
    int-to-float v3, v1

    iget v4, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, p3, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v7, v7, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawKeyExtraLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected drawKeyLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;ZZ)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p3    # Ljava/lang/String;
    .param p4    # Z
    .param p5    # Z

    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090225

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    int-to-float v7, v3

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {p1, p3, v7, v8, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v7, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x6e

    if-eq v7, v8, :cond_1

    iget-object v7, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x137

    if-ne v7, v8, :cond_5

    :cond_1
    const/4 v4, 0x0

    const-string v7, "\n"

    invoke-virtual {p3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move/from16 v0, p5

    invoke-virtual {p0, v2, p2, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setShadowLayer(Landroid/graphics/Paint;Lcom/diotek/ime/framework/view/Keyboard$Key;Z)V

    const/4 v6, 0x0

    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    :try_start_0
    const-string v7, "floating_hwr_range_key_label_size"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    float-to-int v6, v7

    :goto_1
    int-to-float v7, v6

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v7, 0x0

    aget-object v7, v4, v7

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3f0a3d71

    mul-float/2addr v9, v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {p1, v7, v8, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    :try_start_1
    const-string v7, "floating_hwr_range_key_second_label_size"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    float-to-int v6, v7

    :goto_2
    int-to-float v7, v6

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v7, 0x1

    aget-object v7, v4, v7

    iget v8, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iget v9, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget v9, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3f0a3d71

    mul-float/2addr v9, v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {p1, v7, v8, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget v6, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    goto :goto_2

    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawKeyLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_5
    invoke-super/range {p0 .. p5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->drawKeyLabel(Landroid/graphics/Canvas;Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method protected getAccessibilityDescription(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 9
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const v8, 0x7f0d018a

    const v7, 0x7f0d0189

    const v6, 0x7f0d019e

    const v5, 0x7f0d0192

    const v4, 0x7f0d01a0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getNextInputLanguageName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d019f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_15
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "?"

    goto/16 :goto_0

    :cond_1
    const-string v1, "."

    goto/16 :goto_0

    :sswitch_16
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "!"

    goto/16 :goto_0

    :cond_2
    const-string v1, ","

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "-"

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3ee -> :sswitch_1e
        -0x3ed -> :sswitch_1d
        -0x3eb -> :sswitch_1
        -0x3ea -> :sswitch_1c
        -0x3e9 -> :sswitch_1b
        -0x3e8 -> :sswitch_19
        -0x19a -> :sswitch_4
        -0x190 -> :sswitch_4
        -0xe5 -> :sswitch_1a
        -0xe4 -> :sswitch_18
        -0x88 -> :sswitch_13
        -0x87 -> :sswitch_12
        -0x85 -> :sswitch_f
        -0x84 -> :sswitch_11
        -0x83 -> :sswitch_10
        -0x80 -> :sswitch_e
        -0x7d -> :sswitch_9
        -0x7c -> :sswitch_16
        -0x7a -> :sswitch_15
        -0x79 -> :sswitch_c
        -0x78 -> :sswitch_d
        -0x77 -> :sswitch_a
        -0x76 -> :sswitch_b
        -0x75 -> :sswitch_8
        -0x6e -> :sswitch_14
        -0x6c -> :sswitch_6
        -0x66 -> :sswitch_7
        -0x64 -> :sswitch_3
        -0x5 -> :sswitch_0
        0xa -> :sswitch_2
        0x20 -> :sswitch_5
        0x2d -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x88
        :pswitch_6
        :pswitch_10
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected getAlternativeCharPopupColumCount(Ljava/lang/StringBuilder;)I
    .locals 5
    .param p1    # Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v0, v2, :cond_0

    div-int/lit8 v3, v0, 0x2

    rem-int/lit8 v4, v0, 0x2

    add-int v1, v3, v4

    :cond_0
    return v1
.end method

.method protected getAlternativeChars(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 1
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # Z

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getSortAlternativeChars(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected getArmenianUpperCaseLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getArrowPositionY()I
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "floating_handwriting_space_key_arrow_top_margin"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getCMSymbolPopupFixedValues()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCandidateViewHeight()I
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "popup_candidate_view_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const-string v1, "candidate_view_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCjiTurboKeyExtraLabelCode(I)I
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    return v0
.end method

.method protected getColorIdByIndex(I)I
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f0b0024

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of pen color index error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - set default color blue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0b0022

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0023

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b0024

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b0025

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0b0026

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getCommaSymbolPopupFixedValues()[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ";"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "!"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getCurrentUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;IZ)Ljava/lang/StringBuilder;
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2    # I
    .param p3    # Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCurrentUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;IZ)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultCandidateList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getDefaultSymbolFixedValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultCandidateList:Ljava/util/ArrayList;

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getDefaultSymbolFixedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultSymbolFixedValues:[Ljava/lang/String;

    return-object v0
.end method

.method protected getDialogTheme()I
    .locals 1

    const/high16 v0, 0x7f0e0000

    return v0
.end method

.method protected getDisableFunctionKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Z

    const v2, 0x7f0208b9

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "handwriting_key_bg_option"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    const-string v1, "sip_key_bg_option_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDisableKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Z

    const v2, 0x7f0208a8

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "sip_key_bg_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "sip_key_bg_normal_qwerty"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_2
    const-string v1, "btn_keyboard_key_normal_f"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDisableKeyLabelColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getDomainPopupRowItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1
.end method

.method protected getDomainPopupStringValues()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDotComKeyPopupResId()I
    .locals 4

    const v1, 0x7f0501f6

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :try_start_0
    const-string v2, "floating_popup_domain_keyboard"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getDotSymbolPopupFixedValues()[Ljava/lang/String;
    .locals 3

    const/4 v1, 0x6

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "?"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getEmoticonPopupKeyLabel()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLatelyUsedEmoticonText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ":-)"

    goto :goto_0
.end method

.method protected getEmoticonPopupKeyboardId()I
    .locals 1

    const v0, 0x7f0501f7

    return v0
.end method

.method protected getEmptyShortcutsGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f080039

    return v0
.end method

.method protected getEmptyShortcutsGuideDialogContent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0301

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmptyShortcutsGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0300

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmptyShortcutsGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f03002d

    return v0
.end method

.method protected getExtraLabelPositionX(Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;)I
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method protected getExtraLabelPositionY(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatingKeyboardHeight()I
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :try_start_1
    const-string v1, "floating_month_keyboard_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "floating_keyboard_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const-string v1, "handwriting_floating_panel_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFloatingKeyboardLeftEdge()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatingKeyboardMoveButtonWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFloatingKeyboardWidth()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "floating_keyboard_width"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "handwriting_floating_panel_width"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    float-to-int v1, v2

    :cond_0
    :goto_1
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected getFloatingQwertyKeyIconOffsetY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getFocusedKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_key_bg_focused"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getFont(I)Landroid/graphics/Typeface;
    .locals 4
    .param p1    # I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/FontManager;->getSystemFont()Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v2, "SAMSUNGSANS_KEYPAD"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v2, "ROBOTO_KEYPAD_MEDIUM"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFunctionKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0208c2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "sip_key_bg_option_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFunctionKeyBackgroundForQwerty()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0208c2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "sip_key_bg_option_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getFunctionKeyHoverBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_key_bg_option_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getFunctionKeyLabelColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getFunctionKeyShadowColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getGestureGuideCheckBoxRscId()I
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080040

    goto :goto_0
.end method

.method protected getGestureGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getGestureGuideLayoutRscId()I
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030030

    goto :goto_0
.end method

.method protected getHorizontalLine()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020633

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mHorizontalLine:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getHoverLayoutRscId()I
    .locals 1

    const v0, 0x7f030016

    return v0
.end method

.method protected getHwrPanelGap()I
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getHwrSymPoupBtnLabelPressedColor()I
    .locals 3

    :try_start_0
    const-string v1, "hwr_sympopup_pressed_labelcolor"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getHwrSymbolPopupButtonBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Z

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "handwriting_popup_btn_bg_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "sip_hwr_sympopup_btn_bg_xml"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0208c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getInvisibleKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Z
    .param p3    # Z

    const/4 v5, 0x2

    :try_start_0
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v3, v4

    const/16 v3, -0x6b

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0208a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/16 v3, 0xa

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    if-nez v3, :cond_2

    if-eqz p3, :cond_1

    const-string v3, "handwriting_enter_btn_hover"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "handwriting_enter_btn_bg"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletNoteMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isEnterButtonDefaultBule()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "handwriting_next_enter_key_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v3, "handwriting_key_bg_normal_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    const-string v3, "handwriting_key_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WQXGA:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v3, :cond_c

    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v5, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0208b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_7
    const/16 v3, -0x6d

    if-eq v1, v3, :cond_8

    const/16 v3, -0xbe

    if-ne v1, v3, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0208c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p2, :cond_a

    const-string v3, "handwriting_key_bg_normal_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    const-string v3, "handwriting_btn_bg_01"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_c
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v5, :cond_f

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    if-eqz p3, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyHoverBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_f
    if-eqz p2, :cond_10

    const-string v3, "handwriting_key_bg_normal_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_10
    const-string v3, "handwriting_btn_bg"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_11
    invoke-super {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected getKeyDrawingType(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v0, v0, v4

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getKeyExtraLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyExtraLabelColor(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPressedKeyLabelColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyLabelColor:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyExtraLabelFont()Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getKeyExtraLabelSize()F
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyTextLabelSize:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Z

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_14

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v2

    :sswitch_0
    if-eqz p2, :cond_1

    :try_start_1
    const-string v4, "floating_qwerty_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v4, "floating_qwerty_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const v4, 0x7f0206fc

    :try_start_2
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_14

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    :try_start_3
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    const v4, 0x7f020716

    :try_start_4
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_14

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_5
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    goto :goto_0

    :catch_2
    move-exception v0

    const v4, 0x7f020713

    :try_start_6
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_14

    move-result v4

    if-ne v4, v7, :cond_5

    if-eqz p2, :cond_4

    :try_start_7
    const-string v4, "floating_qwerty_key_icon_search_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v2

    goto :goto_0

    :catch_3
    move-exception v0

    const v4, 0x7f02075d

    :try_start_8
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_14

    move-result-object v2

    goto :goto_0

    :cond_4
    :try_start_9
    const-string v4, "floating_qwerty_key_icon_search"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v2

    goto :goto_0

    :catch_4
    move-exception v0

    const v4, 0x7f02075a

    :try_start_a
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_14

    move-result-object v2

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    :try_start_b
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v2

    goto :goto_0

    :catch_5
    move-exception v0

    const v4, 0x7f020716

    :try_start_c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    :try_start_d
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_6

    move-result-object v2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v4, 0x7f020713

    :try_start_e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_14

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p2, :cond_8

    :try_start_f
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_7

    move-result-object v2

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v4, 0x7f020716

    :try_start_10
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    :try_start_11
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_8

    move-result-object v2

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v4, 0x7f020713

    :try_start_12
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_14

    move-result v4

    if-ne v4, v7, :cond_b

    if-eqz p2, :cond_a

    :try_start_13
    const-string v4, "floating_qwerty_key_icon_search_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_9

    move-result-object v2

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v4, 0x7f02075d

    :try_start_14
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    :try_start_15
    const-string v4, "floating_qwerty_key_icon_search"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_a

    move-result-object v2

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v4, 0x7f02075a

    :try_start_16
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    if-eqz p2, :cond_c

    :try_start_17
    const-string v4, "floating_qwerty_key_icon_enter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_b

    move-result-object v2

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const v4, 0x7f020716

    :try_start_18
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    :try_start_19
    const-string v4, "floating_qwerty_key_icon_enter"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_c

    move-result-object v2

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const v4, 0x7f020713

    :try_start_1a
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getFloatingMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_3
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_d

    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getLanguageChangeKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    if-nez p2, :cond_0

    :try_start_1b
    const-string v4, "qwerty_key_icon_language_change_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_d

    move-result-object v2

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const v4, 0x7f02073b

    :try_start_1c
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDaMode()Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz p2, :cond_e

    const-string v4, "floating_qwerty_key_icon_space_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_e
    const-string v4, "floating_qwerty_key_icon_space_center"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_14

    move-result-object v4

    if-nez v4, :cond_11

    if-eqz p2, :cond_10

    :try_start_1d
    const-string v4, "floating_qwerty_key_icon_space_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_e

    move-result-object v2

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const v4, 0x7f02076f

    :try_start_1e
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_10
    const-string v4, "floating_qwerty_key_icon_space_center"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    if-eqz p2, :cond_12

    :try_start_1f
    const-string v4, "floating_qwerty_key_icon_space_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_f

    move-result-object v2

    goto/16 :goto_0

    :catch_f
    move-exception v0

    const v4, 0x7f02077d

    :try_start_20
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    :try_start_21
    const-string v4, "floating_qwerty_key_icon_space"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_10

    move-result-object v2

    goto/16 :goto_0

    :catch_10
    move-exception v0

    const v4, 0x7f02077d

    :try_start_22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getRangeChangeIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-ne v4, v6, :cond_0

    if-eqz p2, :cond_13

    const-string v4, "hwr_symbol_mode_key_icon_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_13
    const-string v4, "handwriting_icon_text_d.png"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_7
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_14

    if-ne v4, v6, :cond_0

    if-eqz p2, :cond_14

    :try_start_23
    const-string v4, "floating_qwerty_key_icon_hwr_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_14
    const-string v4, "floating_qwerty_key_icon_hwr_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_11

    move-result-object v2

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const v4, 0x7f020722

    :try_start_24
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_8
    if-eqz p2, :cond_15

    const-string v4, "sip_floating_icon_arrow_l"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_15
    const-string v4, "sip_floating_icon_arrow_l_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_9
    if-eqz p2, :cond_16

    const-string v4, "sip_floating_icon_arrow_r"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_16
    const-string v4, "sip_floating_icon_arrow_r_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_17
    iget-object v4, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_a
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_14

    if-ne v4, v6, :cond_2e

    if-eqz p2, :cond_2d

    :try_start_25
    const-string v4, "qwerty_key_icon_hwr_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_13

    move-result-object v2

    goto/16 :goto_0

    :sswitch_b
    if-eqz p2, :cond_19

    :try_start_26
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "qwerty_key_icon_clipboard_center_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_18
    const v4, 0x7f0206fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_19
    const-string v4, "qwerty_key_icon_clipboard_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_12

    move-result-object v2

    goto/16 :goto_0

    :catch_12
    move-exception v0

    const v4, 0x7f0206fc

    :try_start_27
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_c
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz p2, :cond_1a

    const v4, 0x7f02023e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1a
    const v4, 0x7f02023c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v4

    if-ne v4, v7, :cond_1d

    if-eqz p2, :cond_1c

    const v4, 0x7f02075d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1c
    const v4, 0x7f02075a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1d
    if-eqz p2, :cond_1e

    const v4, 0x7f020716

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1e
    const v4, 0x7f020713

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_1f
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v4

    if-eqz v4, :cond_21

    if-eqz p2, :cond_20

    const v4, 0x7f02058d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_20
    const v4, 0x7f02058a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_21
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v4

    if-ne v4, v7, :cond_23

    if-eqz p2, :cond_22

    const v4, 0x7f0205d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_22
    const v4, 0x7f0205d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_23
    if-eqz p2, :cond_24

    const v4, 0x7f02058d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_24
    const v4, 0x7f02058a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getMMKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_e
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v4, :cond_26

    :cond_25
    invoke-direct {p0, p1, v3, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getLanguageChangeKeyIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_26
    if-nez p2, :cond_0

    const v4, 0x7f02073b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_f
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isDaMode()Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz p2, :cond_27

    const v4, 0x7f02076f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_27
    const v4, 0x7f02076b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_28
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    if-eqz p2, :cond_29

    const v4, 0x7f02076f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_29
    const v4, 0x7f02076b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2a
    if-eqz p2, :cond_2b

    const v4, 0x7f02077d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2b
    const v4, 0x7f02076a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0, p2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getRangeChangeIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :sswitch_11
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-ne v4, v6, :cond_0

    if-eqz p2, :cond_2c

    const-string v4, "hwr_symbol_mode_key_icon_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0

    :cond_2c
    const-string v4, "handwriting_icon_text_d.png"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_2d
    :try_start_28
    const-string v4, "sip_icon_handwriting_dim"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_13

    move-result-object v2

    goto/16 :goto_0

    :catch_13
    move-exception v0

    const v4, 0x7f020722

    :try_start_29
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_14

    move-result-object v2

    goto/16 :goto_0

    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_14
    move-exception v1

    const-string v4, "SamsungIME"

    const-string v5, "getKeyIcon() : return value not found exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ea -> :sswitch_9
        -0x3e9 -> :sswitch_8
        -0x137 -> :sswitch_7
        -0xe4 -> :sswitch_0
        -0x75 -> :sswitch_2
        -0x6e -> :sswitch_6
        -0x6c -> :sswitch_3
        -0x66 -> :sswitch_5
        0xa -> :sswitch_1
        0x20 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x137 -> :sswitch_a
        -0xe4 -> :sswitch_b
        -0x75 -> :sswitch_d
        -0x6e -> :sswitch_11
        -0x6c -> :sswitch_e
        -0x66 -> :sswitch_10
        0xa -> :sswitch_c
        0x20 -> :sswitch_f
    .end sparse-switch
.end method

.method protected getKeyLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x8d

    if-gt v2, v3, :cond_3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x98

    if-lt v2, v3, :cond_3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    add-int/lit16 v2, v2, 0x8d

    neg-int v0, v2

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x6d

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0xbe

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->makeSymbolsPageLabelString()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    const/16 v3, -0x66

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected getKeyLabelSize(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mMonthKeyNumberLabelSize:I

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mYearDateTimeKeyLabelSize:I

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_7

    :try_start_0
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const-string v1, "split_floating_number_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_3

    :try_start_1
    const-string v1, "floating_hwr_range_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTextFontSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mEnterKeyLabelSize:I

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTextFontSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v1

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSpaceKeyLanguageLabelSize:I

    goto :goto_0

    :sswitch_2
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUseGlobalKey()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v2, 0x6b6f0000

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    invoke-virtual {p0, p1, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTextFontSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto/16 :goto_0

    :sswitch_3
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRangeKeyLabelSize:I

    goto/16 :goto_0

    :sswitch_4
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_5

    :try_start_2
    const-string v1, "split_floating_range_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mNextPageKeyLabelSize:I

    goto/16 :goto_0

    :cond_6
    :try_start_3
    const-string v1, "split_floating_default_small_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x3eb

    if-ne v1, v2, :cond_9

    :cond_8
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v1, v4, :cond_c

    :cond_b
    const-string v1, "one_hand_qwerty_default_normal_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    :cond_c
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolPageNumberLabelSize:I

    goto/16 :goto_0

    :cond_d
    :try_start_4
    const-string v1, "qwerty_default_symbol_key_label_size"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mSymbolKeyLabelSize:I

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mDefaultKeyLabelSize:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eb -> :sswitch_4
        -0x3e8 -> :sswitch_4
        -0x137 -> :sswitch_3
        -0xe2 -> :sswitch_4
        -0xbe -> :sswitch_4
        -0x6f -> :sswitch_4
        -0x6e -> :sswitch_3
        -0x6d -> :sswitch_4
        -0x66 -> :sswitch_2
        0xa -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getKeyLongPressExtraLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getKeyPreviewHeight(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const v3, 0x7f0901dc

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :try_start_0
    const-string v1, "floating_qwerty_key_preview_default_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/diotek/ime/framework/view/PreviewController;->USE_TEXT_BALLOON_DRAWABLE:Z

    if-eqz v1, :cond_3

    const-string v1, "qwerty_key_preview_balloon_default_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "hwr_space_key_preview_default_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method protected getKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const v9, 0x7f0206ac

    const v8, 0x7f02069b

    const/4 v7, 0x2

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget-object v5, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-ne v5, v7, :cond_0

    :try_start_0
    const-string v5, "preview_hwr_icon_hwr"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_b

    move-result-object v3

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string v5, "preview_hwr_icon_backspace"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    const v5, 0x7f020699

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getIsNeedHwrEnterIconDrawing()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_2
    const-string v5, "preview_hwr_icon_enter"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    :try_start_3
    const-string v5, "preview_hwr_icon_search"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    goto :goto_0

    :catch_2
    move-exception v0

    const v5, 0x7f0206a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v5

    const/high16 v6, 0x40000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    :try_start_4
    const-string v5, "preview_hwr_icon_enter"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    :try_start_5
    const-string v5, "floating_preview_qwerty_key_icon_space"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v3

    goto :goto_0

    :catch_4
    move-exception v0

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_4
    const-string v5, "preview_hwr_icon_space"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    :try_start_6
    const-string v5, "preview_hwr_icon_space"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v3

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_4
    :try_start_7
    const-string v5, "preview_hwr_icon_setting"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v3

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v5, 0x7f0206aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_5
    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, p1, v4}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getLanguageChangeKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    :try_start_8
    const-string v5, "preview_hwr_icon_language"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v3

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v5, 0x7f0206a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_6
    :try_start_9
    const-string v5, "preview_hwr_icon_clipboard"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result-object v3

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_a
    const-string v5, "qwerty_icon_clipboard_bubble"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result-object v3

    goto/16 :goto_0

    :catch_9
    move-exception v1

    const/4 v3, 0x0

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0, p1, v4}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getMMKeyPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getRangeChangePreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_9
    :try_start_b
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-ne v5, v7, :cond_0

    const-string v5, "handwriting_icon_text_bubble"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result-object v3

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_b
    move-exception v1

    const v5, 0x7f02069f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x137 -> :sswitch_0
        -0xe4 -> :sswitch_6
        -0x75 -> :sswitch_7
        -0x6e -> :sswitch_9
        -0x6c -> :sswitch_5
        -0x66 -> :sswitch_8
        -0x64 -> :sswitch_4
        -0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getKeyPreviewWidth(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-static {p1}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getKeyPreviewWidth(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)I

    move-result v0

    return v0
.end method

.method protected getKeyPreviewXPosition(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # I

    iget v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getKeyPreviewYPosition(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # I

    iget v0, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getPreviewOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getKeySecondaryCharacter(Lcom/diotek/ime/framework/view/Keyboard$Key;)C
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x0

    return v0
.end method

.method protected getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;
    .locals 7
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const v6, 0x7f0d011c

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEditorEnterAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v3, 0x7f0d0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v3, 0x7f0d0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v3, 0x7f0d0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x66

    if-ne v3, v4, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x6b6f0000

    if-ne v3, v4, :cond_2

    const v3, 0x7f0d0120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x61720000

    if-ne v3, v4, :cond_3

    const v3, 0x7f0d0121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x66610000

    if-ne v3, v4, :cond_4

    const v3, 0x7f0d0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x75720000

    if-ne v3, v4, :cond_5

    const v3, 0x7f0d0123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x69770000

    if-ne v3, v4, :cond_6

    const v3, 0x7f0d0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x74680000

    if-ne v3, v4, :cond_7

    const v3, 0x7f0d0129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f0d011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const v3, 0x7f0d011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    if-nez v1, :cond_9

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    const v3, 0x7f0d0118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    if-nez v1, :cond_a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const v3, 0x7f0d0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x6e

    if-eq v3, v4, :cond_0

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x6d

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->makeSymbolsPageLabelString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WQXGA:Z

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0x137

    if-ne v3, v4, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0138

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeySpecialLabel(Lcom/diotek/ime/framework/view/Keyboard$Key;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected getKeyboardHideIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02071b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyboardHidePreviewIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "preview_qwerty_key_icon_hide"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getKeypadBackground()Landroid/graphics/drawable/Drawable;
    .locals 7

    const v6, 0x7f02078d

    const/4 v0, 0x0

    :try_start_0
    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02078d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02078d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_2

    :try_start_1
    const-string v4, "sip_floating_keypad_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02078d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02078d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v4, "qwerty_keypad_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-eqz v4, :cond_5

    :try_start_3
    const-string v4, "floating_vohwr_keypad_bg"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020a0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020a0c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x9

    if-eq v3, v4, :cond_8

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02078d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected getLabelShiftDistance(Lcom/diotek/ime/framework/view/Keyboard$Key;Ljava/lang/String;[I)V
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # Ljava/lang/String;
    .param p3    # [I

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    array-length v1, p3

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v0, v4, :cond_1

    aput v3, p3, v3

    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getExtraLabelPositionY(Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    aput v1, p3, v4

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_0

    aput v3, p3, v3

    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getExtraLabelPositionY(Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    aput v1, p3, v4

    goto :goto_0
.end method

.method protected getLanguageArrowGap()I
    .locals 3

    :try_start_0
    const-string v2, "handwriting_space_language_arrow_gap"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLanguageSelectDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLatelySymbolPopupDefaultValues()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLatelySymbolPopupFixedValues()[Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelyArabicSymbolPopupFixedValues:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForKoreaNewGUI:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForChinese:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v1, 0x6a610000

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValuesForJapanese:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLatelySymbolPopupFixedValues:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected getLatelyUsedSymbolPopupRowItemCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method protected getLeftArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    const v3, 0x7f020773

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "floating_qwerty_key_icon_space_left_arrow_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mLefttArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getLineCountPopupKeyboard(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)[I
    .locals 12
    .param p1    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v0, v7, [I

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    :try_start_0
    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x301

    if-eq v7, v8, :cond_0

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/16 v8, -0x302

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v7}, Lcom/diotek/ime/framework/util/Utils;->isIndoChineseLanguage(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v7}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v7, v9, :cond_8

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getCurrentUmlautString()Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    :cond_1
    if-le v6, v9, :cond_7

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ge v3, v6, :cond_5

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v0, v7

    :goto_0
    const/4 v7, 0x0

    aget v7, v0, v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    aget v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    div-int v7, v6, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    add-int/lit8 v8, v8, 0x1

    rem-int v8, v6, v8

    add-int v4, v7, v8

    const/4 v7, 0x1

    add-int/lit8 v8, v4, -0x1

    aput v8, v0, v7

    :cond_2
    :goto_1
    return-object v0

    :sswitch_0
    const/4 v7, 0x0

    const v8, 0x7f0a000a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x1

    const v8, 0x7f0a0009

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    aput v8, v0, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "SamsungIME"

    const-string v8, "getLineCountPopupKeyboard() : return value not found exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "qwerty_emoticons_popup_horizontal_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "qwerty_emoticons_popup_vertical_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    goto :goto_1

    :sswitch_2
    const/4 v7, 0x0

    const-string v8, "qwerty_quick_symbol_popup_horizontal_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "qwerty_quick_symbol_popup_vertical_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    goto :goto_1

    :sswitch_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v0, v7

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMultimodalKeyIncludesCMSymbol()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getCMSymbolPopupFixedValues()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v0, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getCMSymbolPopupFixedValues()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v10, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v9, v10, v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v0, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v10, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v8, v9, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aput v8, v0, v7

    goto/16 :goto_1

    :sswitch_5
    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-eq v7, v9, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_4
    iget v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v8, 0x6b6f0000

    if-ne v7, v8, :cond_2

    iget-object v7, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    array-length v7, v7

    if-lt v7, v9, :cond_2

    const/4 v7, 0x0

    const-string v8, "qwerty_quick_symbol_popup_horizontal_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "qwerty_quick_symbol_popup_vertical_line_count"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v8

    aput v8, v0, v7

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v0, v7

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x1

    add-int/lit8 v8, v6, -0x1

    aput v8, v0, v7
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7c -> :sswitch_3
        -0x7b -> :sswitch_1
        -0x7a -> :sswitch_2
        -0x75 -> :sswitch_4
        -0x74 -> :sswitch_0
        -0x72 -> :sswitch_0
        0x2e -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method protected getModeChangePopoupKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_dialog_full_holo_dark"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardFloatingButtonRscId()I
    .locals 2

    :try_start_0
    const-string v1, "popup_keyboard_floating"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardFloatingButtonRscId(I)I
    .locals 2
    .param p1    # I

    :try_start_0
    const-string v1, "popup_keyboard_floating"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardLayoutRscId()I
    .locals 2

    :try_start_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isUsedSplitKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "popup_modechange_layout"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "popup_not_split_modechange_layout"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v1, "popup_not_split_modechange_layout"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardOnehandButtonRscId()I
    .locals 2

    :try_start_0
    const-string v1, "popup_keyboard_onehand"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardQwertyButtonRscId()I
    .locals 2

    :try_start_0
    const-string v1, "popup_keyboard_qwerty"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupKeyboardSplitButtonRscId()I
    .locals 2

    :try_start_0
    const-string v1, "popup_keyboard_split"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopoupQwertyKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_select_keypad_type_qwerty_focus"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopupFloatingKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_select_keypad_type_floating_focus"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopupOnehandKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_select_keypad_type_onehand_focus"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getModeChangePopupSplitKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMovableSignColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getMoveHandlerHeight()I
    .locals 2

    :try_start_0
    const-string v1, "popup_candidate_view_handler_height"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMovingGuideAnimationDrawbleRscId()I
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f08005a

    goto :goto_0
.end method

.method protected getMultiModalPopupKeyboardKeyIcons([I)[Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # [I

    const v10, 0x7f020651

    const v9, 0x7f02064d

    const v8, 0x7f02064a

    const v7, 0x7f020647

    const v6, 0x7f02065e

    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    array-length v4, p1

    new-array v2, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    :try_start_0
    const-string v4, "floating_popup_key_icon_hwr_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    :try_start_1
    const-string v4, "floating_popup_key_icon_keyboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    :try_start_2
    const-string v4, "floating_popup_key_icon_keyboard_change_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_6

    :try_start_3
    const-string v4, "floating_popup_key_icon_voice_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    :try_start_4
    const-string v4, "floating_popup_key_icon_settings_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    :try_start_5
    const-string v4, "floating_popup_key_icon_clipboard_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_9

    const-string v4, "floating_popup_key_icon_ocr_xml"

    const v5, 0x7f020664

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOCRIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_a

    :try_start_6
    const-string v4, "floating_popup_key_icon_floating_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_a
    :goto_6
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_b

    :try_start_7
    const-string v4, "floating_popup_key_icon_emoticon_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_b
    :goto_7
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_c

    :try_start_8
    const-string v4, "floating_popup_key_icon_chinesecharacter_xml"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_c
    :goto_8
    const/4 v1, 0x0

    :goto_9
    array-length v4, p1

    if-ge v1, v4, :cond_1

    aget v4, p1, v1

    packed-switch v4, :pswitch_data_0

    :goto_a
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020656

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020675

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02066e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_7

    :catch_8
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    :cond_d
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020656

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    :cond_e
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    :cond_f
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02065c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    :cond_10
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020675

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    :cond_11
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02066e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    :cond_12
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    :cond_13
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/plugin/ocr/OCRHelper;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020664

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    :cond_14
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    :cond_15
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    :cond_16
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020672

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    :cond_17
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    :pswitch_1
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHwrIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardChangeIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyVoiceIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_5
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySettingIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_6
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyClipboardIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_7
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyOcrIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :cond_18
    const-string v4, "SamsungIME"

    const-string v5, "Skip set a drawable of OCR icon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_8
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyKeyboardIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_9
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyFloatingIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_a
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeySplitIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_b
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyEmoticonIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    :pswitch_c
    iget-object v4, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mKeyHanjaIcon:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v1

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getNextEnterKeyLabelColor()I
    .locals 3

    :try_start_0
    const-string v1, "handwriting_next_enter_text_color"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getNextEnterKeyShadowDistanceY()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getNextEnterKeyShadowLabelColor()I
    .locals 3

    :try_start_0
    const-string v1, "hwr_functionkey_shadowcolor"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getNonExtraLabelKeyOffsetY(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WSVGA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mQwertyNonExtraLabelKeyOffsetY:I

    goto :goto_0
.end method

.method protected getNormalKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0208b0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "sip_key_bg_normal_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getNormalKeyBackgroundForQwerty()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0208b0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "sip_key_bg_normal_xml_01"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getNormalKeyHoverBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    const-string v1, "sip_key_bg_hover"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNormalKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getNormalKeyLabelColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getNormalKeyShadowColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getNumberKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNumberKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyHoverBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFunctionKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getOneHandGuideAnimationDrawbleRscId()I
    .locals 1

    const v0, 0x7f080060

    return v0
.end method

.method protected getOneHandKeyboardFirstHorizontalGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getOneHandLeftRightViewWidth(Z)I
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    return v0
.end method

.method protected getOneHandedGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f080061

    return v0
.end method

.method protected getOneHandedGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOneHandedGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f03003c

    return v0
.end method

.method protected getPenDetectionGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f080062

    return v0
.end method

.method protected getPenDetectionGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPenDetectionGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f03003e

    return v0
.end method

.method protected getPhonePadShadowDistanceY()F
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v0, :cond_3

    const-string v0, "LIGHT_SIP_ONLY"

    const-string v1, "LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LIGHT_SIP_ONLY"

    const-string v1, "LIGHT_SIP_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x40000000

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40000000

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method protected getPhonepadArrowGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPhonepadExtraLabelColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPhonepadExtraLabelPressedColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPhoneticSpellKeyBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPinchZoomGuideAnimationDrawbleRscId()I
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f080059

    goto :goto_0
.end method

.method protected getPinchZoomGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPinchZoomGuideLayoutRscId()I
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03003f

    goto :goto_0
.end method

.method protected getPopupKeyboardPosX(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)I
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2    # I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    :goto_0
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    div-int/lit8 v4, v2, 0x2

    if-ge v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x6e

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v1, v3, 0x2

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int v1, v3, v4

    goto :goto_1

    :cond_2
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_1

    :cond_3
    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v1, v3, v4

    goto :goto_1
.end method

.method protected getPopupKeyboardPosY(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)I
    .locals 8
    .param p1    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2    # I

    const/16 v7, -0x6e

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v1, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->y:I

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos Y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getCurrentLocationY()I

    move-result v1

    :cond_1
    iget-object v2, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v2, v2, v6

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    add-int/2addr v1, v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget v2, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :goto_1
    iget-object v2, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    aget v2, v2, v6

    const/16 v3, -0x74

    if-ne v2, v3, :cond_7

    int-to-float v2, v1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getDotComPopupKeyboardGap()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    goto/16 :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_9

    :try_start_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "popup_keyboard_pos_y_offset"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x14

    goto/16 :goto_0

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, 0x14

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->DEBUG_ACCESSIBILITY_MAGNIFICATION:Z

    if-eqz v2, :cond_a

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magni On mMiniKeyboardContainer  getPaddingTop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMiniKeyboardContainer  getMeasuredHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMiniKeyboardContainer  getPaddingBottom : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Magni On , Relocate popup position posY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMiniKeyboardContainer  getPaddingBottom : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWindowOffset[1] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsLandscape:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    :cond_b
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowOffset:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iget v3, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v1, v1, 0x14

    goto/16 :goto_0
.end method

.method protected getPopupKeyboardRscId()I
    .locals 3

    const v1, 0x7f0501fe

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "popup_split_floating_template_keyboard"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getPopupKeyboardViewRscId()I
    .locals 1

    const v0, 0x7f08003c

    return v0
.end method

.method protected getPopupLayoutBackground(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1    # Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .param p2    # I

    const v8, 0x7f020630

    const v7, 0x7f02062e

    iget-boolean v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v4

    :goto_0
    iget v5, p1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    div-int/lit8 v6, v4, 0x2

    if-ge v5, v6, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    const-string v5, "sip_keyboard_floating_bubble_bg_right"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v5

    if-eqz v5, :cond_4

    :try_start_1
    const-string v5, "sip_keyboard_floating_bubble_bg_left"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02062c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method protected getPopupLayoutRscId()I
    .locals 1

    const v0, 0x7f030036

    return v0
.end method

.method protected getPressedKeyLabelColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPressedKeyShadowColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPreviewArrowGap()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewArrowPositionY()I
    .locals 3

    const v2, 0x7f0a000d

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "floating_preview_arrow_position_y"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPreviewBackgroung(Lcom/diotek/ime/framework/view/Keyboard$Key;II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # I
    .param p3    # I

    const v3, 0x7f020696

    const v2, 0x7f020692

    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "floating_preview_qwerty_key_bg_longpressable"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_1
    const-string v1, "floating_preview_qwerty_key_bg_normal"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->hasLongpressOperation(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBgLongpressable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewBg:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method protected getPreviewKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreviewKeyBottomPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPreviewLabelColor(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewLabelSize(Lcom/diotek/ime/framework/view/Keyboard$Key;)I
    .locals 10
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v9, 0x2

    const v8, 0x7f0901e6

    const v7, 0x7f0901e4

    const/16 v6, 0x8

    const v5, 0x7f0901e3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_8

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x74610000

    if-ne v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v9, :cond_6

    const v3, 0x7f09087c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    :goto_0
    return v3

    :sswitch_0
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0901e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_1
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v3, :cond_1

    const v3, 0x7f0901e5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_2
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    :cond_2
    :try_start_0
    const-string v3, "floating_key_preview_enter_label_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QVGA:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPreviewEnterLabelSize(Lcom/diotek/ime/framework/view/Keyboard$Key;I)I

    move-result v3

    goto :goto_0

    :sswitch_3
    const v3, 0x7f0901e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_4
    const v3, 0x7f0901e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :sswitch_5
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    if-ne v3, v6, :cond_5

    :try_start_1
    const-string v3, "floating_qwerty_key_preview_space_label_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :catch_1
    move-exception v0

    const v3, 0x7f0901ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_0

    :cond_5
    const v3, 0x7f0901ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :sswitch_6
    const v3, 0x7f0901e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_6
    :try_start_2
    const-string v3, "floating_key_preview_label_size_ta"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const v3, 0x7f0905bb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_7
    :try_start_3
    const-string v3, "floating_key_preview_default_label_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    const/high16 v4, 0x74610000

    if-ne v3, v4, :cond_b

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HVGA:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_QHD:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_b

    :cond_9
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    if-ne v3, v9, :cond_a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_a
    :try_start_4
    const-string v3, "qwerty_key_preview_label_size_ta"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_b
    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_c

    :try_start_5
    const-string v3, "qwerty_key_preview_label_size_indian"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x7e -> :sswitch_6
        -0x7b -> :sswitch_2
        -0x73 -> :sswitch_6
        -0x72 -> :sswitch_4
        -0x71 -> :sswitch_3
        -0x6e -> :sswitch_1
        -0x66 -> :sswitch_0
        0xa -> :sswitch_2
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method protected getPreviewLanguageDistance()I
    .locals 2

    const/16 v0, 0x50

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x78

    goto :goto_0
.end method

.method protected getPreviewLanguageTopPadding()I
    .locals 2

    :try_start_0
    const-string v1, "preview_language_top_padding"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method protected getPreviewNumberKeyTopPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPreviewOffset()I
    .locals 4

    const v3, 0x7f0901dd

    :try_start_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "floating_qwerty_key_preview_vertical_gap"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPreviewSpaceLeftArrow()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0206ae

    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "floating_preview_qwerty_key_icon_space_left_arrow"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceLeftArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getPreviewSpaceRightArrow()Landroid/graphics/drawable/Drawable;
    .locals 3

    const v2, 0x7f0206b0

    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "floating_preview_qwerty_key_icon_space_right_arrow"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mPreviewSpaceRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getPreviewSymbolPageArrowPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getQuickCangjieLabel()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getQuickSymbolPopupSecondary1st()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getQuickSymbolPopupSecondary2nd()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getQwertyKeyIconOffsetY()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getQwertyRectVerticalGap()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected getRightArrowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    const v3, 0x7f020779

    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->isPopupKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "floating_qwerty_key_icon_space_right_arrow_xml"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mRightArrow:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getSelectedKeyBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getShadowDistanceX()F
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_HD:Z

    if-nez v1, :cond_0

    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method protected getShadowDistanceY()F
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v0, :cond_3

    const-string v0, "LIGHT_SIP_ONLY"

    const-string v1, "LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LIGHT_SIP_ONLY"

    const-string v1, "LIGHT_SIP_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/high16 v0, 0x40000000

    goto :goto_0

    :cond_2
    const/high16 v0, -0x40000000

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000

    goto :goto_0
.end method

.method protected getShadowRadius()F
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    const v0, 0x3f19999a

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0
.end method

.method protected getShortcutNumberKeyBackground(Lcom/diotek/ime/framework/view/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isDragStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShortcutsController:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->checkEmptyNumberKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSelectedNumber:I

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0208cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getNumberKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mNumberKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected getSoftFuncPageLabelColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSoftFuncPageLabelSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSoftFuncSymbolLabelColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSoftFuncSymbolLabelSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSortAlternativeChars(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 8
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # Z

    const/16 v7, 0xa

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-gt v1, v2, :cond_1

    if-eqz p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v4, v1, 0x2

    rem-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected getSpaceLanguageLabelPositionY()I
    .locals 4

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsUseSplitFloat:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsMultiwindowPhone:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    :try_start_0
    const-string v2, "floating_handwriting_space_key_label_top_margin"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method protected getSplitFloatingIconScale()F
    .locals 1

    const/high16 v0, 0x3f800000

    return v0
.end method

.method protected getSplitFloatingKeyboardPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSplitFloatingPopupBg(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02062c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getSplitKeyboardHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSplitLeftKeyboardWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSplitRightKeyboardWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getStatusBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSwiftkeyDialogButtonSetting()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSwiftkeyGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSwiftkeyGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030042

    return v0
.end method

.method protected getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSwiftkeyRemoveTermToastMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSymbolPageKeyLabel()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSymbolPopoupKeyboardBgd()Landroid/graphics/drawable/Drawable;
    .locals 5

    const v4, 0x7f02062c

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v3, :cond_0

    :try_start_0
    const-string v3, "hwr_popup_bg"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v3, "popup_bg_non_shadow"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSymbolPopoupKeyboardCancelButtonRscId()I
    .locals 1

    const v0, 0x7f08003d

    return v0
.end method

.method protected getSymbolPopoupKeyboardLayoutRscId()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03002f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030032

    goto :goto_0
.end method

.method protected getSymbolPopoupKeyboardPageButtonRscId()I
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "popup_keyboard_page_toggle"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getSymbolPopoupKeyboardViewModeId(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f08010e

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f08010e

    goto :goto_0

    :pswitch_1
    const v0, 0x7f08010f

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080110

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getSymbolPopoupKeyboardViewRscId()I
    .locals 1

    const v0, 0x7f08003c

    return v0
.end method

.method protected getSymbolPopoupKeyboardViewXmlId()I
    .locals 8

    const v1, 0x7f0501fb

    const v2, 0x7f0501fa

    const v3, 0x7f0501f9

    const v4, 0x7f0501f8

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string v2, "floating_popup_hwr_symbol_he_arabic"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "floating_popup_hwr_symbol_he"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_2
    const-string v1, "floating_popup_hwr_symbol_arabic"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v1, v3

    goto :goto_0

    :cond_3
    :try_start_3
    const-string v1, "floating_popup_hwr_symbol"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    goto :goto_0

    :catch_3
    move-exception v0

    move v1, v4

    goto :goto_0

    :cond_4
    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_0
.end method

.method protected getSymbolPopupHorizontalLine()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSymbolPopupKeyboardPageLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->makeSymbolPopupPageNum()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSymbolPopupLeftPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSymbolPopupTopPadding()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected getSymbolPopupVerticalLine()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabletCjiSymbolCaracter(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTabletPhonepadArrowGap()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsCMkeyGuideCheckBoxRscId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsCMkeyGuideDialogTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipsCMkeyGuideLayoutRscId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsRemoveWordsGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f0800d7

    return v0
.end method

.method protected getTipsRemoveWordsGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTipsRemoveWordsGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f0300a1

    return v0
.end method

.method protected getTipsSwiftKeyLearnsGuideCheckBoxRscId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsSwiftKeyLearnsGuideDialogTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipsSwiftKeyLearnsGuideLayoutRscId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsTraceGuideCheckBoxRscId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTipsTraceGuideDialogTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTipsTraceGuideLayoutRscId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTraceGuideCheckBoxRscId()I
    .locals 1

    const v0, 0x7f08004c

    return v0
.end method

.method protected getTraceGuideDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTraceGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030045

    return v0
.end method

.method protected getVerticalCorrection()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected getVerticalLine()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020678

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/view/HwrKeyboardView;->mVerticalLine:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getXt9PersonalizerAttentionGuideLayoutRscId()I
    .locals 1

    const v0, 0x7f030046

    return v0
.end method

.method protected getXt9_9RemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getXt9_9RemoveTermDialogTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getXt9_9RemoveTermToastMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDrawSymbolPopupLines()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isForcePreviewCode(I)Z
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isEnableSpaceLanguageChange()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isHideSymbolPopupFirstLine()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isNeedDrawCurrentInputRange()Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WVGA:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsNoteMode:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_WXGA:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isNeedExceptionBackgroundDrawing(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x0

    return v0
.end method

.method protected isNeedExceptionIconDrawing(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->hasLongpressOperation(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isNeedFunctionKeyBackground(II)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0xe2

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    const/16 v3, -0x7a

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletNoteMode:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsTabletMode:Z

    if-nez v2, :cond_5

    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    if-eq v2, v0, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected isNeedExceptionLabelDrawing(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x0

    return v0
.end method

.method protected isNeedPreviewFunctionText(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x7e -> :sswitch_0
        -0x7b -> :sswitch_0
        -0x73 -> :sswitch_0
        -0x72 -> :sswitch_0
        -0x71 -> :sswitch_0
        -0x66 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isNeededLongpressPreviewIcon(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 5
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v2, v2, v0

    const/16 v3, -0x75

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v2, v3, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupResId:I

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mUmlautManager:Lcom/diotek/ime/framework/input/umlaut/UmlautManager;

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected isNeededPopupKeyboard(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Z
    .locals 6
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2    # I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    move-result-object v0

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v3, v3, v1

    const/16 v4, -0x75

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputLanguage:I

    iget v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCurrentInputMethod:I

    invoke-virtual {v3, v4, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    move-result-object v3

    array-length v3, v3

    if-ne v3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupResId:I

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p2, v2}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->getCurrentUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;IZ)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected isSpaceLanguageChangeRange()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputRange:I

    packed-switch v2, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isSupportPreview(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 2
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x1

    :sswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x103 -> :sswitch_0
        -0x101 -> :sswitch_0
        -0x100 -> :sswitch_0
        -0xff -> :sswitch_0
        -0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected isUrlMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isVietTone(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method protected isVietValidVowels(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method protected onLanguageSelected(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget-object v2, v0, p2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v2, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    goto :goto_0
.end method

.method protected updateResource()V
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsLandscape:Z

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsLandscape:Z

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/HwrKeyboardView;->init()V

    :cond_0
    return-void
.end method
