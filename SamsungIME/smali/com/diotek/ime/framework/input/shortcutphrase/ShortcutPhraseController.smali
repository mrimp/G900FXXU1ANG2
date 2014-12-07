.class public Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;
.super Ljava/lang/Object;
.source "ShortcutPhraseController.java"


# static fields
.field private static phraseText:[Ljava/lang/String;

.field private static sInstance:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;


# instance fields
.field private final LAST_PHRASE_INDEX:I

.field mContext:Landroid/content/Context;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->sInstance:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->LAST_PHRASE_INDEX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->phraseText:[Ljava/lang/String;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->sInstance:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->sInstance:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->sInstance:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    return-object v0
.end method

.method public static isSingleDigitNumber(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x660

    if-lt p0, v0, :cond_1

    const/16 v0, 0x669

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x6f0

    if-lt p0, v0, :cond_2

    const/16 v0, 0x6f9

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0xed0

    if-lt p0, v0, :cond_3

    const/16 v0, 0xed9

    if-le p0, v0, :cond_4

    :cond_3
    const/16 v0, 0x17e0

    if-lt p0, v0, :cond_5

    const/16 v0, 0x17e9

    if-gt p0, v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkEmptyNumberKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->isSingleDigitNumber(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v1, p1, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xa

    :cond_1
    sget-object v3, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->phraseText:[Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public checkFirstEmptyShortcutsGuideDialog()Z
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_empty_shortcuts_guide_execution"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public commitShortCutPhrase(I)V
    .locals 5

    const-string v1, ""

    sget-object v2, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->phraseText:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->phraseText:[Ljava/lang/String;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    return-void
.end method

.method public initialize()V
    .locals 6

    iget-object v3, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, "phrase"

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0xa

    if-gt v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phrase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->phraseText:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    const-string v5, ""

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShortCutPhrase(Ljava/lang/String;Lcom/diotek/ime/framework/view/Keyboard$Key;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p2, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    :cond_0
    sget-object v6, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->phraseText:[Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    aput-object p1, v6, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phrase"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v5, 0x7f0d0303

    const/16 v6, 0xa

    if-ne v2, v6, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    return-void
.end method
