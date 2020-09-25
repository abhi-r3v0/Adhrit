.class final Lo/dispatchMoveStarting$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchMoveStarting;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic onPostMessage:Lo/dispatchMoveStarting;


# direct methods
.method constructor <init>(Lo/dispatchMoveStarting;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchMoveStarting$onMessageChannelReady;->onPostMessage:Lo/dispatchMoveStarting;

    iput-object p2, p0, Lo/dispatchMoveStarting$onMessageChannelReady;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 16
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object p1, p0, Lo/dispatchMoveStarting$onMessageChannelReady;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lcom/cred/pay/repository/models/VpaAccount;

    .line 1048
    iget-object p1, p1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 1069
    iget-object p1, p1, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    const-string/jumbo v0, "true"

    .line 1045
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1046
    iget-object p1, p0, Lo/dispatchMoveStarting$onMessageChannelReady;->onPostMessage:Lo/dispatchMoveStarting;

    .line 2016
    iget-object p1, p1, Lo/dispatchMoveStarting;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 1046
    iget-object v0, p0, Lo/dispatchMoveStarting$onMessageChannelReady;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    iget-object v1, p0, Lo/dispatchMoveStarting$onMessageChannelReady;->onPostMessage:Lo/dispatchMoveStarting;

    check-cast v1, Lo/createOrientationHelpers;

    const-string/jumbo v2, "vpa_account_selected"

    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 16
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
