.class Lcom/android/mms/spam/SetupSpamNumberList$2;
.super Landroid/database/ContentObserver;
.source "SetupSpamNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$2;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$2;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v1, 0x1

    # setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$202(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z

    return-void
.end method
