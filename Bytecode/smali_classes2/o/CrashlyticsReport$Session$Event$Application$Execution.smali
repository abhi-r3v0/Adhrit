.class public final Lo/CrashlyticsReport$Session$Event$Application$Execution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;,
        Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/from<",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field private unregisterRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->callbacks:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Context must be non-null"

    .line 48
    invoke-static {v1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 53
    invoke-direct {p0}, Lo/CrashlyticsReport$Session$Event$Application$Execution;->configureNetworkMonitoring()V

    return-void
.end method

.method static synthetic access$100(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$300(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lo/CrashlyticsReport$Session$Event$Application$Execution;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method private configureNetworkMonitoring()V
    .locals 3

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$5;)V

    .line 76
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 77
    new-instance v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$5;

    invoke-direct {v1, p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$5;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$onMessageChannelReady;)V

    iput-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->unregisterRunnable:Ljava/lang/Runnable;

    return-void

    .line 85
    :cond_0
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$5;)V

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->context:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    new-instance v1, Lo/CrashlyticsReport$Session$Event$Application$Execution$1;

    invoke-direct {v1, p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$1;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution;Lo/CrashlyticsReport$Session$Event$Application$Execution$extraCallback;)V

    iput-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->unregisterRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final addCallback(Lo/from;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final shutdown()V
    .locals 1

    .line 65
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->unregisterRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution;->unregisterRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
