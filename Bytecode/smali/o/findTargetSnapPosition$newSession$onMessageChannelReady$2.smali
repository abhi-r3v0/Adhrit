.class final Lo/findTargetSnapPosition$newSession$onMessageChannelReady$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findTargetSnapPosition$newSession$onMessageChannelReady;
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
.field private synthetic onMessageChannelReady:Lo/findTargetSnapPosition$newSession$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/findTargetSnapPosition$newSession$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady$2;->onMessageChannelReady:Lo/findTargetSnapPosition$newSession$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1193
    iget-object v0, p0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady$2;->onMessageChannelReady:Lo/findTargetSnapPosition$newSession$onMessageChannelReady;

    iget-object v0, v0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;->onPostMessage:Lo/findTargetSnapPosition$newSession;

    iget-object v0, v0, Lo/findTargetSnapPosition$newSession;->onMessageChannelReady:Lo/findTargetSnapPosition;

    new-instance v1, Lo/getHorizontalHelper;

    iget-object v2, p0, Lo/findTargetSnapPosition$newSession$onMessageChannelReady$2;->onMessageChannelReady:Lo/findTargetSnapPosition$newSession$onMessageChannelReady;

    iget-object v2, v2, Lo/findTargetSnapPosition$newSession$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/getHorizontalHelper;-><init>(Ljava/lang/String;)V

    check-cast v1, Lo/computeDistancePerChild;

    invoke-virtual {v0, v1}, Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V

    .line 168
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
