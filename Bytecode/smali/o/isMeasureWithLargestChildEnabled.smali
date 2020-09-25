.class final Lo/isMeasureWithLargestChildEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBaselineAlignedChildIndex;


# instance fields
.field ICustomTabsCallback:Z

.field final extraCallback:Lo/getBaselineAlignedChildIndex$onMessageChannelReady;

.field private final onMessageChannelReady:Landroid/content/BroadcastReceiver;

.field private final onNavigationEvent:Landroid/content/Context;

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/getBaselineAlignedChildIndex$onMessageChannelReady;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/isMeasureWithLargestChildEnabled$4;

    invoke-direct {v0, p0}, Lo/isMeasureWithLargestChildEnabled$4;-><init>(Lo/isMeasureWithLargestChildEnabled;)V

    iput-object v0, p0, Lo/isMeasureWithLargestChildEnabled;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/isMeasureWithLargestChildEnabled;->onNavigationEvent:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lo/isMeasureWithLargestChildEnabled;->extraCallback:Lo/getBaselineAlignedChildIndex$onMessageChannelReady;

    return-void
.end method

.method static ICustomTabsCallback(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_2

    .line 86
    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    .line 95
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to determine connectivity status when connectivity changed"

    .line 96
    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0

    .line 1029
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 1052
    iget-boolean v0, p0, Lo/isMeasureWithLargestChildEnabled;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 1057
    iget-object v0, p0, Lo/isMeasureWithLargestChildEnabled;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback:Z

    .line 1060
    :try_start_0
    iget-object v0, p0, Lo/isMeasureWithLargestChildEnabled;->onNavigationEvent:Landroid/content/Context;

    iget-object v1, p0, Lo/isMeasureWithLargestChildEnabled;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1062
    iput-boolean v0, p0, Lo/isMeasureWithLargestChildEnabled;->onPostMessage:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    .line 1065
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Failed to register"

    .line 1066
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 1072
    iget-boolean v0, p0, Lo/isMeasureWithLargestChildEnabled;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lo/isMeasureWithLargestChildEnabled;->onNavigationEvent:Landroid/content/Context;

    iget-object v1, p0, Lo/isMeasureWithLargestChildEnabled;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1077
    iput-boolean v0, p0, Lo/isMeasureWithLargestChildEnabled;->onPostMessage:Z

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    return-void
.end method
