.class public Lcom/android/settings/lockscreenshortcut/ExpandAppList;
.super Landroid/app/ListActivity;
.source "ExpandAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;,
        Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;,
        Lcom/android/settings/lockscreenshortcut/ExpandAppList$ViewHolder;
    }
.end annotation


# static fields
.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private Duse:Ljava/lang/String;

.field private No_app:[I

.field private Order:[I

.field private add_flag:Z

.field private mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

.field private mAppName:[Ljava/lang/String;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSetedShortcut_activity:[Ljava/lang/String;

.field private mSetedShortcut_package:[Ljava/lang/String;

.field private mTempApplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private order_app:[I

.field private settingName:Ljava/lang/String;

.field private tAppcount:I

.field private t_appNo:I

.field private tempAppName:[Ljava/lang/String;

.field private temp_data:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mClickedViewIndex:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_package:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_activity:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppName:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tempAppName:[Ljava/lang/String;

    const-string v0, "duse"

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->No_app:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->order_app:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Order:[I

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mIconCache:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public AppOrdering(Ljava/util/List;[I[Ljava/lang/String;[II)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;[I[",
            "Ljava/lang/String;",
            "[II)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p5, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, p5, -0x1

    if-ge v2, v5, :cond_1

    aget v5, p2, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, p2, v6

    if-ge v5, v6, :cond_0

    aget v3, p2, v2

    aget-object v4, p3, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p2, v5

    aput v5, p2, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p3, v5

    aput-object v5, p3, v2

    add-int/lit8 v5, v2, 0x1

    aput v3, p2, v5

    add-int/lit8 v5, v2, 0x1

    aput-object v4, p3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p5, :cond_5

    const/4 v1, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    aget-object v6, p3, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aput v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method public MakeList(Ljava/util/List;Ljava/util/ArrayList;II[I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II[I)V"
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, 0x7

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_c

    if-eqz p3, :cond_a

    if-eqz v1, :cond_0

    if-ne v1, v9, :cond_3

    :cond_0
    aget v5, p5, v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_6

    if-ge v1, v9, :cond_6

    if-lt p3, v8, :cond_4

    aget v5, p5, v0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    if-le p3, v0, :cond_5

    aget v5, p5, v0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x5

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    if-lt p3, v8, :cond_8

    const/4 v3, 0x5

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_7

    aget v5, p5, v2

    add-int/lit8 v6, v1, -0x7

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    if-nez v5, :cond_1

    add-int/lit8 v5, v1, -0x7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    move v3, p3

    goto :goto_3

    :cond_9
    iput-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->add_flag:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    if-nez v1, :cond_b

    aget v5, p5, v7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    return-void
.end method

.method public SortingList([Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, p5, -0x1

    if-ge v1, v3, :cond_2

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    :goto_1
    if-ge v2, p5, :cond_1

    aget-object v3, p1, v1

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    aput-object v3, p1, v2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Order:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p5, :cond_4

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Duse:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, p1, v1

    aput-object v3, p3, v0

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->Order:[I

    aget v3, v3, v1

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 36

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    const-string v3, "shortcut_app_list"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string v3, "num_of_shortcut"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    const-string v3, "clicked_view_index"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mClickedViewIndex:I

    const-string v3, "max_num_of_shortcut"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    sget v5, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    if-le v3, v5, :cond_0

    sget v3, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MAX_SHORTCUT_ICON:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    :cond_0
    const-string v28, ""

    const/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v24, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_1

    move/from16 v32, v26

    const/16 v3, 0x3b

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v26

    move-object/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    const/16 v3, 0x2f

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v33

    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    add-int/lit8 v3, v33, 0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_package:[Ljava/lang/String;

    aput-object v34, v3, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aput-object v21, v3, v24

    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x20

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mTempApplist:Ljava/util/ArrayList;

    const-string v3, "com.android.settings.Settings"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->settingName:Ljava/lang/String;

    const-string v3, "content://com.samsung.android.providers.context/app_usage/recent"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    const/4 v10, 0x0

    if-eqz v23, :cond_2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v10

    :cond_2
    const/16 v31, 0x0

    const/16 v3, 0x64

    if-gt v10, v3, :cond_4

    add-int/lit8 v31, v10, -0x1

    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3
    :goto_1
    if-eqz v23, :cond_6

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "class_name"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppName:[Ljava/lang/String;

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v31

    add-int/lit8 v31, v31, -0x1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_4
    if-eqz v23, :cond_5

    add-int/lit8 v3, v10, -0x64

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_5
    const/16 v10, 0x64

    const/16 v31, 0x63

    goto :goto_1

    :cond_6
    if-eqz v23, :cond_7

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_7
    new-instance v22, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AlphaComparator;-><init>(Lcom/android/settings/lockscreenshortcut/ExpandAppList;)V

    move-object/from16 v0, v22

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mNumOfSavedShortcut:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_a

    const/16 v29, 0x0

    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v29

    if-ge v0, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_package:[Ljava/lang/String;

    aget-object v5, v3, v24

    move/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aget-object v5, v3, v24

    move/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move/from16 v0, v29

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_a
    const/16 v24, 0x0

    :goto_4
    const/16 v3, 0x64

    move/from16 v0, v24

    if-ge v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    const/4 v5, 0x0

    aput v5, v3, v24

    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    :cond_b
    const/16 v20, 0x0

    const/16 v24, 0x0

    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->settingName:Ljava/lang/String;

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v20, v24

    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x1

    if-le v10, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->order_app:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tempAppName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->settingName:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->SortingList([Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->order_app:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tempAppName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->tAppcount:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->AppOrdering(Ljava/util/List;[I[Ljava/lang/String;[II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mTempApplist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->t_appNo:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->temp_data:[I

    move-object/from16 v16, v0

    move-object/from16 v11, p0

    move/from16 v15, v20

    invoke-virtual/range {v11 .. v16}, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->MakeList(Ljava/util/List;Ljava/util/ArrayList;II[I)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mIconCache:Ljava/util/HashMap;

    const/16 v24, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mIconCache:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v24

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    :cond_10
    new-instance v13, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    const v16, 0x7f04010f

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mTempApplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p0

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;-><init>(Lcom/android/settings/lockscreenshortcut/ExpandAppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selected_package"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "selected_activity"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/ExpandAppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/ExpandAppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
