.class public Lcom/android/settings/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# instance fields
.field private delOption:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZLandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # Z
    .param p5    # Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserPreference;->delOption:Z

    iput-object p1, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f04019a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    iput-boolean p4, p0, Lcom/android/settings/users/UserPreference;->delOption:Z

    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserPreference;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 2
    .param p1    # Landroid/content/pm/UserInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .param p1    # Landroid/preference/Preference;

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v1

    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getSerialNumber()I
    .locals 2

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;

    const/16 v10, 0x8

    const v8, 0x7f0b0421

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v8, p0, Lcom/android/settings/users/UserPreference;->mUserManager:Landroid/os/UserManager;

    iget v9, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/users/UserPreference;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    const v8, 0x7f0b0420

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/users/UserPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f0266

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
