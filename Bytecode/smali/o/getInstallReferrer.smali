.class public Lo/getInstallReferrer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/CustomVersionedParcelable;

.field private final ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

.field private final asBinder:Ljava/util/concurrent/Executor;

.field private final asInterface:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field public final extraCallback:Lo/setStrokeColor;

.field private final onMessageChannelReady:Lo/setTitleMarginTop$ICustomTabsCallback;

.field private final onPostMessage:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lo/getInstallReferrer;

    sput-object v0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lo/setStrokeColor;Lo/CustomVersionedParcelable;Lo/setTitleMarginTop$ICustomTabsCallback;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lo/getInstallReferrer;->extraCallback:Lo/setStrokeColor;

    .line 56
    iput-object p2, p0, Lo/getInstallReferrer;->ICustomTabsCallback:Lo/CustomVersionedParcelable;

    .line 57
    iput-object p3, p0, Lo/getInstallReferrer;->onMessageChannelReady:Lo/setTitleMarginTop$ICustomTabsCallback;

    .line 58
    iput-object p4, p0, Lo/getInstallReferrer;->onPostMessage:Ljava/util/concurrent/Executor;

    .line 59
    iput-object p5, p0, Lo/getInstallReferrer;->asBinder:Ljava/util/concurrent/Executor;

    .line 60
    iput-object p6, p0, Lo/getInstallReferrer;->asInterface:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 61
    invoke-static {}, Lo/getGooglePlayInstantParam;->extraCallback()Lo/getGooglePlayInstantParam;

    move-result-object p1

    iput-object p1, p0, Lo/getInstallReferrer;->ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getInstallReferrer;)Lo/setTitleMarginTop$ICustomTabsCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/getInstallReferrer;->onMessageChannelReady:Lo/setTitleMarginTop$ICustomTabsCallback;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/getInstallReferrer;)Lo/MediaSessionCompat$1$onMessageChannelReady;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/getInstallReferrer;->asInterface:Lo/MediaSessionCompat$1$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/getInstallReferrer;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
    .locals 3

    .line 6445
    sget-object v0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "About to write to disk-cache for key %s"

    invoke-static {v0, v2, v1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6447
    :try_start_0
    iget-object v0, p0, Lo/getInstallReferrer;->extraCallback:Lo/setStrokeColor;

    new-instance v1, Lo/getInstallReferrer$4;

    invoke-direct {v1, p0, p2}, Lo/getInstallReferrer$4;-><init>(Lo/getInstallReferrer;Lo/getCardBackgroundColor;)V

    invoke-interface {v0, p1, v1}, Lo/setStrokeColor;->onMessageChannelReady(Lo/invalidateSpanInfo;Lo/ThreadUtil$MainThreadCallback;)Lo/findLastReferenceChildPosition;

    .line 6456
    sget-object p0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string p2, "Successful disk-cache write for key %s"

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6460
    sget-object p2, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Failed to write to disk-cache for key %s"

    invoke-static {p2, p0, p1, v0}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/getInstallReferrer;Lo/invalidateSpanInfo;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lo/getInstallReferrer;->onPostMessage(Lo/invalidateSpanInfo;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private onMessageChannelReady(Lo/invalidateSpanInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/getDrawerToggleDelegate;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/invalidateSpanInfo;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    .line 220
    :try_start_0
    new-instance v0, Lo/getInstallReferrer$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p1}, Lo/getInstallReferrer$3;-><init>(Lo/getInstallReferrer;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/invalidateSpanInfo;)V

    iget-object p2, p0, Lo/getInstallReferrer;->onPostMessage:Ljava/util/concurrent/Executor;

    invoke-static {v0, p2}, Lo/getDrawerToggleDelegate;->onMessageChannelReady(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 274
    sget-object v0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to schedule disk-cache read for %s"

    invoke-static {v0, p2, p1, v1}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {p2}, Lo/getDrawerToggleDelegate;->onMessageChannelReady(Ljava/lang/Exception;)Lo/getDrawerToggleDelegate;

    move-result-object p1

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/getInstallReferrer;)Lo/getGooglePlayInstantParam;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/getInstallReferrer;->ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/getInstallReferrer;)Lo/setStrokeColor;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/getInstallReferrer;->extraCallback:Lo/setStrokeColor;

    return-object p0
.end method

.method private onPostMessage(Lo/invalidateSpanInfo;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    :try_start_0
    sget-object v0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string v1, "Disk cache read for %s"

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    iget-object v0, p0, Lo/getInstallReferrer;->extraCallback:Lo/setStrokeColor;

    invoke-interface {v0, p1}, Lo/setStrokeColor;->onNavigationEvent(Lo/invalidateSpanInfo;)Lo/findLastReferenceChildPosition;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    sget-object v0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string v1, "Disk cache miss for %s"

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 415
    :cond_0
    sget-object v1, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string v2, "Found entry in disk cache for %s"

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    invoke-interface {v0}, Lo/findLastReferenceChildPosition;->extraCallback()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :try_start_1
    iget-object v2, p0, Lo/getInstallReferrer;->ICustomTabsCallback:Lo/CustomVersionedParcelable;

    invoke-interface {v0}, Lo/findLastReferenceChildPosition;->onMessageChannelReady()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-interface {v2, v1, v0}, Lo/CustomVersionedParcelable;->onPostMessage(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 427
    sget-object v1, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string v2, "Successful read from disk cache for %s"

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 424
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 433
    sget-object v1, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Exception reading from cache for %s"

    invoke-static {v1, v0, p1, v2}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    throw v0
.end method

.method static synthetic onPostMessage()Ljava/lang/Class;
    .locals 1

    .line 37
    sget-object v0, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/invalidateSpanInfo;)Lo/getDrawerToggleDelegate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/invalidateSpanInfo;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 334
    iget-object v1, p0, Lo/getInstallReferrer;->ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

    invoke-virtual {v1, p1}, Lo/getGooglePlayInstantParam;->onNavigationEvent(Lo/invalidateSpanInfo;)Z

    .line 337
    :try_start_0
    new-instance v1, Lo/getInstallReferrer$1;

    invoke-direct {v1, p0, v0, p1}, Lo/getInstallReferrer$1;-><init>(Lo/getInstallReferrer;Ljava/lang/Object;Lo/invalidateSpanInfo;)V

    iget-object v0, p0, Lo/getInstallReferrer;->asBinder:Ljava/util/concurrent/Executor;

    invoke-static {v1, v0}, Lo/getDrawerToggleDelegate;->onMessageChannelReady(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Failed to schedule disk-cache remove for %s"

    invoke-static {v1, v0, p1, v2}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    invoke-static {v0}, Lo/getDrawerToggleDelegate;->onMessageChannelReady(Ljava/lang/Exception;)Lo/getDrawerToggleDelegate;

    move-result-object p1

    return-object p1

    .line 5215
    :cond_0
    throw v0
.end method

.method public final extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
    .locals 7

    .line 285
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2435
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lo/getInstallReferrer;->ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

    invoke-virtual {v2, p1, p2}, Lo/getGooglePlayInstantParam;->onNavigationEvent(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 4095
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->ICustomTabsCallback()Lo/getCardBackgroundColor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 300
    :goto_1
    :try_start_1
    iget-object v4, p0, Lo/getInstallReferrer;->asBinder:Ljava/util/concurrent/Executor;

    new-instance v5, Lo/getInstallReferrer$2;

    invoke-direct {v5, p0, v2, p1, v3}, Lo/getInstallReferrer$2;-><init>(Lo/getInstallReferrer;Ljava/lang/Object;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 320
    :try_start_2
    sget-object v4, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string v5, "Failed to schedule disk-cache write for %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-static {v4, v2, v5, v0}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v0, p0, Lo/getInstallReferrer;->ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

    invoke-virtual {v0, p1, p2}, Lo/getGooglePlayInstantParam;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)Z

    if-eqz v3, :cond_2

    .line 4425
    invoke-virtual {v3}, Lo/getCardBackgroundColor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :cond_2
    :goto_2
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 3111
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2215
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 325
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 326
    throw p1
.end method

.method public final onNavigationEvent(Lo/invalidateSpanInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/getDrawerToggleDelegate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/invalidateSpanInfo;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lo/getDrawerToggleDelegate<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation

    .line 142
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 145
    iget-object v0, p0, Lo/getInstallReferrer;->ICustomTabsCallback$Stub:Lo/getGooglePlayInstantParam;

    invoke-virtual {v0, p1}, Lo/getGooglePlayInstantParam;->onPostMessage(Lo/invalidateSpanInfo;)Lo/getCardBackgroundColor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1399
    sget-object p2, Lo/getInstallReferrer;->onNavigationEvent:Ljava/lang/Class;

    const-string v1, "Found image for %s in staging area"

    invoke-interface {p1}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1401
    invoke-static {v0}, Lo/getDrawerToggleDelegate;->onMessageChannelReady(Ljava/lang/Object;)Lo/getDrawerToggleDelegate;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    .line 149
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lo/getInstallReferrer;->onMessageChannelReady(Lo/invalidateSpanInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/getDrawerToggleDelegate;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 152
    throw p1
.end method
