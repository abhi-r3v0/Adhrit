.class final Lo/createSnapScroller$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createSnapScroller;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic extraCallback:Lo/createSnapScroller;

.field private synthetic onNavigationEvent:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/createSnapScroller;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/createSnapScroller$onMessageChannelReady;->extraCallback:Lo/createSnapScroller;

    iput-object p2, p0, Lo/createSnapScroller$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 35
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lo/createSnapScroller$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lo/getRecycleChildrenOnDetach;

    .line 1098
    iget p1, p1, Lo/getRecycleChildrenOnDetach;->onNavigationEvent:I

    if-nez p1, :cond_0

    .line 1090
    iget-object p1, p0, Lo/createSnapScroller$onMessageChannelReady;->extraCallback:Lo/createSnapScroller;

    .line 2035
    iget-object p1, p1, Lo/createSnapScroller;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 1090
    iget-object v0, p0, Lo/createSnapScroller$onMessageChannelReady;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    iget-object v1, p0, Lo/createSnapScroller$onMessageChannelReady;->extraCallback:Lo/createSnapScroller;

    check-cast v1, Lo/createOrientationHelpers;

    const-string v2, "broadcast_code"

    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 35
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
