.class public final Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onItemRangeMoved;-><init>(Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onPause",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onItemRangeMoved;


# direct methods
.method public constructor <init>(Lo/onItemRangeMoved;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;->onPostMessage:Lo/onItemRangeMoved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;->onPostMessage:Lo/onItemRangeMoved;

    .line 2048
    iget-object v0, p1, Lo/onItemRangeMoved;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lo/onItemRangeMoved;->onMessageChannelReady:Lo/onItemRangeMoved$onNavigationEvent;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;->onPostMessage:Lo/onItemRangeMoved;

    .line 1044
    iget-object v0, p1, Lo/onItemRangeMoved;->onNavigationEvent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lo/onItemRangeMoved;->onMessageChannelReady:Lo/onItemRangeMoved$onNavigationEvent;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 22
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/menu/MenuScrollHandler$1;->onPostMessage:Lo/onItemRangeMoved;

    invoke-static {p1}, Lo/onItemRangeMoved;->onPostMessage(Lo/onItemRangeMoved;)V

    return-void
.end method
