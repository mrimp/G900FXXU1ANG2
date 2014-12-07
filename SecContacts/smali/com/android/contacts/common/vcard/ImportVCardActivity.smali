.class public Lcom/android/contacts/common/vcard/ImportVCardActivity;
.super Landroid/app/Activity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;,
        Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;
    }
.end annotation


# static fields
.field private static mIsPreviewMode:Z


# instance fields
.field private mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImportPath:Ljava/lang/String;

.field private mIsBound:Z

.field mListener:Lcom/android/contacts/common/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

.field private request:Lcom/android/contacts/common/vcard/ImportRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsBound:Z

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsBound:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/common/vcard/ImportVCardActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsBound:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->request:Lcom/android/contacts/common/vcard/ImportRequest;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportRequest;)Lcom/android/contacts/common/vcard/ImportRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->request:Lcom/android/contacts/common/vcard/ImportRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/common/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/common/vcard/ImportVCardActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const v1, 0x7f08000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e019b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    iget-object v5, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const v3, 0x7f0e019c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    const/4 v3, 0x1

    const v4, 0x7f0e019d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const v4, 0x7f0e019e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 13

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    new-instance v5, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Z)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0e019b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    iget-object v11, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/CharSequence;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    iget-object v9, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    const v10, 0x3f333333

    invoke-direct {v9, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v7, v9, v3, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    aput-object v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v9, 0x0

    check-cast v9, [Z

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$1;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4

    array-length v1, p1

    new-array v2, v1, [Landroid/net/Uri;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard([Ljava/lang/String;)V

    return-void
.end method

.method private startImport()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "VCardImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting vCard import using Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VCardImport"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f080011

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f080012

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/common/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code was not OK nor CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v0, "account_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "account_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "data_set"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v8, "importPath"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v8, "noPreview"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    sput-boolean v6, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {v1, v3, v2, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move v0, v5

    :goto_1
    if-eqz v7, :cond_6

    const-string v1, "PAP"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "PAP"

    const-string v2, "AUTO_LOADING_FOR_PAP"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport()V

    :goto_2
    return-void

    :cond_1
    const-string v0, "VCardImport"

    const-string v2, "intent does not exist"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move v0, v5

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move v0, v5

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_6
    sget-boolean v1, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "showSelectAccount"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v7, :cond_7

    const-string v0, "showDetail"

    const-string v2, "showDetail"

    invoke-virtual {v7, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "title_name"

    const-string v2, "title_name"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startImport()V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v5, 0x1

    const v7, 0x104000a

    const/4 v6, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mAccountSelectionListener must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-static {p0, p1, v3, v4}, Lcom/android/contacts/common/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0e03e8

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {p0, v3, v1, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_2
    const v3, 0x7f0e019f

    goto :goto_1

    :sswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0e03e6

    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0e03e7

    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_3
    const v3, 0x7f0e03ef

    goto :goto_2

    :cond_4
    const v3, 0x7f0e0188

    goto :goto_3

    :sswitch_3
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0e03eb

    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const v3, 0x7f0e0198

    goto :goto_4

    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, v5}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v6}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_6

    const v3, 0x7f0e01a0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0195

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/common/vcard/ImportVCardActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity;->startVCardService()V

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f0e03ea

    :goto_5
    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f0e0179

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const v3, 0x7f0e01a1

    goto :goto_5

    :sswitch_9
    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "VCardImport"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0e0172

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_8
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e018b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/common/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f08000e -> :sswitch_1
        0x7f08000f -> :sswitch_2
        0x7f080010 -> :sswitch_3
        0x7f080011 -> :sswitch_4
        0x7f080012 -> :sswitch_6
        0x7f080013 -> :sswitch_5
        0x7f080014 -> :sswitch_7
        0x7f080015 -> :sswitch_8
        0x7f080016 -> :sswitch_9
        0x7f0e016e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string v0, "VCardImport"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/common/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    iget-object v2, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/common/vcard/ImportVCardActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/common/vcard/ImportVCardActivity$2;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startVCardService()V
    .locals 3

    new-instance v0, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/common/vcard/ImportVCardActivity;Lcom/android/contacts/common/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const-string v0, "VCardImport"

    const-string v1, "Bind to VCardService."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/common/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/common/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/vcard/ImportVCardActivity;->mIsBound:Z

    return-void
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
