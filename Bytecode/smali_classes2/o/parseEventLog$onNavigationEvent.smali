.class final Lo/parseEventLog$onNavigationEvent;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/parseEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private task:Lo/parseEventLog;


# direct methods
.method public constructor <init>(Lo/parseEventLog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 9
    iget-object p1, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    if-nez p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lo/parseEventLog;->isDeviceConnected()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Connectivity changed. Starting background sync."

    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_2
    iget-object p1, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    invoke-static {p1}, Lo/parseEventLog;->access$000(Lo/parseEventLog;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p1

    iget-object p2, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->enqueueTaskWithDelaySeconds(Ljava/lang/Runnable;J)V

    .line 16
    iget-object p1, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    invoke-virtual {p1}, Lo/parseEventLog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    return-void
.end method

.method public final registerReceiver()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseInstanceId"

    const-string v1, "Connectivity change received registered"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lo/parseEventLog$onNavigationEvent;->task:Lo/parseEventLog;

    invoke-virtual {v1}, Lo/parseEventLog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
