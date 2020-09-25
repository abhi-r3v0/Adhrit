.class final Lo/getChildAt$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildAt;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHolderHome4$bind$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/StaggeredGridLayoutManager;

.field private synthetic onPostMessage:Lo/getChildAt;


# direct methods
.method constructor <init>(Lo/getChildAt;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/getChildAt$onNavigationEvent;->onPostMessage:Lo/getChildAt;

    iput-object p2, p0, Lo/getChildAt$onNavigationEvent;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 33
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-object p1, p0, Lo/getChildAt$onNavigationEvent;->onPostMessage:Lo/getChildAt;

    .line 1081
    iget-object p1, p1, Lo/getPaddingRight;->onNavigationEvent:Lo/removeCallbacks$ICustomTabsCallback;

    .line 1057
    iget-object v0, p0, Lo/getChildAt$onNavigationEvent;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lo/detachAndScrapViewAt;

    .line 2007
    iget-object v0, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 1057
    invoke-interface {p1, v0}, Lo/removeCallbacks$ICustomTabsCallback;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V

    .line 33
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
