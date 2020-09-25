.class final Lo/ServiceSmsHelper$lifecycleObserver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/GradientResponseModel;

.field private final synthetic onMessageChannelReady:Lo/StatJsonAdapter;


# direct methods
.method constructor <init>(Lo/GradientResponseModel;Lo/StatJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    iput-object p2, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->onMessageChannelReady:Lo/StatJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    invoke-static {v0}, Lo/GradientResponseModel;->onNavigationEvent(Lo/GradientResponseModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    iget-object v2, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    iget-object v3, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    invoke-static {v3}, Lo/GradientResponseModel;->extraCallback(Lo/GradientResponseModel;)Lo/setBankNameTopMargin;

    move-result-object v3

    iget-object v3, v3, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    iget-object v4, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->onMessageChannelReady:Lo/StatJsonAdapter;

    invoke-virtual {v2, v3, v4}, Lo/GradientResponseModel;->extraCallback(Lo/DataListJsonAdapter;Lo/StatJsonAdapter;)Lo/setSwipedDirection;

    move-result-object v2

    iput-object v2, v1, Lo/GradientResponseModel;->ICustomTabsCallback:Lo/setSwipedDirection;

    iget-object v1, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    iget-object v1, v1, Lo/GradientResponseModel;->ICustomTabsCallback:Lo/setSwipedDirection;

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v1, v2, v3}, Lo/GradientResponseModel;->onNavigationEvent(Lo/GradientResponseModel;ILjava/lang/String;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v2, p0, Lo/ServiceSmsHelper$lifecycleObserver$1;->ICustomTabsCallback:Lo/GradientResponseModel;

    invoke-static {v2}, Lo/GradientResponseModel;->onMessageChannelReady(Lo/GradientResponseModel;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
