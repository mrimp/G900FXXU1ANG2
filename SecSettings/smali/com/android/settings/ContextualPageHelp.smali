.class public Lcom/android/settings/ContextualPageHelp;
.super Landroid/app/Fragment;
.source "ContextualPageHelp.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private launchbtnplay:Landroid/widget/ImageView;

.field private launchimg:Landroid/widget/ImageView;

.field private mAni1:Landroid/graphics/drawable/AnimationDrawable;

.field private mAni2:Landroid/graphics/drawable/AnimationDrawable;

.field private recommendbtnplay:Landroid/widget/ImageView;

.field private recommendimg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "ContextualPageHelp"

    iput-object v0, p0, Lcom/android/settings/ContextualPageHelp;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ContextualPageHelp;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/settings/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/android/settings/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ContextualPageHelp;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/settings/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/android/settings/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0914b6

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0914b7

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0914b8

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0914b9

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;

    const v2, 0x7f02034e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/ContextualPageHelp$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ContextualPageHelp$1;-><init>(Lcom/android/settings/ContextualPageHelp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;

    const v1, 0x7f0b00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;

    const v2, 0x7f020483

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->recommendimg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->mAni2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp;->recommendbtnplay:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/ContextualPageHelp$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ContextualPageHelp$2;-><init>(Lcom/android/settings/ContextualPageHelp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
