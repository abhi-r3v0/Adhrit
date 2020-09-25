.class final Lo/CurrencyJsonAdapter;
.super Lo/LiveCounter$extraCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LiveCounter$extraCallback<",
        "Lo/SpinDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCurrentItem$default;

.field private final synthetic extraCallback:Lo/LiveCounter;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onNavigationEvent:Landroid/content/Context;

.field private final synthetic onPostMessage:Lo/BankAccountData;


# direct methods
.method constructor <init>(Lo/LiveCounter;Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;)V
    .locals 0

    iput-object p1, p0, Lo/CurrencyJsonAdapter;->extraCallback:Lo/LiveCounter;

    iput-object p2, p0, Lo/CurrencyJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    iput-object p3, p0, Lo/CurrencyJsonAdapter;->ICustomTabsCallback:Lo/setCurrentItem$default;

    iput-object p4, p0, Lo/CurrencyJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    iput-object p5, p0, Lo/CurrencyJsonAdapter;->onPostMessage:Lo/BankAccountData;

    invoke-direct {p0, p1}, Lo/LiveCounter$extraCallback;-><init>(Lo/LiveCounter;)V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/CurrencyJsonAdapter;->extraCallback:Lo/LiveCounter;

    invoke-static {v0}, Lo/LiveCounter;->onNavigationEvent(Lo/LiveCounter;)Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;

    move-result-object v1

    iget-object v2, p0, Lo/CurrencyJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    iget-object v3, p0, Lo/CurrencyJsonAdapter;->ICustomTabsCallback:Lo/setCurrentItem$default;

    iget-object v4, p0, Lo/CurrencyJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/CurrencyJsonAdapter;->onPostMessage:Lo/BankAccountData;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;->ICustomTabsCallback(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;I)Lo/SpinDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/CurrencyJsonAdapter;->extraCallback:Lo/LiveCounter;

    iget-object v1, p0, Lo/CurrencyJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    const-string v2, "banner"

    invoke-static {v0, v1, v2}, Lo/LiveCounter;->onPostMessage(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lo/WinItem;

    invoke-direct {v0}, Lo/WinItem;-><init>()V

    return-object v0
.end method

.method public final synthetic ICustomTabsCallback(Lo/StatisticsItem;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/CurrencyJsonAdapter;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/CurrencyJsonAdapter;->ICustomTabsCallback:Lo/setCurrentItem$default;

    iget-object v4, p0, Lo/CurrencyJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/CurrencyJsonAdapter;->onPostMessage:Lo/BankAccountData;

    const v6, 0xbdfcb8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lo/StatisticsItem;->createBannerAdManager(Lo/getEventName;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;I)Lo/SpinDetail;

    move-result-object p1

    return-object p1
.end method
