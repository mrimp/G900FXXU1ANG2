.class Lcom/voovio/sweep/SweepOffScreen$3;
.super Ljava/lang/Object;
.source "SweepOffScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voovio/sweep/SweepOffScreen;->setSweep(Lcom/voovio/sweep/Sweep;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final m_oPreviousSweep:Lcom/voovio/sweep/Sweep;

.field final synthetic this$0:Lcom/voovio/sweep/SweepOffScreen;


# direct methods
.method constructor <init>(Lcom/voovio/sweep/SweepOffScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/voovio/sweep/SweepOffScreen$3;->this$0:Lcom/voovio/sweep/SweepOffScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/voovio/sweep/SweepOffScreen;->m_oSweep:Lcom/voovio/sweep/Sweep;

    iput-object v0, p0, Lcom/voovio/sweep/SweepOffScreen$3;->m_oPreviousSweep:Lcom/voovio/sweep/Sweep;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/voovio/sweep/SweepOffScreen$3;->m_oPreviousSweep:Lcom/voovio/sweep/Sweep;

    iget-object v1, v1, Lcom/voovio/sweep/Sweep;->m_aVoovios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voovio/sweep/Voovio;

    iget v1, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    sget v3, Lcom/voovio/sweep/Voovio;->STATE_READY:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/voovio/sweep/Voovio;->Destroy()V

    iget-object v1, v0, Lcom/voovio/sweep/Voovio;->m_baImage:[B

    if-eqz v1, :cond_2

    sget v1, Lcom/voovio/sweep/Voovio;->STATE_BYTEARRAY:I

    :goto_1
    iput v1, v0, Lcom/voovio/sweep/Voovio;->m_nState:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/voovio/sweep/Voovio;->STATE_VOID:I

    goto :goto_1
.end method
