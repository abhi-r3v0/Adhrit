.class final Lo/CrashlyticsReportPersistence$onMessageChannelReady;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReportPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private task:Lo/CrashlyticsReportPersistence;

.field final synthetic this$0:Lo/CrashlyticsReportPersistence;


# direct methods
.method public constructor <init>(Lo/CrashlyticsReportPersistence;Lo/CrashlyticsReportPersistence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->this$0:Lo/CrashlyticsReportPersistence;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->task:Lo/CrashlyticsReportPersistence;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p2, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->task:Lo/CrashlyticsReportPersistence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object p2, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->task:Lo/CrashlyticsReportPersistence;

    invoke-static {p2}, Lo/CrashlyticsReportPersistence;->access$000(Lo/CrashlyticsReportPersistence;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_1
    :try_start_2
    invoke-static {}, Lo/CrashlyticsReportPersistence;->access$100()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "FirebaseMessaging"

    const-string v0, "Connectivity changed. Starting background sync."

    .line 9
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    iget-object p2, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->task:Lo/CrashlyticsReportPersistence;

    invoke-static {p2}, Lo/CrashlyticsReportPersistence;->access$200(Lo/CrashlyticsReportPersistence;)Lo/getOrCreateBodyBuilder;

    move-result-object p2

    iget-object v0, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->task:Lo/CrashlyticsReportPersistence;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lo/getOrCreateBodyBuilder;->scheduleSyncTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->task:Lo/CrashlyticsReportPersistence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final registerReceiver()V
    .locals 3

    .line 14
    invoke-static {}, Lo/CrashlyticsReportPersistence;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseMessaging"

    const-string v1, "Connectivity change received registered"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReportPersistence$onMessageChannelReady;->this$0:Lo/CrashlyticsReportPersistence;

    invoke-static {v0}, Lo/CrashlyticsReportPersistence;->access$300(Lo/CrashlyticsReportPersistence;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
