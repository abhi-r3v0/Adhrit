.class public final Lo/access$200$onNavigationEvent$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateDxDy$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/access$200$onNavigationEvent;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$2",
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
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/toDebugString$ICustomTabsCallback;

.field private synthetic onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 0

    iput-object p1, p0, Lo/access$200$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iput-object p2, p0, Lo/access$200$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 41
    iget-object v0, p0, Lo/access$200$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, v0, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Lo/createCallback;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lo/access$200$onNavigationEvent$ICustomTabsCallback;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iget-object v1, p0, Lo/access$200$onNavigationEvent$ICustomTabsCallback;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v1, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_0
    return-void
.end method
