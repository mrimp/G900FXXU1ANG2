.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/LinearLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# instance fields
.field private mAsyncLoadRequested:Z

.field private mBusinesscardDataId:I

.field private mContactId:J

.field private mEntry:Lcom/android/contacts/common/model/ValuesDelta;

.field private mFrameView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHasSetPhoto:Z

.field private mIsChangedBusinesscard:Z

.field private mLargeBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mContactId:J

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mAsyncLoadRequested:Z

    new-instance v0, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedBusinesscard:Z

    iput v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mBusinesscardDataId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mContactId:J

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mAsyncLoadRequested:Z

    new-instance v0, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedBusinesscard:Z

    iput v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mBusinesscardDataId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/PhotoEditorView;)V
    .locals 0
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;

    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->updateLargePhoto()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/editor/PhotoEditorView;Z)Z
    .locals 0
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mAsyncLoadRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/PhotoEditorView;Lcom/android/contacts/model/RawContactDelta;)V
    .locals 0
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;
    .param p1    # Lcom/android/contacts/model/RawContactDelta;

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->getLargePhoto(Lcom/android/contacts/model/RawContactDelta;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/PhotoEditorView;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/contacts/editor/PhotoEditorView;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getLargePhoto(Lcom/android/contacts/model/RawContactDelta;)V
    .locals 12
    .param p1    # Lcom/android/contacts/model/RawContactDelta;

    :try_start_0
    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "display_photo"

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "r"

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v9, 0x4000

    new-array v1, v9, [B

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    const-string v9, "PhotoEditorView"

    const-string v10, "ioException"

    invoke-static {v9, v10, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v9, v6

    if-lez v9, :cond_2

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/contacts/editor/PhotoEditorView;->recycleLargeBitmap()V

    iput-object v5, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :try_start_5
    iput-object v9, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private recycleLargeBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private updateLargePhoto()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mAsyncLoadRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mLargeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteEditor()V
    .locals 0

    return-void
.end method

.method public editNewlyAddedField()V
    .locals 0

    return-void
.end method

.method public getEditorListener()Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method

.method public getIsBusinesscard()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mBusinesscardDataId:I

    return v0
.end method

.method public getIsChangedBusinesscardPhoto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedBusinesscard:Z

    return v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/PhotoEditorView$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/PhotoEditorView$2;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected resetDefault()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v3, 0x7f02007c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    iget-wide v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mContactId:J

    invoke-static {v3, v4}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02007f

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f020080

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 3
    .param p1    # Lcom/android/contacts/editor/Editor$EditorListener;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIsBusinesscard(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mBusinesscardDataId:I

    return-void
.end method

.method public setIsChangedBusinesscardPhoto(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedBusinesscard:Z

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v2, "data11"

    invoke-virtual {v1, v2, p1}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedBusinesscard:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/editor/PhotoEditorView;->mAsyncLoadRequested:Z

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v6}, Lcom/android/contacts/common/model/ValuesDelta;->setSuperPrimary(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->setPhoto([B)V

    goto :goto_0
.end method

.method public setSuperPrimary(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v2, "is_super_primary"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 16
    .param p1    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p2    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3    # Lcom/android/contacts/model/RawContactDelta;
    .param p4    # Z
    .param p5    # Lcom/android/contacts/editor/ViewIdGenerator;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    const-string v13, "contact_id"

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    const-string v13, "contact_id"

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mContactId:J

    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/ValuesDelta;I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    if-eqz p2, :cond_7

    const-string v12, "data15"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v10

    if-nez v10, :cond_2

    const-string v12, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/ValuesDelta;

    const-string v12, "data15"

    invoke-virtual {v5, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    :cond_2
    if-eqz v10, :cond_6

    const-string v12, "data14"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    new-instance v7, Ljava/lang/Thread;

    new-instance v12, Lcom/android/contacts/editor/PhotoEditorView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v12, v0, v1}, Lcom/android/contacts/editor/PhotoEditorView$3;-><init>(Lcom/android/contacts/editor/PhotoEditorView;Lcom/android/contacts/model/RawContactDelta;)V

    invoke-direct {v7, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/view/View;->setEnabled(Z)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/common/model/ValuesDelta;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    const-string v12, "data11"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedBusinesscard:Z

    :goto_3
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_3
.end method
