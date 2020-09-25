.class public Lo/getTotalAmountDue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTotalAmountDue$onNavigationEvent;,
        Lo/getTotalAmountDue$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final asInterface:J

.field private extraCallback:Lo/getItemDelegate$extraCallback;

.field private onMessageChannelReady:Lo/getBanks;

.field private onNavigationEvent:Z

.field private onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v2, 0x7530

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/getTotalAmountDue;-><init>(Landroid/content/Context;JZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getTotalAmountDue;->ICustomTabsCallback:Ljava/lang/Object;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    .line 1002
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p4

    :cond_1
    :goto_0
    iput-object p1, p0, Lo/getTotalAmountDue;->onTransact:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    iput-wide p2, p0, Lo/getTotalAmountDue;->asInterface:J

    iput-boolean p5, p0, Lo/getTotalAmountDue;->onRelationshipValidationResult:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final ICustomTabsCallback()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4051
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/getTotalAmountDue;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    iget-boolean v1, v1, Lo/getTotalAmountDue$onMessageChannelReady;->extraCallback:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lo/getTotalAmountDue;->onPostMessage(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lo/getTotalAmountDue;->extraCallback:Lo/getItemDelegate$extraCallback;

    if-eqz v0, :cond_4

    .line 5002
    iget-object v0, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 6002
    :try_start_6
    iget-object v0, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;

    invoke-interface {v0}, Lo/getBanks;->ICustomTabsCallback()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-direct {p0}, Lo/getTotalAmountDue;->onMessageChannelReady()V

    return v0

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5002
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    .line 6002
    monitor-exit p0

    throw v0

    .line 4051
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lo/getTotalAmountDue$onNavigationEvent;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    new-instance v0, Lo/StatementResponse$StatementDetails$Dues;

    invoke-direct {v0, p0}, Lo/StatementResponse$StatementDetails$Dues;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string v2, "gads:ad_id_app_context:enabled"

    invoke-virtual {v0, v2, v1}, Lo/StatementResponse$StatementDetails$Dues;->ICustomTabsCallback(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "gads:ad_id_app_context:ping_ratio"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lo/StatementResponse$StatementDetails$Dues;->onMessageChannelReady(Ljava/lang/String;F)F

    move-result v11

    const-string v3, "gads:ad_id_use_shared_preference:experiment_id"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lo/StatementResponse$StatementDetails$Dues;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v3, "gads:ad_id_use_persistent_service:enabled"

    invoke-virtual {v0, v3, v1}, Lo/StatementResponse$StatementDetails$Dues;->ICustomTabsCallback(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v0, Lo/getTotalAmountDue;

    const-wide/16 v5, -0x1

    move-object v3, v0

    move-object v4, p0

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lo/getTotalAmountDue;-><init>(Landroid/content/Context;JZZ)V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v1}, Lo/getTotalAmountDue;->onPostMessage(Z)V

    invoke-virtual {v0}, Lo/getTotalAmountDue;->getInfo()Lo/getTotalAmountDue$onNavigationEvent;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v7, v5, v3

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p0

    move v5, v2

    move v6, v11

    move-object v9, v12

    invoke-direct/range {v3 .. v10}, Lo/getTotalAmountDue;->onMessageChannelReady(Lo/getTotalAmountDue$onNavigationEvent;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lo/getTotalAmountDue;->finish()V

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    move-object v3, v0

    move v5, v2

    move v6, v11

    move-object v9, v12

    move-object v10, p0

    :try_start_1
    invoke-direct/range {v3 .. v10}, Lo/getTotalAmountDue;->onMessageChannelReady(Lo/getTotalAmountDue$onNavigationEvent;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lo/getTotalAmountDue;->finish()V

    throw p0
.end method

.method public static getIsAdIdFakeForDebugLogging(Landroid/content/Context;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    new-instance v0, Lo/StatementResponse$StatementDetails$Dues;

    invoke-direct {v0, p0}, Lo/StatementResponse$StatementDetails$Dues;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const-string v2, "gads:ad_id_app_context:enabled"

    invoke-virtual {v0, v2, v1}, Lo/StatementResponse$StatementDetails$Dues;->ICustomTabsCallback(Ljava/lang/String;Z)Z

    move-result v7

    const-string v2, "com.google.android.gms.ads.identifier.service.PERSISTENT_START"

    invoke-virtual {v0, v2, v1}, Lo/StatementResponse$StatementDetails$Dues;->ICustomTabsCallback(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v0, Lo/getTotalAmountDue;

    const-wide/16 v5, -0x1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lo/getTotalAmountDue;-><init>(Landroid/content/Context;JZZ)V

    :try_start_0
    invoke-direct {v0, v1}, Lo/getTotalAmountDue;->onPostMessage(Z)V

    invoke-direct {v0}, Lo/getTotalAmountDue;->ICustomTabsCallback()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lo/getTotalAmountDue;->finish()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lo/getTotalAmountDue;->finish()V

    throw p0
.end method

.method private final onMessageChannelReady()V
    .locals 6

    iget-object v0, p0, Lo/getTotalAmountDue;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    iget-object v1, v1, Lo/getTotalAmountDue$onMessageChannelReady;->onPostMessage:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-wide v1, p0, Lo/getTotalAmountDue;->asInterface:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    new-instance v1, Lo/getTotalAmountDue$onMessageChannelReady;

    iget-wide v2, p0, Lo/getTotalAmountDue;->asInterface:J

    invoke-direct {v1, p0, v2, v3}, Lo/getTotalAmountDue$onMessageChannelReady;-><init>(Lo/getTotalAmountDue;J)V

    iput-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final onMessageChannelReady(Lo/getTotalAmountDue$onNavigationEvent;ZFJLjava/lang/String;Ljava/lang/Throwable;)Z
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p3

    cmpl-double p3, v0, v2

    if-lez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    const-string v2, "app_context"

    invoke-interface {p3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->isLimitAdTrackingEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const-string p2, "limit_ad_tracking"

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_id_size"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "experiment_id"

    invoke-interface {p3, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo p1, "tag"

    const-string p2, "AdvertisingIdClient"

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "time_spent"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lo/StatementResponse$StatementDetails$PastDues;

    invoke-direct {p1, p0, p3}, Lo/StatementResponse$StatementDetails$PastDues;-><init>(Lo/getTotalAmountDue;Ljava/util/Map;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method private static onNavigationEvent(Lo/getItemDelegate$extraCallback;)Lo/getBanks;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "BlockingServiceConnection.getServiceWithTimeout() called on main thread"

    .line 9050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 9008
    iget-boolean v1, p0, Lo/getItemDelegate$extraCallback;->onPostMessage:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 9010
    iput-boolean v1, p0, Lo/getItemDelegate$extraCallback;->onPostMessage:Z

    .line 9011
    iget-object p0, p0, Lo/getItemDelegate$extraCallback;->onNavigationEvent:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v1, 0x2710

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-eqz p0, :cond_0

    .line 9014
    invoke-static {p0}, Lo/getCode;->onMessageChannelReady(Landroid/os/IBinder;)Lo/getBanks;

    move-result-object p0

    return-object p0

    .line 9013
    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string v0, "Timed out waiting for the service connection"

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9009
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call get on this connection more than once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9051
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 9014
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Interrupted exception"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;Z)Lo/getItemDelegate$extraCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8001
    sget-object v0, Lo/PaymentItem;->onNavigationEvent:Lo/PaymentItem;

    const v1, 0xbdfcb8

    invoke-virtual {v0, p0, v1}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Google Play services not available"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const-string p1, "com.google.android.gms.ads.identifier.service.PERSISTENT_START"

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.gms.ads.identifier.service.START"

    :goto_1
    new-instance v6, Lo/getItemDelegate$extraCallback;

    invoke-direct {v6}, Lo/getItemDelegate$extraCallback;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.google.android.gms"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    move-result-object v0

    const/4 v5, 0x1

    .line 8024
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lo/findSameItem$extraCallback;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    return-object v6

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Connection failure"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 0
    :catch_0
    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>()V

    throw p0
.end method

.method private final onPostMessage(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    .line 1050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/getTotalAmountDue;->finish()V

    :cond_0
    iget-object v0, p0, Lo/getTotalAmountDue;->onTransact:Landroid/content/Context;

    iget-boolean v1, p0, Lo/getTotalAmountDue;->onRelationshipValidationResult:Z

    invoke-static {v0, v1}, Lo/getTotalAmountDue;->onNavigationEvent(Landroid/content/Context;Z)Lo/getItemDelegate$extraCallback;

    move-result-object v0

    iput-object v0, p0, Lo/getTotalAmountDue;->extraCallback:Lo/getItemDelegate$extraCallback;

    invoke-static {v0}, Lo/getTotalAmountDue;->onNavigationEvent(Lo/getItemDelegate$extraCallback;)Lo/getBanks;

    move-result-object v0

    iput-object v0, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lo/getTotalAmountDue;->onMessageChannelReady()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setShouldSkipGmsCoreVersionCheck(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lo/getTotalAmountDue;->finish()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final finish()V
    .locals 3

    .line 6050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6051
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/getTotalAmountDue;->onTransact:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/getTotalAmountDue;->extraCallback:Lo/getItemDelegate$extraCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lo/findSameItem$extraCallback;->onPostMessage()Lo/findSameItem$extraCallback;

    iget-object v0, p0, Lo/getTotalAmountDue;->onTransact:Landroid/content/Context;

    iget-object v1, p0, Lo/getTotalAmountDue;->extraCallback:Lo/getItemDelegate$extraCallback;

    .line 7025
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "AdvertisingIdClient"

    const-string v2, "AdvertisingIdClient unbindService failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;

    iput-object v0, p0, Lo/getTotalAmountDue;->extraCallback:Lo/getItemDelegate$extraCallback;

    monitor-exit p0

    return-void

    .line 6051
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 7025
    monitor-exit p0

    throw v0

    .line 6051
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInfo()Lo/getTotalAmountDue$onNavigationEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2050
    invoke-static {}, Lo/component29;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2051
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/getTotalAmountDue;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/getTotalAmountDue;->onPostMessage:Lo/getTotalAmountDue$onMessageChannelReady;

    iget-boolean v1, v1, Lo/getTotalAmountDue$onMessageChannelReady;->extraCallback:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lo/getTotalAmountDue;->onPostMessage(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lo/getTotalAmountDue;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient cannot reconnect."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "AdvertisingIdClient is not connected."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0

    throw v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lo/getTotalAmountDue;->extraCallback:Lo/getItemDelegate$extraCallback;

    if-eqz v0, :cond_4

    .line 3002
    iget-object v0, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    .line 4002
    :try_start_6
    new-instance v0, Lo/getTotalAmountDue$onNavigationEvent;

    iget-object v1, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;

    invoke-interface {v1}, Lo/getBanks;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/getTotalAmountDue;->onMessageChannelReady:Lo/getBanks;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lo/getBanks;->ICustomTabsCallback(Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/getTotalAmountDue$onNavigationEvent;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-direct {p0}, Lo/getTotalAmountDue;->onMessageChannelReady()V

    return-object v0

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "AdvertisingIdClient"

    const-string v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3002
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    .line 4002
    monitor-exit p0

    throw v0

    .line 2051
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/getTotalAmountDue;->onPostMessage(Z)V

    return-void
.end method
