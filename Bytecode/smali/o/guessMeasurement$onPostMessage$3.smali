.class final Lo/guessMeasurement$onPostMessage$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/guessMeasurement$onPostMessage;
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
.field private synthetic onNavigationEvent:Lo/guessMeasurement$onPostMessage;


# direct methods
.method constructor <init>(Lo/guessMeasurement$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/guessMeasurement$onPostMessage$3;->onNavigationEvent:Lo/guessMeasurement$onPostMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1119
    iget-object v0, p0, Lo/guessMeasurement$onPostMessage$3;->onNavigationEvent:Lo/guessMeasurement$onPostMessage;

    iget-object v0, v0, Lo/guessMeasurement$onPostMessage;->extraCallback:Lo/guessMeasurement;

    invoke-static {v0}, Lo/guessMeasurement;->ICustomTabsCallback(Lo/guessMeasurement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lo/guessMeasurement$onPostMessage$3;->onNavigationEvent:Lo/guessMeasurement$onPostMessage;

    iget-object v0, v0, Lo/guessMeasurement$onPostMessage;->onMessageChannelReady:Lo/getServerTime;

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 1121
    iget-object v0, p0, Lo/guessMeasurement$onPostMessage$3;->onNavigationEvent:Lo/guessMeasurement$onPostMessage;

    iget-object v0, v0, Lo/guessMeasurement$onPostMessage;->ICustomTabsCallback:Lo/updateAllRemainingSpans;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 47
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
