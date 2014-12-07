.class public Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectItemDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SelectItemDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverInfoAdapter"
.end annotation


# instance fields
.field private mCheckVisible:Z

.field private mSummaryArray:[Ljava/lang/String;

.field private mTitleID:[I

.field final synthetic this$0:Lcom/android/settings/SelectItemDisplay;


# direct methods
.method public constructor <init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;Z)V
    .locals 0
    .param p2    # [I
    .param p3    # [Ljava/lang/String;
    .param p4    # Z

    iput-object p1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    iput-object p3, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mSummaryArray:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mCheckVisible:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    aget v0, v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    # getter for: Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/settings/SelectItemDisplay;->access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f04004c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/SelectItemDisplay$ViewHolder;-><init>()V

    const v1, 0x7f0b00e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0b00e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0b00e5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mSummaryArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mSummaryArray:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mCheckVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->mTitleID:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "weather_cover"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :pswitch_2
    iget-object v1, v0, Lcom/android/settings/SelectItemDisplay$ViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->this$0:Lcom/android/settings/SelectItemDisplay;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "walk_mate"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f090d1f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
