.class final Lo/sendSensitive$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendSensitive;->onPostMessage(Lo/resume$extraCallback;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/sendSensitive;


# direct methods
.method constructor <init>(Lo/sendSensitive;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 500
    iget-object v0, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    new-instance v1, Lo/sendSensitive$onMessageChannelReady;

    invoke-static {}, Lo/sendSensitive;->onNavigationEvent()Lo/getOptInclusiveEnd;

    move-result-object v2

    invoke-static {}, Lo/sendSensitive;->extraCallback()Lo/isIdle;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lo/sendSensitive$onMessageChannelReady;-><init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;Lo/isIdle;)V

    invoke-static {v0, v1}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;Lo/sendSensitive$onMessageChannelReady;)Lo/sendSensitive$onMessageChannelReady;

    .line 501
    iget-object v0, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->ICustomTabsCallback(Lo/sendSensitive;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->onNavigationEvent(Lo/sendSensitive;)Lo/sendSensitive$onMessageChannelReady;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 502
    iget-object v0, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 503
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lo/sendSensitive;->ICustomTabsCallback(Lo/sendSensitive;I)I

    .line 504
    iget-object v1, p0, Lo/sendSensitive$3;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->onTransact(Lo/sendSensitive;)Z

    .line 505
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 506
    invoke-virtual {v0, v0}, Lo/BatteryState;->extraCallback(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 505
    monitor-exit v0

    throw v1
.end method
