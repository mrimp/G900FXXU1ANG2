.class Lcom/android/settings/ContextualPageSettings$1;
.super Landroid/database/ContentObserver;
.source "ContextualPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ContextualPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ContextualPageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ContextualPageSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/ContextualPageSettings$1;->this$0:Lcom/android/settings/ContextualPageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings$1;->this$0:Lcom/android/settings/ContextualPageSettings;

    # invokes: Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V
    invoke-static {v0}, Lcom/android/settings/ContextualPageSettings;->access$000(Lcom/android/settings/ContextualPageSettings;)V

    const-string v0, "ContextualPageSettings"

    const-string v1, "onChange() CONTEXTUALPAGE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
