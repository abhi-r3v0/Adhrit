.class final Lo/onAnimationFinished$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAnimationFinished;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "cacheResponse",
        "Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;",
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
.field private synthetic onMessageChannelReady:Lo/onDisconnectSetValue;


# direct methods
.method constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/onAnimationFinished$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 31
    check-cast p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;

    if-eqz p1, :cond_1

    .line 2020
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3020
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlResponse;->onMessageChannelReady:Ljava/util/List;

    .line 1056
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/onAnimationFinished$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1057
    :cond_0
    iget-object p1, p0, Lo/onAnimationFinished$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1058
    :cond_1
    iget-object p1, p0, Lo/onAnimationFinished$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectSetValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method