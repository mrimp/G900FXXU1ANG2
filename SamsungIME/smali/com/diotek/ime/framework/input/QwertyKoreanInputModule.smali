.class public Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;
.super Lcom/diotek/ime/framework/input/AbstractInputModule;
.source "QwertyKoreanInputModule.java"


# instance fields
.field private deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v2, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isInRepeatKey()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    const-string v14, ""

    if-eqz v10, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_6

    const v20, 0x7fffffff

    const/16 v21, 0x1

    :try_start_0
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v19, :cond_1

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v21

    const-class v22, Ljava/lang/Object;

    invoke-virtual/range {v19 .. v22}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    array-length v15, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v15, :cond_1

    aget-object v18, v3, v9

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v20

    if-lez v20, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_2
    :goto_2
    if-nez v14, :cond_3

    const-string v14, ""

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v20

    if-eqz v20, :cond_4

    if-lez v16, :cond_7

    :cond_4
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    const/16 v20, 0x1

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v20

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    const/16 v21, -0x5

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v20

    if-nez v20, :cond_a

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto/16 :goto_3

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    if-eqz v11, :cond_e

    if-eqz v13, :cond_e

    if-eqz v5, :cond_e

    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getDeleteCount()I

    move-result v20

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.sec.chaton"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_d

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v20

    if-eqz v20, :cond_f

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    :cond_f
    const/4 v7, 0x0

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    :goto_4
    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v7, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.sec.chaton"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_11

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getLastWordDividerIndex()I

    move-result v20

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v10, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->deleteCountInRepeatKey:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_4

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initWordDividerIndexList()V

    const/16 v20, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    :cond_12
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto/16 :goto_3
.end method

.method private processMultiTap(I[I)V
    .locals 7
    .param p1    # I
    .param p2    # [I

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    new-array v0, v3, [I

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    if-ne v5, p1, :cond_2

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    :goto_2
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 13
    .param p1    # I
    .param p2    # [I

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v9

    iput-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const/4 v9, 0x1

    new-array v0, v9, [I

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    const/4 v7, 0x1

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    move v1, v3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v6, :cond_2

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    :cond_2
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v9

    const/16 v10, 0x40

    if-lt v9, v10, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    :cond_3
    if-eqz v7, :cond_c

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_c

    const/4 v9, 0x1

    new-array v2, v9, [Z

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    invoke-interface {v9, v10, v11, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    aget-boolean v9, v2, v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v11

    const/4 v12, -0x1

    invoke-interface {v9, v10, v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_9
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v8, 0x1

    :cond_a
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_b

    if-eqz v8, :cond_b

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_11

    if-nez v7, :cond_11

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    :goto_3
    if-eq v1, v3, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SENT_TEXT_BY_INPUTCONNECTION"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    :cond_d
    :goto_4
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    goto/16 :goto_2

    :cond_e
    iget-boolean v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_d

    :cond_f
    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processReCaptureForXT9(I)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_3

    :cond_11
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_12
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_3
.end method

.method private processWordSeparator(I[I)V
    .locals 11
    .param p1    # I
    .param p2    # [I

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v6, v7, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v2, 0x0

    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    new-array v0, v10, [I

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-nez v6, :cond_3

    if-eq v5, v8, :cond_7

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_3
    :goto_1
    aget v6, v0, v9

    if-eq v6, v8, :cond_4

    aget v6, v0, v9

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v8, v0, v9

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v9, v0, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v7, v8, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    :cond_5
    const/16 v6, 0xa

    if-ne p1, v6, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->sendEnterKeyHandle()V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    aget v7, v0, v9

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    int-to-char v6, p1

    invoke-static {v6}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v6, v10, :cond_0

    if-eqz v2, :cond_a

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    :cond_a
    if-nez v2, :cond_0

    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->reflashSelectList()I

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v10}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 9
    .param p1    # I
    .param p2    # [I

    const/16 v8, 0x20

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    iput v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    :cond_2
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-eqz v2, :cond_a

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v7, :cond_a

    :cond_4
    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSingleTap(I[I)V

    :goto_1
    if-ne p1, v8, :cond_5

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-eq v4, v7, :cond_6

    :cond_5
    iput v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    :cond_6
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    return-void

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    if-ne v0, v4, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processMultiTap(I[I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v4

    if-nez v4, :cond_d

    :cond_b
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSingleTap(I[I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->autoPeriod(I)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processSymbolicKey(I[I)V

    goto :goto_2
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # J

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # J

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # J

    const/4 v0, 0x0

    return v0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 14
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v6

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v3, :cond_1

    if-ltz p1, :cond_0

    array-length v10, v3

    if-ge p1, v10, :cond_0

    aget-object v2, v3, p1

    invoke-interface {v5, v2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    if-nez v1, :cond_7

    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v5, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 v10, 0x0

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    const/4 v10, 0x0

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    if-eqz v4, :cond_3

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const/4 v10, 0x1

    new-array v0, v10, [I

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    iget v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    aget v12, v0, v10

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v11, v12, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    const/4 v10, -0x1

    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    if-nez v1, :cond_0

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    if-nez v1, :cond_8

    const/4 v4, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    if-ne v1, v10, :cond_2

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x0

    aget v11, v0, v11

    invoke-interface {v10, v11}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 5
    .param p1    # I
    .param p2    # [I

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    new-array v0, v4, [I

    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    int-to-char v2, p1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method
