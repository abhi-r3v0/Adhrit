.class final Lo/isLayoutHierarchical$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutHierarchical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic onNavigationEvent:Lo/isLayoutHierarchical;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutHierarchical$onPostMessage;->onNavigationEvent:Lo/isLayoutHierarchical;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1079
    iget-object v0, p0, Lo/isLayoutHierarchical$onPostMessage;->onNavigationEvent:Lo/isLayoutHierarchical;

    .line 2004
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "send_sms_no_sim_screen_CTA_click"

    invoke-interface {v0, v2, v1}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1080
    iget-object v0, p0, Lo/isLayoutHierarchical$onPostMessage;->onNavigationEvent:Lo/isLayoutHierarchical;

    .line 2036
    iget-object v0, v0, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 1080
    new-instance v1, Lo/performAccessibilityActionForItem$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lo/performAccessibilityActionForItem$onMessageChannelReady;-><init>(B)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
