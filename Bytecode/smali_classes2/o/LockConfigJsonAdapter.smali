.class final Lo/LockConfigJsonAdapter;
.super Lo/LiveCounter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LiveCounter$extraCallback<",
        "Lo/ReelSymbol;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Lo/BankAccountData;

.field private final synthetic onNavigationEvent:Landroid/content/Context;

.field private final synthetic onPostMessage:Lo/LiveCounter;


# direct methods
.method constructor <init>(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;)V
    .locals 0

    iput-object p1, p0, Lo/LockConfigJsonAdapter;->onPostMessage:Lo/LiveCounter;

    iput-object p2, p0, Lo/LockConfigJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    iput-object p3, p0, Lo/LockConfigJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/LockConfigJsonAdapter;->extraCallback:Lo/BankAccountData;

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

    iget-object v0, p0, Lo/LockConfigJsonAdapter;->onPostMessage:Lo/LiveCounter;

    invoke-static {v0}, Lo/LiveCounter;->onMessageChannelReady(Lo/LiveCounter;)Lo/setWheelBackground;

    move-result-object v0

    iget-object v1, p0, Lo/LockConfigJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p0, Lo/LockConfigJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p0, Lo/LockConfigJsonAdapter;->extraCallback:Lo/BankAccountData;

    invoke-virtual {v0, v1, v2, v3}, Lo/setWheelBackground;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;)Lo/ReelSymbol;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/LockConfigJsonAdapter;->onPostMessage:Lo/LiveCounter;

    iget-object v1, p0, Lo/LockConfigJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    const-string v2, "native_ad"

    invoke-static {v0, v1, v2}, Lo/LiveCounter;->onPostMessage(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lo/WinFarmResponseJsonAdapter;

    invoke-direct {v0}, Lo/WinFarmResponseJsonAdapter;-><init>()V

    return-object v0
.end method

.method public final synthetic ICustomTabsCallback(Lo/StatisticsItem;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/LockConfigJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    iget-object v1, p0, Lo/LockConfigJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/LockConfigJsonAdapter;->extraCallback:Lo/BankAccountData;

    const v3, 0xbdfcb8

    invoke-interface {p1, v0, v1, v2, v3}, Lo/StatisticsItem;->createAdLoaderBuilder(Lo/getEventName;Ljava/lang/String;Lo/BankAccountData;I)Lo/ReelSymbol;

    move-result-object p1

    return-object p1
.end method
