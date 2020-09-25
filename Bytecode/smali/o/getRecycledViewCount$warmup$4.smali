.class final Lo/getRecycledViewCount$warmup$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRecycledViewCount$warmup;
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
.field private synthetic onPostMessage:Lo/getRecycledViewCount$warmup;


# direct methods
.method constructor <init>(Lo/getRecycledViewCount$warmup;)V
    .locals 0

    iput-object p1, p0, Lo/getRecycledViewCount$warmup$4;->onPostMessage:Lo/getRecycledViewCount$warmup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1198
    iget-object v0, p0, Lo/getRecycledViewCount$warmup$4;->onPostMessage:Lo/getRecycledViewCount$warmup;

    iget-object v0, v0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-virtual {v0}, Lo/onAudioInfoChanged;->m_()V

    .line 1199
    iget-object v0, p0, Lo/getRecycledViewCount$warmup$4;->onPostMessage:Lo/getRecycledViewCount$warmup;

    iget-object v0, v0, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-static {v0}, Lo/getRecycledViewCount;->onMessageChannelReady(Lo/getRecycledViewCount;)Lo/getMoveDuration;

    move-result-object v0

    new-instance v1, Lo/factorInCreateTime$extraCallback;

    iget-object v2, p0, Lo/getRecycledViewCount$warmup$4;->onPostMessage:Lo/getRecycledViewCount$warmup;

    iget-object v2, v2, Lo/getRecycledViewCount$warmup;->onNavigationEvent:Lo/getRecycledViewCount;

    invoke-static {v2}, Lo/getRecycledViewCount;->onPostMessage(Lo/getRecycledViewCount;)Lo/getRecycledViewCount$onMessageChannelReady;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1211
    iget-object v2, v2, Lo/getRecycledViewCount$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1199
    :goto_0
    invoke-direct {v1, v2}, Lo/factorInCreateTime$extraCallback;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1417
    new-instance v2, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;

    invoke-direct {v2, v1}, Lo/onGetChildDrawingOrder$MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal;-><init>(Lo/factorInCreateTime$extraCallback;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v0, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 42
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
