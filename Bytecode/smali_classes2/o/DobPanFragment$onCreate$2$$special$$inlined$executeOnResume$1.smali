.class final Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/getApplication_external_id;

.field private final synthetic onPostMessage:Lo/setLastItem;


# direct methods
.method constructor <init>(Lo/getApplication_external_id;Lo/setLastItem;)V
    .locals 0

    iput-object p1, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getApplication_external_id;

    iput-object p2, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getApplication_external_id;

    invoke-static {v0}, Lo/getApplication_external_id;->onPostMessage(Lo/getApplication_external_id;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getApplication_external_id;

    invoke-static {v1}, Lo/getApplication_external_id;->extraCallback(Lo/getApplication_external_id;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getApplication_external_id;

    iget-object v2, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    invoke-static {v1, v2}, Lo/getApplication_external_id;->extraCallback(Lo/getApplication_external_id;Lo/setLastItem;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getApplication_external_id;

    iget-object v2, p0, Lo/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/setLastItem;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lo/getApplication_external_id;->onNavigationEvent(Lo/getApplication_external_id;Lo/setLastItem;I)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
