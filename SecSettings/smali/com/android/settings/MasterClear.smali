.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# static fields
.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mNotTouched:Z

.field private mPinConfirmed:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/MasterClear$4;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$4;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/MasterClear$5;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/MasterClear;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .param p0    # Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p0    # Lcom/android/settings/MasterClear;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p0    # Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/MasterClear;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .param p0    # Lcom/android/settings/MasterClear;

    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/MasterClear;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/MasterClear;)Landroid/widget/ScrollView;
    .locals 1
    .param p0    # Lcom/android/settings/MasterClear;

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f0b02d8

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f0b02d9

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v24, Ljava/io/FileInputStream;

    new-instance v36, Ljava/io/File;

    const-string v37, "/system/etc/removable_preload.txt"

    invoke-direct/range {v36 .. v37}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v36, Ljava/io/InputStreamReader;

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_4

    const-string v36, "name="

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_0

    const-string v36, "name=\'"

    const-string v37, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    const-string v37, "\'"

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v14

    move-object v8, v9

    move-object/from16 v23, v24

    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_1

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    if-eqz v23, :cond_2

    :try_start_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_3
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    :cond_3
    :goto_4
    return-void

    :cond_4
    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_5
    if-eqz v24, :cond_6

    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    move-object v8, v9

    move-object/from16 v23, v24

    goto :goto_3

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    move-object/from16 v23, v24

    goto :goto_3

    :catch_3
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v13

    :goto_6
    :try_start_8
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_7

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_7
    if-eqz v23, :cond_2

    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    :catch_6
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_7
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v36

    :goto_8
    if-eqz v8, :cond_8

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_8
    :goto_9
    if-eqz v23, :cond_9

    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_9
    :goto_a
    throw v36

    :catch_8
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :cond_a
    const-string v36, "layout_inflater"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    :goto_b
    move/from16 v0, v18

    if-ge v0, v4, :cond_10

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    :try_start_d
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    const/16 v37, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v31

    const/16 v20, 0x0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const v36, 0x7f04011e

    const/16 v37, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v20, :cond_b

    move-object/from16 v21, v20

    check-cast v21, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v37, 0x7f0f01c8

    invoke-virtual/range {v36 .. v37}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    mul-int/lit8 v17, v36, 0x3

    new-instance v34, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v36, 0x1

    move/from16 v0, v17

    move/from16 v1, v17

    move/from16 v2, v36

    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v20, v34

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    const-string v37, "\\."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    const/16 v25, 0x0

    move-object/from16 v6, v29

    array-length v0, v6

    move/from16 v26, v0

    const/16 v19, 0x0

    :goto_c
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    aget-object v28, v6, v19

    const-string v36, "sec"

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_c

    const-string v36, "samsung"

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    :cond_c
    const/16 v25, 0x1

    :cond_d
    if-eqz v25, :cond_f

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    :catch_a
    move-exception v13

    goto :goto_d

    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    :cond_f
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_10
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-nez v36, :cond_11

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-eqz v36, :cond_3

    :cond_11
    sget-object v36, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static/range {v35 .. v36}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v36, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_13

    const/16 v18, 0x0

    :goto_e
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_12

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/View;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    :cond_12
    const/16 v18, 0x0

    :goto_f
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v18

    move/from16 v1, v36

    if-ge v0, v1, :cond_13

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/view/View;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_13
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    :catchall_1
    move-exception v36

    move-object/from16 v23, v24

    goto/16 :goto_8

    :catchall_2
    move-exception v36

    move-object v8, v9

    move-object/from16 v23, v24

    goto/16 :goto_8

    :catch_b
    move-exception v13

    move-object/from16 v23, v24

    goto/16 :goto_6

    :catch_c
    move-exception v13

    move-object v8, v9

    move-object/from16 v23, v24

    goto/16 :goto_6

    :catch_d
    move-exception v14

    goto/16 :goto_1

    :catch_e
    move-exception v14

    move-object/from16 v23, v24

    goto/16 :goto_1
.end method

.method private establishInitialState()V
    .locals 14

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02cd

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ScrollView;

    iput-object v12, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02da

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v13, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02d4

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02d5

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v12, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_0
    iget-object v12, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02d3

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02cf

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    const-string v12, "ro.sec.fle.encryption"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "true"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02d0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v13, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v4, :cond_5

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    const-string v12, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "storage"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02d6

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v12, 0x7f090719

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(I)V

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v13, 0x7f0b02d7

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v12, 0x7f09071b

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    array-length v5, v10

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v12, v10, v3

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v10, v3

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v11, :cond_7

    const-string v12, "sd"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "mounted"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    aget-object v12, v10, v3

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    :cond_2
    iget-boolean v12, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v13, Lcom/android/settings/MasterClear$3;

    invoke-direct {v13, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    const-string v12, "ro.config.rm_preload_enabled"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    :cond_4
    return-void

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v12, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v13, Lcom/android/settings/MasterClear$2;

    invoke-direct {v13, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v25, v0

    const v26, 0x7f0b02d1

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v25, v0

    const v26, 0x7f0b02d2

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    array-length v5, v7

    if-nez v5, :cond_0

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const-string v25, "layout_inflater"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    invoke-static {v13}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v15

    array-length v4, v15

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v0, v5, :cond_7

    aget-object v6, v7, v18

    const/4 v14, 0x0

    const/16 v22, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v26, v15, v22

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    aget-object v14, v15, v22

    :cond_1
    if-nez v14, :cond_3

    const-string v25, "MasterClear"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No descriptor for account name="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " type="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    :try_start_0
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v25, v0

    if-eqz v25, :cond_4

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :cond_4
    :goto_4
    const v25, 0x7f04011e

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v19, :cond_6

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_5

    move-object/from16 v20, v19

    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0f01c8

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    new-instance v24, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v19, v24

    :cond_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    :catch_0
    move-exception v16

    const-string v25, "MasterClear"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No icon for account type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f09071f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090720

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private runRestrictionsChallenge()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation()V
    .locals 4

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    const v0, 0x7f090712

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "can_erase_sd_on_fuse"

    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/16 v5, 0x3eb

    const/4 v4, 0x1

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x37

    if-eq p1, v1, :cond_2

    if-ne p1, v5, :cond_0

    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_my_mobile"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.UserValidateCheck"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "REMOTE_CONTROLS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    :sswitch_1
    if-ne p2, v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_0
        0x3eb -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f04011d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mNotTouched:Z

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/settings/MasterClear;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method
