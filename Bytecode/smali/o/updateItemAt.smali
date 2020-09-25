.class public final Lo/updateItemAt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001e\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0014J\u0018\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/utils/MainThread;",
        "",
        "()V",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "assertInMainThread",
        "",
        "assertNotInMainThread",
        "execute",
        "Ljava/io/Closeable;",
        "command",
        "Ljava/lang/Runnable;",
        "delay",
        "",
        "Lkotlin/Function0;",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/updateItemAt;

.field private static final onMessageChannelReady:Landroid/os/Handler;

.field private static final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lo/updateItemAt;

    invoke-direct {v0}, Lo/updateItemAt;-><init>()V

    sput-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lo/updateItemAt;->onMessageChannelReady:Landroid/os/Handler;

    .line 11
    sget-object v0, Lo/updateItemAt$onPostMessage;->ICustomTabsCallback:Lo/updateItemAt$onPostMessage;

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Lo/updateItemAt;->onPostMessage:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;
    .locals 2

    const-string p0, "command"

    .line 17
    invoke-static {p1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance p0, Lo/updateItemAt$extraCallback;

    invoke-direct {p0, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback()Ljava/util/concurrent/Executor;
    .locals 1

    .line 11
    sget-object v0, Lo/updateItemAt;->onPostMessage:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static onMessageChannelReady()Landroid/os/Handler;
    .locals 1

    .line 10
    sget-object v0, Lo/updateItemAt;->onMessageChannelReady:Landroid/os/Handler;

    return-object v0
.end method

.method public static onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;
    .locals 3

    const-string v0, "command"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 23
    sget-object p0, Lo/updateItemAt;->onMessageChannelReady:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lo/updateItemAt;->onMessageChannelReady:Landroid/os/Handler;

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    :goto_0
    new-instance p0, Lo/updateItemAt$ICustomTabsCallback;

    invoke-direct {p0, p2}, Lo/updateItemAt$ICustomTabsCallback;-><init>(Ljava/lang/Runnable;)V

    check-cast p0, Ljava/io/Closeable;

    return-object p0
.end method
