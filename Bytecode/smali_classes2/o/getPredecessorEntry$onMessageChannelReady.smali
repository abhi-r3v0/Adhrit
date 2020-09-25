.class final Lo/getPredecessorEntry$onMessageChannelReady;
.super Lo/insert;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;,
        Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private final extraCallback:Lo/insert;

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Ljava/lang/Runnable;

.field private final onPostMessage:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lo/insert;Landroid/content/Context;)V
    .locals 1

    .line 170
    invoke-direct {p0}, Lo/insert;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Object;

    .line 171
    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    .line 172
    iput-object p2, p0, Lo/getPredecessorEntry$onMessageChannelReady;->ICustomTabsCallback:Landroid/content/Context;

    if-eqz p2, :cond_1

    const-string p1, "connectivity"

    .line 176
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onPostMessage:Landroid/net/ConnectivityManager;

    .line 1195
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onPostMessage:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 1196
    new-instance p1, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;

    invoke-direct {p1, p0, v0}, Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;-><init>(Lo/getPredecessorEntry$onMessageChannelReady;B)V

    .line 1197
    iget-object p2, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onPostMessage:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1198
    new-instance p2, Lo/getPredecessorEntry$onMessageChannelReady$5;

    invoke-direct {p2, p0, p1}, Lo/getPredecessorEntry$onMessageChannelReady$5;-><init>(Lo/getPredecessorEntry$onMessageChannelReady;Lo/getPredecessorEntry$onMessageChannelReady$onPostMessage;)V

    iput-object p2, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    return-void

    .line 1207
    :cond_0
    new-instance p1, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {p1, p0, v0}, Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;-><init>(Lo/getPredecessorEntry$onMessageChannelReady;B)V

    .line 1208
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1211
    new-instance p2, Lo/getPredecessorEntry$onMessageChannelReady$3;

    invoke-direct {p2, p0, p1}, Lo/getPredecessorEntry$onMessageChannelReady$3;-><init>(Lo/getPredecessorEntry$onMessageChannelReady;Lo/getPredecessorEntry$onMessageChannelReady$onMessageChannelReady;)V

    iput-object p2, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "AndroidChannelBuilder"

    const-string v0, "Failed to configure network monitoring. Does app have ACCESS_NETWORK_STATE permission?"

    .line 180
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onPostMessage:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getPredecessorEntry$onMessageChannelReady;)Landroid/content/Context;
    .locals 0

    .line 157
    iget-object p0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->ICustomTabsCallback:Landroid/content/Context;

    return-object p0
.end method

.method private ICustomTabsCallback()V
    .locals 2

    .line 223
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    .line 226
    iput-object v1, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    .line 228
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic extraCallback(Lo/getPredecessorEntry$onMessageChannelReady;)Lo/insert;
    .locals 0

    .line 157
    iget-object p0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/getPredecessorEntry$onMessageChannelReady;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 157
    iget-object p0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->onPostMessage:Landroid/net/ConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public final asBinder()V
    .locals 1

    .line 286
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->asBinder()V

    return-void
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0}, Lo/pruneCache;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback(Z)Lo/setTransactionSuccessful;
    .locals 1

    .line 271
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0, p1}, Lo/insert;->extraCallback(Z)Lo/setTransactionSuccessful;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()Lo/insert;
    .locals 1

    .line 249
    invoke-direct {p0}, Lo/getPredecessorEntry$onMessageChannelReady;->ICustomTabsCallback()V

    .line 250
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->onMessageChannelReady()Lo/insert;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0, p1, p2, p3}, Lo/insert;->onMessageChannelReady(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()Lo/insert;
    .locals 1

    .line 233
    invoke-direct {p0}, Lo/getPredecessorEntry$onMessageChannelReady;->ICustomTabsCallback()V

    .line 234
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->onNavigationEvent()Lo/insert;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TRequestT;TResponseT;>;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0, p1, p2}, Lo/pruneCache;->onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()V
    .locals 1

    .line 281
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0}, Lo/insert;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lo/getPredecessorEntry$onMessageChannelReady;->extraCallback:Lo/insert;

    invoke-virtual {v0, p1, p2}, Lo/insert;->onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V

    return-void
.end method
