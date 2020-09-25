.class public Lo/MediaBrowserCompat$ItemCallback;
.super Lo/MediaBrowserCompat$ItemReceiver;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/util/concurrent/Executor;

.field private static volatile onMessageChannelReady:Lo/MediaBrowserCompat$ItemCallback;


# instance fields
.field public extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

.field private onNavigationEvent:Lo/MediaBrowserCompat$ItemReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lo/MediaBrowserCompat$ItemCallback$1;

    invoke-direct {v0}, Lo/MediaBrowserCompat$ItemCallback$1;-><init>()V

    sput-object v0, Lo/MediaBrowserCompat$ItemCallback;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lo/MediaBrowserCompat$ItemReceiver;-><init>()V

    .line 58
    new-instance v0, Lo/onReceiveResult;

    invoke-direct {v0}, Lo/onReceiveResult;-><init>()V

    iput-object v0, p0, Lo/MediaBrowserCompat$ItemCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ItemReceiver;

    .line 59
    iput-object v0, p0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    return-void
.end method

.method public static extraCallback()Lo/MediaBrowserCompat$ItemCallback;
    .locals 2

    .line 69
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ItemCallback;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ItemCallback;

    return-object v0

    .line 72
    :cond_0
    const-class v0, Lo/MediaBrowserCompat$ItemCallback;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lo/MediaBrowserCompat$ItemCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ItemCallback;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lo/MediaBrowserCompat$ItemCallback;

    invoke-direct {v1}, Lo/MediaBrowserCompat$ItemCallback;-><init>()V

    sput-object v1, Lo/MediaBrowserCompat$ItemCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ItemCallback;

    .line 76
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ItemCallback;

    return-object v0

    :catchall_0
    move-exception v1

    .line 76
    monitor-exit v0

    throw v1
.end method

.method public static onNavigationEvent()Ljava/util/concurrent/Executor;
    .locals 1

    .line 111
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback;->ICustomTabsCallback:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ItemReceiver;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public final extraCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ItemReceiver;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Runnable;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$ItemReceiver;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void
.end method
