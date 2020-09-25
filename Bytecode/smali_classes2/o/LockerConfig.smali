.class final Lo/LockerConfig;
.super Lo/LiveCounter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LiveCounter$extraCallback<",
        "Lo/Database_Impl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/app/Activity;

.field private final synthetic onPostMessage:Lo/LiveCounter;


# direct methods
.method constructor <init>(Lo/LiveCounter;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lo/LockerConfig;->onPostMessage:Lo/LiveCounter;

    iput-object p2, p0, Lo/LockerConfig;->ICustomTabsCallback:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lo/LiveCounter$extraCallback;-><init>(Lo/LiveCounter;)V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/LockerConfig;->onPostMessage:Lo/LiveCounter;

    invoke-static {v0}, Lo/LiveCounter;->ICustomTabsCallback(Lo/LiveCounter;)Lo/getMethod;

    move-result-object v0

    iget-object v1, p0, Lo/LockerConfig;->ICustomTabsCallback:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lo/getMethod;->onMessageChannelReady(Landroid/app/Activity;)Lo/Database_Impl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/LockerConfig;->onPostMessage:Lo/LiveCounter;

    iget-object v1, p0, Lo/LockerConfig;->ICustomTabsCallback:Landroid/app/Activity;

    const-string v2, "ad_overlay"

    invoke-static {v0, v1, v2}, Lo/LiveCounter;->onPostMessage(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ICustomTabsCallback(Lo/StatisticsItem;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/LockerConfig;->ICustomTabsCallback:Landroid/app/Activity;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/StatisticsItem;->createAdOverlay(Lo/getEventName;)Lo/Database_Impl;

    move-result-object p1

    return-object p1
.end method
