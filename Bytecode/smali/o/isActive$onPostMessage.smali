.class final Lo/isActive$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isActive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setCallback;

.field final onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Lo/setCallback;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lo/isActive$onPostMessage;->onPostMessage:Z

    .line 98
    iput-object p1, p0, Lo/isActive$onPostMessage;->ICustomTabsCallback:Lo/setCallback;

    .line 99
    iput-object p2, p0, Lo/isActive$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lo/isActive$onPostMessage;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lo/isActive$onPostMessage;->ICustomTabsCallback:Lo/setCallback;

    iget-object v1, p0, Lo/isActive$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 1130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lo/isActive$onPostMessage;->onPostMessage:Z

    :cond_0
    return-void
.end method
