.class public final Lo/zza;
.super Lo/ImmLeaksCleaner;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zza$extraCallback;,
        Lo/zza$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ImmLeaksCleaner<",
        "Lo/onCreate;",
        ">;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback$Stub:Lo/zza$ICustomTabsCallback;

.field private final onMessageChannelReady:Landroid/net/ConnectivityManager;

.field private onRelationshipValidationResult:Lo/zza$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkStateTracker"

    .line 54
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lo/ImmLeaksCleaner;-><init>(Landroid/content/Context;Lo/supportShouldUpRecreateTask;)V

    .line 69
    iget-object p1, p0, Lo/ImmLeaksCleaner;->onPostMessage:Landroid/content/Context;

    const-string p2, "connectivity"

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    .line 1130
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 72
    new-instance p1, Lo/zza$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/zza$ICustomTabsCallback;-><init>(Lo/zza;)V

    iput-object p1, p0, Lo/zza;->ICustomTabsCallback$Stub:Lo/zza$ICustomTabsCallback;

    return-void

    .line 74
    :cond_1
    new-instance p1, Lo/zza$extraCallback;

    invoke-direct {p1, p0}, Lo/zza$extraCallback;-><init>(Lo/zza;)V

    iput-object p1, p0, Lo/zza;->onRelationshipValidationResult:Lo/zza$extraCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    .line 2130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 87
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "Registering network callback"

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 88
    iget-object v0, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lo/zza;->ICustomTabsCallback$Stub:Lo/zza$ICustomTabsCallback;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 94
    :goto_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v0, v1, v2

    const-string v0, "Received exception while registering network callback"

    invoke-virtual {v3, v4, v0, v1}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Registering broadcast receiver"

    invoke-virtual {v0, v1, v3, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 101
    iget-object v0, p0, Lo/ImmLeaksCleaner;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/zza;->onRelationshipValidationResult:Lo/zza$extraCallback;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method final onMessageChannelReady()Lo/onCreate;
    .locals 6

    .line 136
    iget-object v0, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3145
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 3148
    iget-object v4, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 3149
    iget-object v5, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0x10

    .line 3151
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 139
    :goto_1
    iget-object v5, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    invoke-static {v5}, Lo/MediaMetadataCompat$TextKey;->onMessageChannelReady(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 141
    :goto_2
    new-instance v0, Lo/onCreate;

    invoke-direct {v0, v3, v4, v5, v1}, Lo/onCreate;-><init>(ZZZZ)V

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 6

    .line 3130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v3, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    const-string v4, "Unregistering network callback"

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 111
    iget-object v0, p0, Lo/zza;->onMessageChannelReady:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lo/zza;->ICustomTabsCallback$Stub:Lo/zza$ICustomTabsCallback;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 117
    :goto_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v3

    sget-object v4, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v0, v1, v2

    const-string v0, "Received exception while unregistering network callback"

    invoke-virtual {v3, v4, v0, v1}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_1
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Unregistering broadcast receiver"

    invoke-virtual {v0, v1, v3, v2}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 124
    iget-object v0, p0, Lo/ImmLeaksCleaner;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/zza;->onRelationshipValidationResult:Lo/zza$extraCallback;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final synthetic onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 4080
    invoke-virtual {p0}, Lo/zza;->onMessageChannelReady()Lo/onCreate;

    move-result-object v0

    return-object v0
.end method
