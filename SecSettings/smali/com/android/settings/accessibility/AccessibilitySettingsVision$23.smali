.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    return-void
.end method
