.class final Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/inflate$onMessageChannelReady$ICustomTabsCallback;
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
.field private synthetic ICustomTabsCallback:Lo/inflate$onMessageChannelReady$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/inflate$onMessageChannelReady$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/inflate$onMessageChannelReady$ICustomTabsCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1639
    iget-object v0, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/inflate$onMessageChannelReady$ICustomTabsCallback;

    iget-object v0, v0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-object v0, v0, Lo/inflate$onMessageChannelReady;->onMessageChannelReady:Lo/inflate;

    iget-object v1, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/inflate$onMessageChannelReady$ICustomTabsCallback;

    iget-object v1, v1, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget v1, v1, Lo/inflate$onMessageChannelReady;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, -0x1

    .line 1640
    iget-object v2, p0, Lo/inflate$onMessageChannelReady$ICustomTabsCallback$2;->ICustomTabsCallback:Lo/inflate$onMessageChannelReady$ICustomTabsCallback;

    iget-object v2, v2, Lo/inflate$onMessageChannelReady$ICustomTabsCallback;->onPostMessage:Lo/inflate$onMessageChannelReady;

    iget-wide v2, v2, Lo/inflate$onMessageChannelReady;->onPostMessage:J

    const/4 v4, 0x0

    .line 1639
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/inflate;->onNavigationEvent(IJZ)V

    .line 623
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
