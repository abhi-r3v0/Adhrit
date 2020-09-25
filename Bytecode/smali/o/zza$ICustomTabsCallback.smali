.class Lo/zza$ICustomTabsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/zza;


# direct methods
.method constructor <init>(Lo/zza;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lo/zza$ICustomTabsCallback;->onMessageChannelReady:Lo/zza;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 163
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Network capabilities changed: %s"

    .line 165
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Throwable;

    .line 163
    invoke-virtual {p1, v0, p2, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 166
    iget-object p1, p0, Lo/zza$ICustomTabsCallback;->onMessageChannelReady:Lo/zza;

    invoke-virtual {p1}, Lo/zza;->onMessageChannelReady()Lo/onCreate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ImmLeaksCleaner;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 171
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object p1

    sget-object v0, Lo/zza;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v2, "Network connection lost"

    invoke-virtual {p1, v0, v2, v1}, Lo/setActiveQueueItemId;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 172
    iget-object p1, p0, Lo/zza$ICustomTabsCallback;->onMessageChannelReady:Lo/zza;

    invoke-virtual {p1}, Lo/zza;->onMessageChannelReady()Lo/onCreate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ImmLeaksCleaner;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
