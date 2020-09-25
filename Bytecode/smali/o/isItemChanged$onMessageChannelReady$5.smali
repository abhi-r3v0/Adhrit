.class final Lo/isItemChanged$onMessageChannelReady$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isItemChanged$onMessageChannelReady;
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
.field private synthetic ICustomTabsCallback:Lo/isItemChanged$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/isItemChanged$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$onMessageChannelReady$5;->ICustomTabsCallback:Lo/isItemChanged$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1630
    iget-object v0, p0, Lo/isItemChanged$onMessageChannelReady$5;->ICustomTabsCallback:Lo/isItemChanged$onMessageChannelReady;

    iget-object v0, v0, Lo/isItemChanged$onMessageChannelReady;->onNavigationEvent:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->ICustomTabsCallback$Stub$Proxy(Lo/isItemChanged;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lo/isItemChanged$onMessageChannelReady$5;->ICustomTabsCallback:Lo/isItemChanged$onMessageChannelReady;

    iget-object v0, v0, Lo/isItemChanged$onMessageChannelReady;->onMessageChannelReady:Lo/getServerTime;

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 1632
    iget-object v0, p0, Lo/isItemChanged$onMessageChannelReady$5;->ICustomTabsCallback:Lo/isItemChanged$onMessageChannelReady;

    iget-object v0, v0, Lo/isItemChanged$onMessageChannelReady;->ICustomTabsCallback:Lo/updateAllRemainingSpans;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 67
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
