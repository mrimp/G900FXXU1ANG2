.class public Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FingerPrintManagerListDeletenew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .param p4    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0400b6

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v3, 0x7f0b0204

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0b0203

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$302(Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$300()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$300()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setFocusable(Z)V

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$300()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    return-object p2
.end method
