.class public Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;
.super Ljava/lang/Object;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnvironmentOverride"
.end annotation


# instance fields
.field public final dfeBaseUrl:Ljava/lang/String;

.field public final escrowUrl:Ljava/lang/String;

.field public final vendingBaseUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->vendingBaseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->escrowUrl:Ljava/lang/String;

    return-void
.end method
