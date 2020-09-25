.class final Lo/unregisterForContextMenu$onMessageChannelReady$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterForContextMenu$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic onNavigationEvent:Lo/unregisterForContextMenu$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/unregisterForContextMenu$onMessageChannelReady$5;->onNavigationEvent:Lo/unregisterForContextMenu$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 119
    iget-object v0, p0, Lo/unregisterForContextMenu$onMessageChannelReady$5;->onNavigationEvent:Lo/unregisterForContextMenu$onMessageChannelReady;

    iget-object v0, v0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    .line 1000
    iget-object v0, v0, Lo/unregisterForContextMenu;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lo/getMoveDuration;

    const-string v2, "manage-autopay?source=app"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    .line 119
    invoke-static/range {v1 .. v6}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 120
    iget-object v0, p0, Lo/unregisterForContextMenu$onMessageChannelReady$5;->onNavigationEvent:Lo/unregisterForContextMenu$onMessageChannelReady;

    iget-object v0, v0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    const/4 v1, 0x1

    .line 1049
    iput-boolean v1, v0, Lo/unregisterForContextMenu;->onNavigationEvent:Z

    .line 121
    iget-object v0, p0, Lo/unregisterForContextMenu$onMessageChannelReady$5;->onNavigationEvent:Lo/unregisterForContextMenu$onMessageChannelReady;

    iget-object v0, v0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    invoke-static {v0}, Lo/unregisterForContextMenu;->extraCallback(Lo/unregisterForContextMenu;)V

    return-void
.end method
