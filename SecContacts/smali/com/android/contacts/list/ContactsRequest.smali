.class public Lcom/android/contacts/list/ContactsRequest;
.super Ljava/lang/Object;
.source "ContactsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field private mCallLogIntent:Z

.field private mChangeDisplayMode:Z

.field private mChatVisible:Z

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultListIntent:Z

.field private mDialpadIntent:Z

.field private mDirectSendIntentMode:Z

.field private mDirectorySearchEnabled:Z

.field private mDisplayTab:Z

.field private mExtra:I

.field private mGroupSelectionMode:Z

.field private mGroupSendType:I

.field private mIncludeProfile:Z

.field private mKeepTabState:Z

.field private mLegacyCompatibilityMode:Z

.field private mMultipleSelectMode:Z

.field private mQueryString:Ljava/lang/String;

.field private mRedirectIntent:Landroid/content/Intent;

.field private mSearchMode:Z

.field private mShowChatFirst:Z

.field private mShowSelectedText:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mValid:Z

.field private mhidecreatelabel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/list/ContactsRequest$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactsRequest$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput-boolean v2, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDialpadIntent:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mCallLogIntent:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mKeepTabState:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDefaultListIntent:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mShowChatFirst:Z

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mChatVisible:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return p1
.end method

.method static synthetic access$1002(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSelectionMode:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mShowSelectedText:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/contacts/list/ContactsRequest;I)I
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/list/ContactsRequest;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/contacts/list/ContactsRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/contacts/list/ContactsRequest;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/contacts/list/ContactsRequest;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactsRequest;
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method


# virtual methods
.method public copyFrom(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .param p1    # Lcom/android/contacts/list/ContactsRequest;

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    iget-object v0, p1, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mGroupSelectionMode:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSelectionMode:Z

    iget-boolean v0, p1, Lcom/android/contacts/list/ContactsRequest;->mShowSelectedText:Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mShowSelectedText:Z

    iget v0, p1, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    iput v0, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getActionCode()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return v0
.end method

.method public getActivityTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getChatFirstMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mShowChatFirst:Z

    return v0
.end method

.method public getChatVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mChatVisible:Z

    return v0
.end method

.method public getContactUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDirectSendIntentMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectSendIntentMode:Z

    return v0
.end method

.method public getExtraValue()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    return v0
.end method

.method public getGroupSendType()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSendType:I

    return v0
.end method

.method public getHideCreateLabel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return v0
.end method

.method public getKeepTabState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mKeepTabState:Z

    return v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTabMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    return v0
.end method

.method public isDirectorySearchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return v0
.end method

.method public isGroupSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSelectionMode:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return v0
.end method

.method public isMultiSelectMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public setActionCode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    return-void
.end method

.method public setActivityTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setChangeDisplayMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mChangeDisplayMode:Z

    return-void
.end method

.method public setChatFirstMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mShowChatFirst:Z

    return-void
.end method

.method public setChatVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mChatVisible:Z

    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    return-void
.end method

.method public setDirectSendIntentMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectSendIntentMode:Z

    return-void
.end method

.method public setDirectorySearchEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    return-void
.end method

.method public setExtraValue(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    return-void
.end method

.method public setGroupSelectionMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSelectionMode:Z

    return-void
.end method

.method public setGroupSendType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSendType:I

    return-void
.end method

.method public setHideCreateLabel(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mhidecreatelabel:Z

    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return-void
.end method

.method public setKeepTabState(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mKeepTabState:Z

    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    return-void
.end method

.method public setMutiSelectMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    return-void
.end method

.method public setSelectedText(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mShowSelectedText:Z

    return-void
.end method

.method public setTabMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    return v0
.end method

.method public shouldShowSelectedText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mShowSelectedText:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ContactsRequest:mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRedirectIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSearchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mQueryString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIncludeProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLegacyCompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDirectorySearchEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContactUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMultipleSelectMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDisplayTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mValid:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mActionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mRedirectIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mSearchMode:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mIncludeProfile:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mLegacyCompatibilityMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDirectorySearchEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactsRequest;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mMultipleSelectMode:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mDisplayTab:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mGroupSelectionMode:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactsRequest;->mShowSelectedText:Z

    if-eqz v0, :cond_8

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/list/ContactsRequest;->mExtra:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_8
.end method
