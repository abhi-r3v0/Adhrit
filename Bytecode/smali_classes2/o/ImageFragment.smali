.class public final Lo/ImageFragment;
.super Lo/Thumbnail;


# instance fields
.field private final ICustomTabsCallback:Lo/setAndroidUri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;Ljava/lang/String;Lo/getMinDue;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lo/Thumbnail;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;Ljava/lang/String;Lo/getMinDue;)V

    new-instance p2, Lo/setAndroidUri;

    iget-object p3, p0, Lo/ImageFragment;->onNavigationEvent:Lo/setContent;

    invoke-direct {p2, p1, p3}, Lo/setAndroidUri;-><init>(Landroid/content/Context;Lo/setContent;)V

    iput-object p2, p0, Lo/ImageFragment;->ICustomTabsCallback:Lo/setAndroidUri;

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 4

    iget-object v0, p0, Lo/ImageFragment;->ICustomTabsCallback:Lo/setAndroidUri;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lo/ImageFragment;->isConnected()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lo/ImageFragment;->ICustomTabsCallback:Lo/setAndroidUri;

    invoke-virtual {v1}, Lo/setAndroidUri;->onMessageChannelReady()V

    iget-object v1, p0, Lo/ImageFragment;->ICustomTabsCallback:Lo/setAndroidUri;

    invoke-virtual {v1}, Lo/setAndroidUri;->onPostMessage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lo/Thumbnail;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final extraCallback()Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/ImageFragment;->ICustomTabsCallback:Lo/setAndroidUri;

    invoke-virtual {v0}, Lo/setAndroidUri;->ICustomTabsCallback()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
