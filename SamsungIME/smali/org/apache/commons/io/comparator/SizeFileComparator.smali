.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Ljava/lang/Object;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_REVERSE:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11

    const-wide/16 v8, 0x0

    move-object v0, p1

    check-cast v0, Ljava/io/File;

    move-object v1, p2

    check-cast v1, Ljava/io/File;

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-boolean v10, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v6

    :goto_1
    sub-long v2, v4, v6

    cmp-long v10, v2, v8

    if-gez v10, :cond_4

    const/4 v8, -0x1

    :goto_2
    return v8

    :cond_0
    move-wide v4, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    move-wide v6, v8

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_1

    :cond_4
    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method
