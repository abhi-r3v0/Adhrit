.class final Lo/sendSensitive$1;
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
.field private synthetic onNavigationEvent:Lo/sendSensitive;


# direct methods
.method constructor <init>(Lo/sendSensitive;)V
    .locals 0

    .line 613
    iput-object p1, p0, Lo/sendSensitive$1;->onNavigationEvent:Lo/sendSensitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 618
    iget-object v0, p0, Lo/sendSensitive$1;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->ICustomTabsCallback(Lo/sendSensitive;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lo/sendSensitive$1;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->onNavigationEvent(Lo/sendSensitive;)Lo/sendSensitive$onMessageChannelReady;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 619
    iget-object v0, p0, Lo/sendSensitive$1;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive$1;->onNavigationEvent:Lo/sendSensitive;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lo/sendSensitive;->ICustomTabsCallback(Lo/sendSensitive;I)I

    .line 621
    iget-object v1, p0, Lo/sendSensitive$1;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->onTransact(Lo/sendSensitive;)Z

    .line 622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
