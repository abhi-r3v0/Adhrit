.class public final Lo/setOffscreenPageLimit;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setOffscreenPageLimit$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static asBinder:Lo/setOffscreenPageLimit;

.field public static final extraCallback:J


# instance fields
.field public ICustomTabsCallback:J

.field private volatile ICustomTabsCallback$Stub:Z

.field private volatile asInterface:Ljava/io/File;

.field public final onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

.field public volatile onNavigationEvent:Landroid/os/StatFs;

.field public volatile onPostMessage:Landroid/os/StatFs;

.field private volatile onTransact:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/setOffscreenPageLimit;->extraCallback:J

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lo/setOffscreenPageLimit;->onPostMessage:Landroid/os/StatFs;

    .line 64
    iput-object v0, p0, Lo/setOffscreenPageLimit;->onNavigationEvent:Landroid/os/StatFs;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lo/setOffscreenPageLimit;->ICustomTabsCallback$Stub:Z

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private static onNavigationEvent(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p0, :cond_1

    .line 290
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 1313
    new-instance p1, Landroid/os/StatFs;

    invoke-direct {p1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    move-object p0, p1

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2151
    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 2152
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_0
    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static declared-synchronized onPostMessage()Lo/setOffscreenPageLimit;
    .locals 2

    const-class v0, Lo/setOffscreenPageLimit;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lo/setOffscreenPageLimit;->asBinder:Lo/setOffscreenPageLimit;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lo/setOffscreenPageLimit;

    invoke-direct {v1}, Lo/setOffscreenPageLimit;-><init>()V

    sput-object v1, Lo/setOffscreenPageLimit;->asBinder:Lo/setOffscreenPageLimit;

    .line 77
    :cond_0
    sget-object v1, Lo/setOffscreenPageLimit;->asBinder:Lo/setOffscreenPageLimit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 2

    .line 271
    iget-object v0, p0, Lo/setOffscreenPageLimit;->onPostMessage:Landroid/os/StatFs;

    iget-object v1, p0, Lo/setOffscreenPageLimit;->onTransact:Ljava/io/File;

    invoke-static {v0, v1}, Lo/setOffscreenPageLimit;->onNavigationEvent(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lo/setOffscreenPageLimit;->onPostMessage:Landroid/os/StatFs;

    .line 272
    iget-object v0, p0, Lo/setOffscreenPageLimit;->onNavigationEvent:Landroid/os/StatFs;

    iget-object v1, p0, Lo/setOffscreenPageLimit;->asInterface:Ljava/io/File;

    invoke-static {v0, v1}, Lo/setOffscreenPageLimit;->onNavigationEvent(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    move-result-object v0

    iput-object v0, p0, Lo/setOffscreenPageLimit;->onNavigationEvent:Landroid/os/StatFs;

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/setOffscreenPageLimit;->ICustomTabsCallback:J

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lo/setOffscreenPageLimit;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lo/setOffscreenPageLimit;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lo/setOffscreenPageLimit;->onTransact:Ljava/io/File;

    .line 97
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lo/setOffscreenPageLimit;->asInterface:Ljava/io/File;

    .line 98
    invoke-virtual {p0}, Lo/setOffscreenPageLimit;->ICustomTabsCallback()V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lo/setOffscreenPageLimit;->ICustomTabsCallback$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    iget-object v0, p0, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lo/setOffscreenPageLimit;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    return-void
.end method
