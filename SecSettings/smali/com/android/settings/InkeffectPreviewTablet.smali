.class public Lcom/android/settings/InkeffectPreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "InkeffectPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static bClickV:I

.field private static cnt:I

.field private static mInkVal:I

.field public static mInkeffectPreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCurrentSelection:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mInkeffectPreviewAdapter:Lcom/android/settings/InkeffectPreviewAdapter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    sput v1, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    sput v1, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings/InkeffectPreviewAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/InkeffectPreviewTablet;->mCurrentSelection:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkEffectdrawble:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkEffectdrawble_h:[I

    return-void

    :array_0
    .array-data 4
        0x7f020345
        0x7f020349
        0x7f020347
        0x7f02033f
        0x7f02033b
        0x7f020343
        0x7f02034b
        0x7f02033d
        0x7f020341
    .end array-data

    :array_1
    .array-data 4
        0x7f020346
        0x7f02034a
        0x7f020348
        0x7f020340
        0x7f02033c
        0x7f020344
        0x7f02034c
        0x7f02033e
        0x7f020342
    .end array-data
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    sget v2, Lcom/android/settings/InkeffectPreviewTablet;->mInkVal:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    iget-object v2, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0913cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings/InkeffectPreviewAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/InkeffectPreviewAdapter;

    sget-object v2, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v4, v2}, Lcom/android/settings/InkeffectPreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings/InkeffectPreviewAdapter;

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget v1, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    sget v1, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    sput v1, Lcom/android/settings/InkeffectPreviewTablet;->mInkVal:I

    sput v5, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    :cond_1
    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400f9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0913c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0901ad

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    const v1, 0x7f090c65

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkEffectdrawble:[I

    sget v3, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x7f0b0180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkeffectPreviewAdapter:Lcom/android/settings/InkeffectPreviewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    sget v2, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkEffectdrawble_h:[I

    sget v3, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0901ad

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090705

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput p3, Lcom/android/settings/InkeffectPreviewTablet;->bClickV:I

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/InkeffectPreviewTablet;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreviewTablet;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    sget v3, Lcom/android/settings/InkeffectPreviewTablet;->mInkVal:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b011a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/InkeffectPreviewTablet;->cnt:I

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    return-void
.end method
