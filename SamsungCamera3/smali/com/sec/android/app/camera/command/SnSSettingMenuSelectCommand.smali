.class public Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SnSSettingMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnsMenuSelectCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mSns:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sparse-switch p5, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3a -> :sswitch_4
        0xfa0 -> :sswitch_0
        0xfa1 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public execute()Z
    .locals 3

    const-string v0, "SnsMenuSelectCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - enter - mSns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    :cond_2
    const-string v0, "SnsMenuSelectCommand--execute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
