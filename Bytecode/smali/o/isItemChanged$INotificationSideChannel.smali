.class final Lo/isItemChanged$INotificationSideChannel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isItemChanged;
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
        "<no name provided>",
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
.field private synthetic onPostMessage:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$INotificationSideChannel;->onPostMessage:Lo/isItemChanged;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1564
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SOURCE"

    const-string v2, "payment"

    .line 1565
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    sget-object v1, Lo/dispatchAddStarting;->onNavigationEvent:Lo/dispatchAddStarting$onNavigationEvent;

    .line 1567
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "link_account"

    const-string v3, "checkout"

    .line 1566
    invoke-static {v2, v1, v3}, Lo/dispatchAddStarting$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lo/dispatchAddStarting;

    move-result-object v1

    .line 1570
    iget-object v2, p0, Lo/isItemChanged$INotificationSideChannel;->onPostMessage:Lo/isItemChanged;

    .line 2077
    iget-object v2, v2, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz v2, :cond_0

    .line 2218
    iget-object v2, v2, Lo/calculateScrollDistance;->extraCallback:Lo/add;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3036
    :goto_0
    iput-object v2, v1, Lo/dispatchAddStarting;->onPostMessage:Lo/add;

    .line 1571
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1572
    iget-object v0, p0, Lo/isItemChanged$INotificationSideChannel;->onPostMessage:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->getInterfaceDescriptor(Lo/isItemChanged;)Lo/isItemChanged$onPostMessage;

    move-result-object v0

    check-cast v0, Lo/dispatchAddStarting$onPostMessage;

    .line 4030
    iput-object v0, v1, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    .line 1573
    iget-object v0, p0, Lo/isItemChanged$INotificationSideChannel;->onPostMessage:Lo/isItemChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v2, "UpiFragment"

    invoke-virtual {v1, v0, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
