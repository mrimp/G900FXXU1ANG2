.class public final Landroid/nfc/NfcUtilityManager;
.super Landroid/nfc/INfcUtilityCallback$Stub;
.source "NfcUtilityManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NfcUtilityManager"

.field static nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/nfc/INfcUtilityCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcUtility$NfcUtilityCallback;)V
    .locals 0
    .param p1    # Landroid/nfc/NfcUtility$NfcUtilityCallback;

    invoke-direct {p0}, Landroid/nfc/INfcUtilityCallback$Stub;-><init>()V

    sput-object p1, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    return-void
.end method


# virtual methods
.method public SimBootComplete()V
    .locals 1

    sget-object v0, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    invoke-interface {v0}, Landroid/nfc/NfcUtility$NfcUtilityCallback;->SimBootComplete()V

    :cond_0
    return-void
.end method

.method public setNfcUtilityCallback(Landroid/nfc/NfcUtility$NfcUtilityCallback;)V
    .locals 0
    .param p1    # Landroid/nfc/NfcUtility$NfcUtilityCallback;

    sput-object p1, Landroid/nfc/NfcUtilityManager;->nfcUtilityCallback:Landroid/nfc/NfcUtility$NfcUtilityCallback;

    return-void
.end method
