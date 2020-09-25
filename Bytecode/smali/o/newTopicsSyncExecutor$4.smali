.class final Lo/newTopicsSyncExecutor$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newTopicsSyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/lang/String;

.field final synthetic onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

.field final synthetic onPostMessage:Lo/newTopicsSyncExecutor;


# direct methods
.method constructor <init>(Lo/newTopicsSyncExecutor;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lo/newTopicsSyncExecutor$4;->onPostMessage:Lo/newTopicsSyncExecutor;

    iput-object p2, p0, Lo/newTopicsSyncExecutor$4;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lo/newTopicsSyncExecutor$4;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 231
    iget-object v0, p0, Lo/newTopicsSyncExecutor$4;->onMessageChannelReady:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v0

    iget-object v1, p0, Lo/newTopicsSyncExecutor$4;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/onPostResume;->ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1298
    sget-object v1, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iget-object v2, v0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lo/newTopicsSyncExecutor$4;->onPostMessage:Lo/newTopicsSyncExecutor;

    iget-object v1, v1, Lo/newTopicsSyncExecutor;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v2, p0, Lo/newTopicsSyncExecutor$4;->onPostMessage:Lo/newTopicsSyncExecutor;

    iget-object v2, v2, Lo/newTopicsSyncExecutor;->asBinder:Ljava/util/Map;

    iget-object v3, p0, Lo/newTopicsSyncExecutor$4;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v2, p0, Lo/newTopicsSyncExecutor$4;->onPostMessage:Lo/newTopicsSyncExecutor;

    iget-object v2, v2, Lo/newTopicsSyncExecutor;->asInterface:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lo/newTopicsSyncExecutor$4;->onPostMessage:Lo/newTopicsSyncExecutor;

    iget-object v0, v0, Lo/newTopicsSyncExecutor;->onTransact:Lo/getLifecycle;

    iget-object v2, p0, Lo/newTopicsSyncExecutor$4;->onPostMessage:Lo/newTopicsSyncExecutor;

    iget-object v2, v2, Lo/newTopicsSyncExecutor;->asInterface:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lo/getLifecycle;->onPostMessage(Ljava/lang/Iterable;)V

    .line 239
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    return-void
.end method
