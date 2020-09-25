.class final Lo/createAndStoreIid$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createAndStoreIid;->interruptInternal(Lo/getNamedThreadFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/createAndStoreIid;

.field final synthetic val$ctx:Lo/getNamedThreadFactory;


# direct methods
.method constructor <init>(Lo/createAndStoreIid;Lo/getNamedThreadFactory;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lo/createAndStoreIid$5;->this$0:Lo/createAndStoreIid;

    iput-object p2, p0, Lo/createAndStoreIid$5;->val$ctx:Lo/getNamedThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 117
    iget-object v0, p0, Lo/createAndStoreIid$5;->this$0:Lo/createAndStoreIid;

    invoke-static {v0}, Lo/createAndStoreIid;->access$000(Lo/createAndStoreIid;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lo/createAndStoreIid$5;->this$0:Lo/createAndStoreIid;

    invoke-static {v1}, Lo/createAndStoreIid;->access$000(Lo/createAndStoreIid;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lo/createAndStoreIid$5;->val$ctx:Lo/getNamedThreadFactory;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lo/createAndStoreIid$5;->this$0:Lo/createAndStoreIid;

    invoke-static {v1}, Lo/createAndStoreIid;->access$000(Lo/createAndStoreIid;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lo/createAndStoreIid$5;->val$ctx:Lo/getNamedThreadFactory;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getCrashlyticsInstallId;

    .line 121
    invoke-virtual {v4}, Lo/getCrashlyticsInstallId;->interrupt()V

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v4}, Lo/getCrashlyticsInstallId;->hasListeners()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 125
    iget-object v1, p0, Lo/createAndStoreIid$5;->val$ctx:Lo/getNamedThreadFactory;

    invoke-virtual {v1}, Lo/getNamedThreadFactory;->stop()V

    .line 128
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
