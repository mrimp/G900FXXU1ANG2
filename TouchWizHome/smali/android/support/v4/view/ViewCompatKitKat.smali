.class public Landroid/support/v4/view/ViewCompatKitKat;
.super Ljava/lang/Object;
.source "ViewCompatKitKat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    return v0
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
    .param p1    # I

    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void
.end method
