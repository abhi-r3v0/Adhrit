.class public Lo/ResultReceiver$MyRunnable;
.super Lo/setSessionActivity;
.source ""

# interfaces
.implements Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;


# static fields
.field private static final onMessageChannelReady:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:Z

.field private onPostMessage:Lo/IResultReceiver$Stub$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmService"

    .line 37
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/ResultReceiver$MyRunnable;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/setSessionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 44
    invoke-super {p0}, Lo/setSessionActivity;->onCreate()V

    .line 1093
    new-instance v0, Lo/IResultReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Lo/IResultReceiver$Stub$Proxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ResultReceiver$MyRunnable;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    .line 1167
    iget-object v1, v0, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1168
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Throwable;

    const-string v4, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {v0, v1, v4, v3}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1173
    :cond_0
    iput-object p0, v0, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    .line 46
    :goto_0
    iput-boolean v2, p0, Lo/ResultReceiver$MyRunnable;->ICustomTabsCallback:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    invoke-super {p0}, Lo/setSessionActivity;->onDestroy()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lo/ResultReceiver$MyRunnable;->ICustomTabsCallback:Z

    .line 53
    iget-object v0, p0, Lo/ResultReceiver$MyRunnable;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    invoke-virtual {v0}, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 4

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lo/ResultReceiver$MyRunnable;->ICustomTabsCallback:Z

    .line 83
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/ResultReceiver$MyRunnable;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "All commands completed in dispatcher"

    invoke-virtual {v0, v1, v3, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 85
    invoke-static {}, Lo/onWindowStartingSupportActionMode;->extraCallback()V

    .line 88
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 58
    invoke-super {p0, p1, p2, p3}, Lo/setSessionActivity;->onStartCommand(Landroid/content/Intent;II)I

    .line 59
    iget-boolean p2, p0, Lo/ResultReceiver$MyRunnable;->ICustomTabsCallback:Z

    if-eqz p2, :cond_1

    .line 60
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object v0, Lo/ResultReceiver$MyRunnable;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Throwable;

    const-string v3, "Re-initializing SystemAlarmDispatcher after a request to shut-down."

    invoke-virtual {p2, v0, v3, v2}, Lo/setActiveQueueItemId;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 64
    iget-object p2, p0, Lo/ResultReceiver$MyRunnable;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    invoke-virtual {p2}, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady()V

    .line 2093
    new-instance p2, Lo/IResultReceiver$Stub$Proxy;

    invoke-direct {p2, p0}, Lo/IResultReceiver$Stub$Proxy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/ResultReceiver$MyRunnable;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    .line 2167
    iget-object v0, p2, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 2168
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p2

    sget-object v0, Lo/IResultReceiver$Stub$Proxy;->ICustomTabsCallback:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Throwable;

    const-string v3, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {p2, v0, v3, v2}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2173
    :cond_0
    iput-object p0, p2, Lo/IResultReceiver$Stub$Proxy;->getInterfaceDescriptor:Lo/IResultReceiver$Stub$Proxy$onMessageChannelReady;

    .line 68
    :goto_0
    iput-boolean v1, p0, Lo/ResultReceiver$MyRunnable;->ICustomTabsCallback:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 72
    iget-object p2, p0, Lo/ResultReceiver$MyRunnable;->onPostMessage:Lo/IResultReceiver$Stub$Proxy;

    invoke-virtual {p2, p1, p3}, Lo/IResultReceiver$Stub$Proxy;->onMessageChannelReady(Landroid/content/Intent;I)Z

    :cond_2
    const/4 p1, 0x3

    return p1
.end method
