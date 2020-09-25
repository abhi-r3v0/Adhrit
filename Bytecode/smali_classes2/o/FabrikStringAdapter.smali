.class final Lo/FabrikStringAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/GradientResponseModel;


# direct methods
.method constructor <init>(Lo/GradientResponseModel;)V
    .locals 0

    iput-object p1, p0, Lo/FabrikStringAdapter;->onMessageChannelReady:Lo/GradientResponseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/FabrikStringAdapter;->onMessageChannelReady:Lo/GradientResponseModel;

    invoke-static {v0}, Lo/GradientResponseModel;->onNavigationEvent(Lo/GradientResponseModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/FabrikStringAdapter;->onMessageChannelReady:Lo/GradientResponseModel;

    iget-object v1, v1, Lo/GradientResponseModel;->ICustomTabsCallback:Lo/setSwipedDirection;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/FabrikStringAdapter;->onMessageChannelReady:Lo/GradientResponseModel;

    invoke-virtual {v1}, Lo/ContactReverseSyncResponse;->ICustomTabsCallback()V

    iget-object v1, p0, Lo/FabrikStringAdapter;->onMessageChannelReady:Lo/GradientResponseModel;

    const/4 v2, 0x2

    const-string v3, "Timed out waiting for ad response."

    invoke-static {v1, v2, v3}, Lo/GradientResponseModel;->onNavigationEvent(Lo/GradientResponseModel;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
