.class final Lcom/google/android/finsky/utils/GcmRegistrationIdHelper$2;
.super Ljava/lang/Object;
.source "GcmRegistrationIdHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->onGcmUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->setRegisteredOnServer(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/finsky/utils/GcmRegistrationIdHelper;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
