.class Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;
.super Ljava/lang/Object;
.source "LGTEditPhotoRingRejectScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const-string v0, "EditAutoRejectScreen"

    const-string v1, "onClick searchButton"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isDialogCreated:Z
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$100(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->isDialogCreated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$102(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    # getter for: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$000(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen$3;->this$0:Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;

    # invokes: Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->alertdialogSearch()V
    invoke-static {v0}, Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;->access$200(Lcom/android/phone/callsettings/LGTEditPhotoRingRejectScreen;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EditAutoRejectScreen"

    const-string v1, "Search dialog is already created"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
