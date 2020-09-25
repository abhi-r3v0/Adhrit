.class public final Lo/getTextOn$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateDxDy$onMessageChannelReady;


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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/androidapp/core/UiHandlerKt$postUiInternal$1",
        "Lcom/dreamplug/utils/helpers/Cancellable;",
        "cancelled",
        "",
        "getCancelled",
        "()Z",
        "setCancelled",
        "(Z)V",
        "cancel",
        "",
        "isCancelled",
        "isDone",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/Runnable;

.field private synthetic onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onPostMessage:Lo/setTextOn;


# direct methods
.method constructor <init>(Lo/setTextOn;Ljava/lang/Runnable;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/getTextOn$extraCallback;->onPostMessage:Lo/setTextOn;

    iput-object p2, p0, Lo/getTextOn$extraCallback;->ICustomTabsCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lo/getTextOn$extraCallback;->onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/getTextOn$extraCallback;->onPostMessage:Lo/setTextOn;

    iget-object v1, p0, Lo/getTextOn$extraCallback;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lo/setTextOn;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, p0, Lo/getTextOn$extraCallback;->onMessageChannelReady:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/updateDxDy$onMessageChannelReady;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method
