.class public abstract Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;
.super Ljava/lang/Object;
.source "PeopleOptionsMenuController.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enableMergeMenu()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupAssistance"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->shouldeGoogleMergeMenuHide()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->shouldSamsungMergeMenuHide(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMoveToKNOXEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "isSupportMoveTo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVowifiEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private resetOptionMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1    # Landroid/view/Menu;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected configureCommon(Landroid/view/Menu;II)V
    .locals 46
    .param p1    # Landroid/view/Menu;
    .param p2    # I
    .param p3    # I

    const v41, 0x7f080351

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    const v41, 0x7f08032f

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v41, 0x7f080364

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v34

    const v41, 0x7f080330

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v38

    const v41, 0x7f080331

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v39

    const v41, 0x7f080356

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v41, 0x7f080353

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    const v41, 0x7f080314

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const v41, 0x7f08031b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    const v41, 0x7f08035b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v41, 0x7f08035a

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v41, 0x7f08035e

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    const v41, 0x7f08035f

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const v41, 0x7f08034a

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    const v41, 0x7f08034b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    const v41, 0x7f080363

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    const v41, 0x7f08036b

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v41, 0x7f080369

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    const v41, 0x7f080366

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    const v41, 0x7f080367

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v41, 0x7f080357

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const v41, 0x7f080359

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const v41, 0x7f080358

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const v41, 0x7f080365

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v40

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v41, v0

    if-eqz v41, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/activities/PeopleActivity;->isContactListEmpty()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/activities/PeopleActivity;->isAddFavoriteListEmpty()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    :cond_0
    sget v41, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    move/from16 v0, p2

    move/from16 v1, v41

    if-ne v0, v1, :cond_10

    const/16 v41, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v41, v0

    if-eqz v41, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/dialer/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v41

    if-nez v41, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/dialer/dialpad/DialpadFragment;->isDigitsEmpty()Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v41, 0x1

    :goto_0
    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v41

    if-nez v41, :cond_7

    const/16 v41, 0x1

    :goto_1
    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v19, :cond_8

    const/16 v41, 0x1

    :goto_2
    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->isVowifiEnabled()Z

    move-result v41

    invoke-interface/range {v40 .. v41}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v41, "ATT"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getOpStyleVariation()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    const v42, 0x7f0e0207

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x3

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-virtual/range {v41 .. v43}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :goto_3
    if-nez v19, :cond_a

    const/16 v41, 0x1

    :goto_4
    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v19, :cond_b

    const/16 v41, 0x1

    :goto_5
    move/from16 v0, v41

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnablegeSurfingDialup()Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "yi_dialling"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const-string v41, "true"

    const-string v42, "gsm.operator.isroaming"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v41, "true"

    const-string v42, "gsm.operator.isroaming2"

    invoke-static/range {v42 .. v42}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v5, :cond_1

    if-eqz v6, :cond_c

    :cond_1
    const/16 v41, 0x1

    :goto_6
    move/from16 v0, v41

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move/from16 v0, v23

    move/from16 v1, v41

    if-ne v0, v1, :cond_d

    const/16 v41, 0x1

    :goto_7
    move/from16 v0, v41

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    if-nez v19, :cond_5

    const-string v35, ""

    const/16 v30, -0x1

    const/16 v28, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/dialer/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v30

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v28

    :cond_3
    const/16 v41, -0x1

    move/from16 v0, v30

    move/from16 v1, v41

    if-eq v0, v1, :cond_f

    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    move/from16 v37, v30

    move/from16 v30, v28

    move/from16 v28, v37

    :cond_4
    if-eqz v30, :cond_e

    const/16 v41, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move/from16 v0, v30

    move/from16 v1, v28

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/samsung/dialer/dialpad/DialpadUtil;->showWait(IILjava/lang/String;)Z

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_8
    return-void

    :cond_6
    const/16 v41, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v41, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v41, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    const v42, 0x7f0e0207

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const/16 v45, 0x2

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-virtual/range {v41 .. v43}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_a
    const/16 v41, 0x0

    goto/16 :goto_4

    :cond_b
    const/16 v41, 0x0

    goto/16 :goto_5

    :cond_c
    const/16 v41, 0x0

    goto/16 :goto_6

    :cond_d
    const/16 v41, 0x0

    goto/16 :goto_7

    :cond_e
    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_f
    const/16 v41, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/samsung/dialer/dialpad/DialpadUtil;->showWait(IILjava/lang/String;)Z

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    :cond_10
    sget v41, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    move/from16 v0, p2

    move/from16 v1, v41

    if-ne v0, v1, :cond_14

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v41, v0

    if-eqz v41, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/activities/PeopleActivity;->isCallLogListEmpty()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    :cond_11
    const/16 v41, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_12

    const/16 v41, 0x1

    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_13

    const/16 v41, 0x1

    :goto_a
    move-object/from16 v0, v21

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const-string v41, "RecordingAllowed"

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoiceCallRecording()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v41

    if-nez v41, :cond_5

    const/16 v41, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_12
    const/16 v41, 0x0

    goto :goto_9

    :cond_13
    const/16 v41, 0x0

    goto :goto_a

    :cond_14
    sget v41, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    move/from16 v0, p2

    move/from16 v1, v41

    if-ne v0, v1, :cond_1b

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v41

    const/16 v42, 0x2

    invoke-interface/range {v41 .. v42}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v41, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_15

    const/16 v41, 0x1

    :goto_b
    move-object/from16 v0, v29

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_16

    const/16 v41, 0x1

    :goto_c
    move/from16 v0, v41

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v41

    if-nez v41, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->isMoveToKNOXEnabled()Z

    move-result v41

    if-eqz v41, :cond_17

    const/16 v41, 0x1

    :goto_d
    move-object/from16 v0, v25

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v41

    if-eqz v41, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->isMoveToKNOXEnabled()Z

    move-result v41

    if-eqz v41, :cond_18

    const/16 v41, 0x1

    :goto_e
    move-object/from16 v0, v26

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->enableMergeMenu()Z

    move-result v41

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v41

    if-nez v41, :cond_19

    const/16 v41, 0x1

    :goto_f
    move-object/from16 v0, v34

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/contacts/ContactsUtils;->isSendEmailActionAvailable(Landroid/content/Context;)Z

    move-result v41

    if-eqz v41, :cond_1a

    const v41, 0x7f0e025f

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_10
    const/16 v41, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_15
    const/16 v41, 0x0

    goto/16 :goto_b

    :cond_16
    const/16 v41, 0x0

    goto/16 :goto_c

    :cond_17
    const/16 v41, 0x0

    goto :goto_d

    :cond_18
    const/16 v41, 0x0

    goto :goto_e

    :cond_19
    const/16 v41, 0x0

    goto :goto_f

    :cond_1a
    const v41, 0x7f0e030b

    move-object/from16 v0, v31

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_10

    :cond_1b
    sget v41, Lcom/samsung/contacts/activities/ContactsTab;->FAVORITES:I

    move/from16 v0, p2

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    move/from16 v41, v0

    if-eqz v41, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v41

    check-cast v41, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual/range {v41 .. v41}, Lcom/android/contacts/activities/PeopleActivity;->isFavoriteListEmpty()Z

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    :cond_1c
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_1d

    const/16 v41, 0x1

    :goto_11
    move/from16 v0, v41

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_1e

    const/16 v41, 0x1

    :goto_12
    move/from16 v0, v41

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_1f

    const/16 v41, 0x1

    :goto_13
    move/from16 v0, v41

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v41

    const/16 v42, 0x2

    invoke-interface/range {v41 .. v42}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v41

    if-nez v41, :cond_20

    const/16 v41, 0x1

    :goto_14
    move/from16 v0, v41

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_1d
    const/16 v41, 0x0

    goto :goto_11

    :cond_1e
    const/16 v41, 0x0

    goto :goto_12

    :cond_1f
    const/16 v41, 0x0

    goto :goto_13

    :cond_20
    const/16 v41, 0x0

    goto :goto_14
.end method

.method protected configureFlagship(Landroid/view/Menu;II)V
    .locals 7
    .param p1    # Landroid/view/Menu;
    .param p2    # I
    .param p3    # I

    const/4 v6, 0x1

    const v5, 0x7f08033b

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v5, 0x7f080362

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v5, 0x7f080355

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v5, 0x7f080354

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v3, 0x0

    sget v5, Lcom/samsung/contacts/activities/ContactsTab;->DIALER:I

    if-ne p2, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/PeopleActivity;

    iget-object v5, v5, Lcom/android/contacts/activities/PeopleActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v5}, Lcom/android/dialer/dialpad/DialpadFragment;->dialpadChooserVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    sget v5, Lcom/samsung/contacts/activities/ContactsTab;->CALLLOG:I

    if-ne p2, v5, :cond_2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableRemoveCallDuration()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    sget v5, Lcom/samsung/contacts/activities/ContactsTab;->ALL:I

    if-ne p2, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void

    :cond_4
    iget-object v5, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->shouldShowHelpMenu(Landroid/content/Context;)Z

    move-result v5

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected abstract configureVariation(Landroid/view/Menu;II)V
.end method

.method public configureVisibility(Landroid/view/Menu;II)V
    .locals 0
    .param p1    # Landroid/view/Menu;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->resetOptionMenu(Landroid/view/Menu;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->configureCommon(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->configureFlagship(Landroid/view/Menu;II)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->configureVariation(Landroid/view/Menu;II)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/menu/controller/PeopleOptionsMenuController;->mContext:Landroid/content/Context;

    return-object v0
.end method
