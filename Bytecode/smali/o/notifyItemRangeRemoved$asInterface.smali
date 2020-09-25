.class final Lo/notifyItemRangeRemoved$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyItemRangeRemoved;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/notifyItemRangeRemoved;


# direct methods
.method constructor <init>(Lo/notifyItemRangeRemoved;)V
    .locals 0

    iput-object p1, p0, Lo/notifyItemRangeRemoved$asInterface;->onMessageChannelReady:Lo/notifyItemRangeRemoved;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lo/notifyItemRangeRemoved$asInterface;->onMessageChannelReady:Lo/notifyItemRangeRemoved;

    invoke-static {p1}, Lo/notifyItemRangeRemoved;->onPostMessage(Lo/notifyItemRangeRemoved;)Lo/notifyItemMoved;

    move-result-object p1

    .line 2045
    iget-object v0, p1, Lo/notifyItemMoved;->onNavigationEvent:Lo/setActive;

    new-instance v1, Lo/notifyItemMoved$onMessageChannelReady;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lo/notifyItemMoved$onMessageChannelReady;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3000
    iget-object v0, p1, Lo/notifyItemMoved;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/layoutChildRight;

    .line 2046
    invoke-interface {v0}, Lo/layoutChildRight;->ICustomTabsCallback()Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    new-instance v1, Lo/notifyItemMoved$extraCallback;

    invoke-direct {v1, p1}, Lo/notifyItemMoved$extraCallback;-><init>(Lo/notifyItemMoved;)V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string p1, "ProfilePicDelete"

    const-string/jumbo v2, "tag"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5044
    iget-object p1, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v0, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 47
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
