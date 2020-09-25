.class final Lo/setMediaButtonReceiver$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/setMediaButtonReceiver;


# direct methods
.method constructor <init>(Lo/setMediaButtonReceiver;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/setMediaButtonReceiver$2;->onPostMessage:Lo/setMediaButtonReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lo/setMediaButtonReceiver$2;->onPostMessage:Lo/setMediaButtonReceiver;

    .line 1141
    iget v1, v0, Lo/setMediaButtonReceiver;->extraCallback:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1142
    iput-boolean v1, v0, Lo/setMediaButtonReceiver;->onPostMessage:Z

    .line 1143
    iget-object v0, v0, Lo/setMediaButtonReceiver;->onMessageChannelReady:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 2130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 2131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lo/setMediaButtonReceiver$2;->onPostMessage:Lo/setMediaButtonReceiver;

    invoke-virtual {v0}, Lo/setMediaButtonReceiver;->ICustomTabsCallback()V

    return-void
.end method
