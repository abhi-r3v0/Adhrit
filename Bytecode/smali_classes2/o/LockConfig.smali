.class final Lo/LockConfig;
.super Lo/LiveCounter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LiveCounter$extraCallback<",
        "Lo/relaunch;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Landroid/widget/FrameLayout;

.field private final synthetic onMessageChannelReady:Landroid/content/Context;

.field private final synthetic onNavigationEvent:Landroid/widget/FrameLayout;

.field private final synthetic onPostMessage:Lo/LiveCounter;


# direct methods
.method constructor <init>(Lo/LiveCounter;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/LockConfig;->onPostMessage:Lo/LiveCounter;

    iput-object p2, p0, Lo/LockConfig;->extraCallback:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lo/LockConfig;->onNavigationEvent:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lo/LockConfig;->onMessageChannelReady:Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/LiveCounter$extraCallback;-><init>(Lo/LiveCounter;)V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/LockConfig;->onPostMessage:Lo/LiveCounter;

    invoke-static {v0}, Lo/LiveCounter;->extraCallback(Lo/LiveCounter;)Lo/DataItemBackground;

    move-result-object v0

    iget-object v1, p0, Lo/LockConfig;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/LockConfig;->extraCallback:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lo/LockConfig;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Lo/DataItemBackground;->onPostMessage(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lo/relaunch;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/LockConfig;->onPostMessage:Lo/LiveCounter;

    iget-object v1, p0, Lo/LockConfig;->onMessageChannelReady:Landroid/content/Context;

    const-string v2, "native_ad_view_delegate"

    invoke-static {v0, v1, v2}, Lo/LiveCounter;->onPostMessage(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lo/WinLuckyNumberClaimResponse;

    invoke-direct {v0}, Lo/WinLuckyNumberClaimResponse;-><init>()V

    return-object v0
.end method

.method public final synthetic ICustomTabsCallback(Lo/StatisticsItem;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/LockConfig;->extraCallback:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    iget-object v1, p0, Lo/LockConfig;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/StatisticsItem;->createNativeAdViewDelegate(Lo/getEventName;Lo/getEventName;)Lo/relaunch;

    move-result-object p1

    return-object p1
.end method
