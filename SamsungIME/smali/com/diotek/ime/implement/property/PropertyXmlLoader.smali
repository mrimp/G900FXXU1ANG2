.class public Lcom/diotek/ime/implement/property/PropertyXmlLoader;
.super Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
.source "PropertyXmlLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguageXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1    # Landroid/content/res/Resources;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f0500d7

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1    # Landroid/content/res/Resources;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f050201

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :cond_0
    return-object v0
.end method
