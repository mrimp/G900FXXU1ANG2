.class Lcom/android/settings/FeatureSettings$6;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FeatureSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FeatureSettings$6;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/FeatureSettings$6;->this$0:Lcom/android/settings/FeatureSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/FeatureSettings;->access$700(Lcom/android/settings/FeatureSettings;Z)V

    return-void
.end method
