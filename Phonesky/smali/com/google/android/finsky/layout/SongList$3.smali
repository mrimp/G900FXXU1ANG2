.class Lcom/google/android/finsky/layout/SongList$3;
.super Ljava/lang/Object;
.source "SongList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/SongList;->setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/SongList;

.field final synthetic val$songListControl:Lcom/google/android/finsky/layout/PlaylistControlButtons;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/layout/PlaylistControlButtons;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/SongList$3;->this$0:Lcom/google/android/finsky/layout/SongList;

    iput-object p2, p0, Lcom/google/android/finsky/layout/SongList$3;->val$songListControl:Lcom/google/android/finsky/layout/PlaylistControlButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList$3;->val$songListControl:Lcom/google/android/finsky/layout/PlaylistControlButtons;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->onClick(Landroid/view/View;)V

    return-void
.end method
