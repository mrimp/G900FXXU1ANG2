.class Lcom/android/settings/informativescreen/InformativeScreenSettings$2$1;
.super Ljava/lang/Object;
.source "InformativeScreenSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/informativescreen/InformativeScreenSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/informativescreen/InformativeScreenSettings$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2$1;->this$1:Lcom/android/settings/informativescreen/InformativeScreenSettings$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2$1;->this$1:Lcom/android/settings/informativescreen/InformativeScreenSettings$2;

    iget-object v0, v0, Lcom/android/settings/informativescreen/InformativeScreenSettings$2;->this$0:Lcom/android/settings/informativescreen/InformativeScreenSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/informativescreen/InformativeScreenSettings;->DIALOG_CURRENT_TIMEPICKER:I
    invoke-static {v1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$502(I)I

    move-result v1

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/informativescreen/InformativeScreenSettings;->access$600(Lcom/android/settings/informativescreen/InformativeScreenSettings;I)V

    return-void
.end method
