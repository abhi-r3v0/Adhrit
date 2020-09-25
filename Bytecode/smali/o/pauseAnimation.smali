.class public final Lo/pauseAnimation;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Lo/pauseAnimation;


# instance fields
.field private final ICustomTabsCallback:Lo/setProgress$extraCallback;

.field private onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lo/addValueCallback;

    invoke-direct {v0}, Lo/addValueCallback;-><init>()V

    iput-object v0, p0, Lo/pauseAnimation;->ICustomTabsCallback:Lo/setProgress$extraCallback;

    .line 1063
    invoke-interface {v0}, Lo/setProgress$extraCallback;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/pauseAnimation;->onPostMessage:I

    return-void
.end method

.method public static declared-synchronized ICustomTabsCallback()Lo/pauseAnimation;
    .locals 2

    const-class v0, Lo/pauseAnimation;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-object v1, Lo/pauseAnimation;->onNavigationEvent:Lo/pauseAnimation;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lo/pauseAnimation;

    invoke-direct {v1}, Lo/pauseAnimation;-><init>()V

    sput-object v1, Lo/pauseAnimation;->onNavigationEvent:Lo/pauseAnimation;

    .line 111
    :cond_0
    sget-object v1, Lo/pauseAnimation;->onNavigationEvent:Lo/pauseAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static onNavigationEvent(ILjava/io/InputStream;[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 86
    array-length v0, p2

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 93
    invoke-static {p1, p2, p0}, Lo/getTrimPathOffset;->onNavigationEvent(Ljava/io/InputStream;[BI)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    throw p0

    .line 98
    :cond_1
    invoke-static {p1, p2, p0}, Lo/getTrimPathOffset;->onNavigationEvent(Ljava/io/InputStream;[BI)I

    move-result p0

    return p0

    .line 3111
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_3
    const/4 p0, 0x0

    .line 1215
    throw p0
.end method

.method public static onPostMessage(Ljava/io/InputStream;)Lo/setProgress;
    .locals 3

    .line 3125
    :try_start_0
    invoke-static {}, Lo/pauseAnimation;->ICustomTabsCallback()Lo/pauseAnimation;

    move-result-object v0

    if-eqz p0, :cond_1

    .line 4043
    iget v1, v0, Lo/pauseAnimation;->onPostMessage:I

    new-array v1, v1, [B

    .line 4044
    iget v2, v0, Lo/pauseAnimation;->onPostMessage:I

    invoke-static {v2, p0, v1}, Lo/pauseAnimation;->onNavigationEvent(ILjava/io/InputStream;[B)I

    move-result p0

    .line 4046
    iget-object v0, v0, Lo/pauseAnimation;->ICustomTabsCallback:Lo/setProgress$extraCallback;

    invoke-interface {v0, v1, p0}, Lo/setProgress$extraCallback;->onPostMessage([BI)Lo/setProgress;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4047
    sget-object v0, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-eq p0, v0, :cond_0

    return-object p0

    .line 4059
    :cond_0
    sget-object p0, Lo/setProgress;->onPostMessage:Lo/setProgress;

    return-object p0

    .line 4215
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 5151
    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 5152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
