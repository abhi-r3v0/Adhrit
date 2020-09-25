.class final Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/updateRangeInNode;

.field private final synthetic onMessageChannelReady:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

.field private final synthetic onPostMessage:Lo/push;


# direct methods
.method constructor <init>(Lo/push;Lo/updateRangeInNode;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/push;

    iput-object p2, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/updateRangeInNode;

    iput-object p3, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->onPostMessage:Lo/push;

    invoke-static {v0}, Lo/push;->onNavigationEvent(Lo/push;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/updateRangeInNode;

    invoke-virtual {v1}, Lo/getSelected;->onPostMessage()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/updateRangeInNode;

    invoke-virtual {v1}, Lo/getSelected;->onPostMessage()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->extraCallback:Lo/updateRangeInNode;

    invoke-virtual {v1}, Lo/getSelected;->ICustomTabsCallback()V

    sget-object v1, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/QrCodeActivity$openQRFragment$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lo/RemoteControlDataResponse;->extraCallback(Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
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
