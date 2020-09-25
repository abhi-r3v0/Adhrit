.class public final Lo/getMaxAvailableHeight$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMaxAvailableHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/getMaxAvailableHeight;


# direct methods
.method public constructor <init>(Lo/getMaxAvailableHeight;IZ)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$newSession;->onPostMessage:Lo/getMaxAvailableHeight;

    iput p2, p0, Lo/getMaxAvailableHeight$newSession;->onNavigationEvent:I

    iput-boolean p3, p0, Lo/getMaxAvailableHeight$newSession;->onMessageChannelReady:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1224
    iget-object v0, p0, Lo/getMaxAvailableHeight$newSession;->onPostMessage:Lo/getMaxAvailableHeight;

    iget v1, p0, Lo/getMaxAvailableHeight$newSession;->onNavigationEvent:I

    .line 2218
    iput v1, v0, Lo/getMaxAvailableHeight;->onMessageChannelReady:I

    .line 1225
    iget-object v0, p0, Lo/getMaxAvailableHeight$newSession;->onPostMessage:Lo/getMaxAvailableHeight;

    iget-boolean v1, p0, Lo/getMaxAvailableHeight$newSession;->onMessageChannelReady:Z

    .line 2220
    iput-boolean v1, v0, Lo/getMaxAvailableHeight;->onPostMessage:Z

    .line 1226
    iget-object v0, p0, Lo/getMaxAvailableHeight$newSession;->onPostMessage:Lo/getMaxAvailableHeight;

    const/4 v1, 0x0

    .line 3219
    iput v1, v0, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    .line 1227
    iget-object v0, p0, Lo/getMaxAvailableHeight$newSession;->onPostMessage:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;)Lo/onMoveStarting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/onMoveStarting;->onPostMessage()V

    .line 45
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
