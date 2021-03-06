.class public Lcom/google/android/finsky/utils/Users;
.super Ljava/lang/Object;
.source "Users.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/Users$1;,
        Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;,
        Lcom/google/android/finsky/utils/Users$UserManagerFacade;
    }
.end annotation


# instance fields
.field private final mUserManagerFacade:Lcom/google/android/finsky/utils/Users$UserManagerFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    new-instance v2, Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    invoke-direct {v2, v5}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;-><init>(Lcom/google/android/finsky/utils/Users$1;)V

    iput-object v2, p0, Lcom/google/android/finsky/utils/Users;->mUserManagerFacade:Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v0, p0, Lcom/google/android/finsky/utils/Users;->mUserManagerFacade:Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to reflect into UserManager: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    invoke-direct {v0, v5}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;-><init>(Lcom/google/android/finsky/utils/Users$1;)V

    goto :goto_1
.end method


# virtual methods
.method public hasMultipleUsers()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/Users;->supportsMultiUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/Users;->mUserManagerFacade:Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;->hasMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLimitedUser()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/Users;->mUserManagerFacade:Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;->isLimitedUser()Z

    move-result v0

    return v0
.end method

.method public supportsMultiUser()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/utils/Users;->mUserManagerFacade:Lcom/google/android/finsky/utils/Users$UserManagerFacade;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;->supportsMultipleUsers()Z

    move-result v0

    return v0
.end method
