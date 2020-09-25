.class final Lo/getPaddingRight$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPaddingRight;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/nba/v1/viewholders/NBAHomeBaseHolder$setCompletionAnimation$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getPaddingRight;


# direct methods
.method constructor <init>(Lo/getPaddingRight;)V
    .locals 0

    iput-object p1, p0, Lo/getPaddingRight$onTransact;->onMessageChannelReady:Lo/getPaddingRight;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1164
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/getPaddingRight$onTransact;->onMessageChannelReady:Lo/getPaddingRight;

    invoke-static {v1}, Lo/getPaddingRight;->onNavigationEvent(Lo/getPaddingRight;)Lo/toLegacyStreamType;

    move-result-object v1

    invoke-interface {v1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "getLifecycleOwner().lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/getPaddingRight$onTransact$3;

    invoke-direct {v2, p0}, Lo/getPaddingRight$onTransact$3;-><init>(Lo/getPaddingRight$onTransact;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x12c

    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 56
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
