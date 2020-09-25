.class public final Lo/getTextOn$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTextOn;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;Lo/setTextOn;)Lo/updateDxDy$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field public final synthetic onNavigationEvent:Lo/getServerTime;

.field public final synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/getServerTime;Lo/toDebugString$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/getTextOn$onMessageChannelReady;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iput-object p2, p0, Lo/getTextOn$onMessageChannelReady;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p3, p0, Lo/getTextOn$onMessageChannelReady;->onNavigationEvent:Lo/getServerTime;

    iput-object p4, p0, Lo/getTextOn$onMessageChannelReady;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 74
    iget-object v0, p0, Lo/getTextOn$onMessageChannelReady;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v1, p0, Lo/getTextOn$onMessageChannelReady;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 105
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 106
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 107
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lo/getTextOn$onMessageChannelReady;->onNavigationEvent:Lo/getServerTime;

    invoke-interface {v3}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 76
    iget-object v3, p0, Lo/getTextOn$onMessageChannelReady;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v6, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 109
    iput-boolean v6, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v3, v5, :cond_2

    .line 111
    new-instance v3, Lcom/dreamplug/androidapp/core/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v3, v1, v2, p0}, Lcom/dreamplug/androidapp/core/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getTextOn$onMessageChannelReady;)V

    check-cast v3, Lo/createCallback;

    iput-object v3, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 112
    iget-object v2, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/createCallback;

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 114
    :cond_2
    :goto_0
    new-instance v2, Lo/getTextOn$onMessageChannelReady$extraCallback;

    invoke-direct {v2, v4, v1}, Lo/getTextOn$onMessageChannelReady$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    check-cast v2, Lo/updateDxDy$onMessageChannelReady;

    iput-object v2, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method
