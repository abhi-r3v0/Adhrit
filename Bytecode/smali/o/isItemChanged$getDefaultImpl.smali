.class final Lo/isItemChanged$getDefaultImpl;
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
.field private synthetic ICustomTabsCallback:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$getDefaultImpl;->ICustomTabsCallback:Lo/isItemChanged;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SOURCE"

    const-string v2, "payment"

    .line 1595
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    sget-object v1, Lo/dispatchAddStarting;->onNavigationEvent:Lo/dispatchAddStarting$onNavigationEvent;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "checkout"

    const/4 v3, 0x0

    .line 2187
    invoke-static {v3, v1, v2}, Lo/dispatchAddStarting$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lo/dispatchAddStarting;

    move-result-object v1

    .line 1598
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1599
    iget-object v0, p0, Lo/isItemChanged$getDefaultImpl;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->getInterfaceDescriptor(Lo/isItemChanged;)Lo/isItemChanged$onPostMessage;

    move-result-object v0

    check-cast v0, Lo/dispatchAddStarting$onPostMessage;

    .line 3030
    iput-object v0, v1, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    .line 1600
    iget-object v0, p0, Lo/isItemChanged$getDefaultImpl;->ICustomTabsCallback:Lo/isItemChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v2, "UpiFragment"

    invoke-virtual {v1, v0, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method