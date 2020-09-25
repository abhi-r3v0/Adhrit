.class public Lo/getLargeIcon;
.super Landroid/os/Handler;
.source ""


# static fields
.field private static propagator:Lo/setSmallIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private prepare(Landroid/os/Message;J)V
    .locals 1

    .line 23
    sget-object v0, Lo/getLargeIcon;->propagator:Lo/setSmallIcon;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p0, p1, p2, p3}, Lo/setSmallIcon;->ICustomTabsCallback(Lo/getLargeIcon;Landroid/os/Message;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 9
    sget-object v0, Lo/getLargeIcon;->propagator:Lo/setSmallIcon;

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lo/getLargeIcon;->dispatchMessageTraced(Landroid/os/Message;)V

    return-void

    .line 12
    :cond_0
    invoke-interface {v0, p0, p1}, Lo/setSmallIcon;->onMessageChannelReady(Lo/getLargeIcon;Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lo/getLargeIcon;->dispatchMessageTraced(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {v0, p0, p1, v1}, Lo/setSmallIcon;->onPostMessage(Lo/getLargeIcon;Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    .line 17
    :try_start_1
    invoke-interface {v0, p0, v2, v1}, Lo/setSmallIcon;->ICustomTabsCallback(Lo/getLargeIcon;Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 19
    invoke-interface {v0, p0, p1, v1}, Lo/setSmallIcon;->onPostMessage(Lo/getLargeIcon;Landroid/os/Message;Ljava/lang/Object;)V

    .line 20
    throw v2
.end method

.method protected dispatchMessageTraced(Landroid/os/Message;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lo/getLargeIcon;->prepare(Landroid/os/Message;J)V

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
