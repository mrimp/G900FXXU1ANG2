.class public Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;
.super Ljava/lang/Object;
.source "CardAction.java"


# instance fields
.field private mActionType:Ljava/lang/String;

.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Landroid/content/Intent;

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mActionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mData:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mAttributes:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mActionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mActionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mData:Landroid/content/Intent;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/smartassistant/cardprovider/card/CardAction;->mLabel:Ljava/lang/String;

    return-void
.end method
