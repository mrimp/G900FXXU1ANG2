.class public Lcom/android/settings/grid/GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;,
        Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private childList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public headersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mGridType:I

.field private mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/grid/GridViewAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/grid/GridViewAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I",
            "Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    iput p4, p0, Lcom/android/settings/grid/GridViewAdapter;->mGridType:I

    iput-object p5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;)V
    .locals 4

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b06a1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringTitle(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    :cond_0
    iget-object v0, p2, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/grid/GridViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPositionByView(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    iget v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->cursorStartAt:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    if-nez v7, :cond_0

    :goto_0
    return-object v5

    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    invoke-direct {v0}, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/grid/GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0400ca

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v5, 0x7f0b009c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/ToggleImageView;

    iput-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon:Lcom/android/settings/ToggleImageView;

    const v5, 0x7f0b023d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->childList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v5, v0}, Lcom/android/settings/grid/GridViewAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;)V

    iget-object v7, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon:Lcom/android/settings/ToggleImageView;

    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    iget v5, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v7, v5}, Lcom/android/settings/ToggleImageView;->setImageResource(I)V

    iput p1, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->cursorStartAt:I

    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x1

    iget v7, p0, Lcom/android/settings/grid/GridViewAdapter;->mGridType:I

    if-ne v5, v7, :cond_1

    const v5, 0x7f020105

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/grid/GridViewAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-nez v5, :cond_3

    move v1, v6

    :goto_2
    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v5, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_1
    move-object v5, v4

    goto/16 :goto_0

    :cond_2
    move-object v4, p2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-interface {v5, v3}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->isGiditemChecked(I)Z

    move-result v1

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/grid/GridViewAdapter;->getPositionByView(Landroid/view/View;)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->headersList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v5, v3, v2}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->onGridItemSelected(Landroid/preference/PreferenceActivity$Header;I)V

    iget v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mGridType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;

    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    if-nez v3, :cond_1

    move v1, v4

    :goto_0
    iget-object v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v3, v0, Lcom/android/settings/grid/GridViewAdapter$HeaderViewHolder;->icon_check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/grid/GridViewAdapter;->mOnGridItemSelectedListener:Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;

    invoke-interface {v3, v2}, Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;->isGiditemChecked(I)Z

    move-result v1

    goto :goto_0
.end method
