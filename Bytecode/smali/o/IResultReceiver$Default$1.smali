.class final Lo/IResultReceiver$Default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/IResultReceiver$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/onDestroy;

.field final synthetic onPostMessage:Lo/IResultReceiver$Default;


# direct methods
.method constructor <init>(Lo/IResultReceiver$Default;Lo/onDestroy;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lo/IResultReceiver$Default$1;->onPostMessage:Lo/IResultReceiver$Default;

    iput-object p2, p0, Lo/IResultReceiver$Default$1;->extraCallback:Lo/onDestroy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 74
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/IResultReceiver$Default;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/IResultReceiver$Default$1;->extraCallback:Lo/onDestroy;

    iget-object v4, v4, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Scheduling work %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lo/IResultReceiver$Default$1;->onPostMessage:Lo/IResultReceiver$Default;

    iget-object v0, v0, Lo/IResultReceiver$Default;->onMessageChannelReady:Lo/PlaybackStateCompatApi21$CustomAction;

    new-array v1, v2, [Lo/onDestroy;

    iget-object v2, p0, Lo/IResultReceiver$Default$1;->extraCallback:Lo/onDestroy;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lo/PlaybackStateCompatApi21$CustomAction;->onMessageChannelReady([Lo/onDestroy;)V

    return-void
.end method
