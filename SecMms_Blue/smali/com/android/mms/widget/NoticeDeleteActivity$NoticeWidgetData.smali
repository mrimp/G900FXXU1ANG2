.class Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;
.super Ljava/lang/Object;
.source "NoticeDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/widget/NoticeDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoticeWidgetData"
.end annotation


# instance fields
.field private mContactName:Ljava/lang/String;

.field private mId:I

.field private mPhoto:[B

.field final synthetic this$0:Lcom/android/mms/widget/NoticeDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mPhoto:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/mms/widget/NoticeDeleteActivity;I[BLjava/lang/String;)V
    .locals 0
    .param p2    # I
    .param p3    # [B
    .param p4    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->this$0:Lcom/android/mms/widget/NoticeDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mId:I

    iput-object p3, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mPhoto:[B

    iput-object p4, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mId:I

    return v0
.end method

.method public getPhoto()[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/widget/NoticeDeleteActivity$NoticeWidgetData;->mPhoto:[B

    return-object v0
.end method
