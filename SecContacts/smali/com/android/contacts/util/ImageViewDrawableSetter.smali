.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# instance fields
.field private mCompressed:[B

.field private mContactId:J

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mResources:Landroid/content/res/Resources;

.field private mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1    # [B

    iget-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "ImageViewDrawableSetter"

    const-string v4, "Cannot load default avatar resource."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getPreviousBitmapHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviousBitmapWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected setCompressedImage([BJ)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # [B
    .param p2    # J

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    :cond_0
    if-nez p1, :cond_2

    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v6, v4}, Lcom/samsung/contacts/widget/ContactPhotoView;->setIsDefaultImage(Z)V

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setDefaultBackgroundColor(J)V

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setDefaultBackgroundColorWithAlpha(J)V

    :goto_2
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_3
    return-object v4

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v6, v5}, Lcom/samsung/contacts/widget/ContactPhotoView;->setIsDefaultImage(Z)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    if-nez v6, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v4, v2}, Lcom/samsung/contacts/widget/ContactPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    :cond_7
    const/4 v6, 0x2

    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v0, v5

    aput-object v2, v0, v4

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {v4, v3}, Lcom/samsung/contacts/widget/ContactPhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_4
.end method

.method public setDefaultBackgroundColor(J)V
    .locals 3
    .param p1    # J

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mResources:Landroid/content/res/Resources;

    invoke-static {p1, p2}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColor(J)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/widget/ContactPhotoView;->setDefaultBackgroundColor(I)V

    return-void
.end method

.method public setDefaultBackgroundColorWithAlpha(J)V
    .locals 2
    .param p1    # J

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-static {p1, p2}, Lcom/android/contacts/util/ContactPhotoUtils;->getDefaultPhotoBackgroundColorAlphaAdded(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method protected setTarget(Lcom/samsung/contacts/widget/ContactPhotoView;)V
    .locals 2
    .param p1    # Lcom/samsung/contacts/widget/ContactPhotoView;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected setTarget(Lcom/samsung/contacts/widget/ContactPhotoView;J)V
    .locals 3
    .param p1    # Lcom/samsung/contacts/widget/ContactPhotoView;
    .param p2    # J

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/samsung/contacts/widget/ContactPhotoView;

    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method public setupContactPhoto(Lcom/android/contacts/model/Contact;Lcom/samsung/contacts/widget/ContactPhotoView;)V
    .locals 3
    .param p1    # Lcom/android/contacts/model/Contact;
    .param p2    # Lcom/samsung/contacts/widget/ContactPhotoView;

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    invoke-virtual {p0, p2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Lcom/samsung/contacts/widget/ContactPhotoView;)V

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([BJ)Landroid/graphics/Bitmap;

    return-void
.end method
