.class final Lcom/android/launcher2/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/HomeItem;

.field final synthetic val$notify:Z

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$8;->val$notify:Z

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$8;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$notify:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Z

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI(Z)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$8;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-boolean v0, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CP] addItemToDatabase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v1, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: HomeItem id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addItemToDatabase already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    # getter for: Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Z

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION(Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v1, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/launcher2/LauncherModel$14;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_4
    # getter for: Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    # getter for: Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    # getter for: Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    # getter for: Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$800()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$8;->val$item:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
