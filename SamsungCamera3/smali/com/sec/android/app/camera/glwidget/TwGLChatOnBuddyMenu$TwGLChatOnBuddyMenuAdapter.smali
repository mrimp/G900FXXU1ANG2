.class Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLChatOnBuddyMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLChatOnBuddyMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyListCount()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mChatOnShot:Lcom/sec/android/app/camera/ChatOnShot;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/ChatOnShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ChatOnShot;->getChatOnBuddyList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    # setter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mPosition:I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;I)I

    if-nez p2, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    # getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_WIDTH:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$400()I

    move-result v3

    int-to-float v4, v3

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->LIST_ITEM_HEIGHT:I
    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$500()I

    move-result v3

    int-to-float v5, v3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/ChatOnShot$ChatONBuddyInfo;IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu$TwGLChatOnBuddyMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->mItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLChatOnBuddyMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
