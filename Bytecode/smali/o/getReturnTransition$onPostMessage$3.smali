.class final Lo/getReturnTransition$onPostMessage$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getReturnTransition$onPostMessage;
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
.field private synthetic extraCallback:Lo/getReturnTransition$onPostMessage;


# direct methods
.method constructor <init>(Lo/getReturnTransition$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/getReturnTransition$onPostMessage$3;->extraCallback:Lo/getReturnTransition$onPostMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1128
    iget-object v0, p0, Lo/getReturnTransition$onPostMessage$3;->extraCallback:Lo/getReturnTransition$onPostMessage;

    iget-object v0, v0, Lo/getReturnTransition$onPostMessage;->onPostMessage:Lo/getReturnTransition;

    invoke-static {v0}, Lo/getReturnTransition;->onPostMessage(Lo/getReturnTransition;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lo/getReturnTransition$onPostMessage$3;->extraCallback:Lo/getReturnTransition$onPostMessage;

    iget-object v0, v0, Lo/getReturnTransition$onPostMessage;->extraCallback:Lo/getServerTime;

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 1130
    iget-object v0, p0, Lo/getReturnTransition$onPostMessage$3;->extraCallback:Lo/getReturnTransition$onPostMessage;

    iget-object v0, v0, Lo/getReturnTransition$onPostMessage;->onNavigationEvent:Lo/updateAllRemainingSpans;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 47
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
