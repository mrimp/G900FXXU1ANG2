.class public Lcom/android/settings/common/CheckedGroupListCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "CheckedGroupListCursorAdapter.java"


# instance fields
.field contactPakcage:Ljava/lang/String;

.field isCheckedConfrim:[Z

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # [Ljava/lang/String;
    .param p5    # [I
    .param p6    # I

    invoke-direct/range {p0 .. p6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    const-string v0, "com.android.contacts"

    iput-object v0, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->contactPakcage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->mContext:Landroid/content/Context;

    const-string v4, "string"

    iget-object v5, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->contactPakcage:Ljava/lang/String;

    invoke-static {v3, p1, v4, v5}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->contactPakcage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->isCheckedConfrim:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Friends"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "system_group_id_friend"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    const-string v4, "Family"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v1, "system_group_id_family"

    goto :goto_0

    :cond_3
    const-string v4, "Coworkers"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "system_group_id_coworker"

    goto :goto_0

    :cond_4
    const-string v4, "My Contacts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "system_group_id_my_contacts"

    goto :goto_0

    :cond_5
    const-string v4, "ICE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, "system_group_id_ice"

    goto :goto_0

    :cond_6
    const-string v4, "Favorites"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v1, "contactsFavoritesLabel"

    goto :goto_0

    :cond_7
    const-string v4, "Not Assigned"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "not_assigned"

    goto :goto_0

    :cond_8
    const-string v4, "Friends"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v1, "system_group_friend"

    goto :goto_0

    :cond_9
    const-string v4, "Family"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v1, "system_group_family"

    goto :goto_0

    :cond_a
    const-string v4, "Coworkers"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v1, "system_group_coworker"

    goto :goto_0

    :cond_b
    const-string v4, "My Contacts"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v1, "system_group_my_contacts"

    goto :goto_0

    :cond_c
    const-string v4, "ICE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v1, "emergency_contacts"

    goto :goto_0

    :cond_d
    const-string v4, "Favorites"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v1, "contactsFavoritesLabel"

    goto/16 :goto_0

    :cond_e
    const-string v4, "Not Assigned"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "not_assigned"

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->getContactString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public setChecked(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->isCheckedConfrim:[Z

    iget-object v0, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->isCheckedConfrim:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, p1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->isCheckedConfrim:[Z

    aput-boolean p2, v0, p1

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .param p1    # Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->isCheckedConfrim:[Z

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/common/CheckedGroupListCursorAdapter;->isCheckedConfrim:[Z

    goto :goto_0
.end method
