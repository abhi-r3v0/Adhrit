.class public final Lo/getInternationalTransactions;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/RewardServiceCurrencyAdapter;

.field private final onNavigationEvent:Lo/RecentOrder;

.field private final onPostMessage:Lo/isCompressed;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "resize"

    const-string v1, "playVideo"

    const-string v2, "storePicture"

    const-string v3, "createCalendarEvent"

    const-string v4, "setOrientationProperties"

    const-string v5, "closeResizedAd"

    const-string v6, "unload"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lo/extraCallback;->onPostMessage([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lo/getInternationalTransactions;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lo/RecentOrder;Lo/RewardServiceCurrencyAdapter;Lo/isCompressed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getInternationalTransactions;->onNavigationEvent:Lo/RecentOrder;

    iput-object p2, p0, Lo/getInternationalTransactions;->ICustomTabsCallback:Lo/RewardServiceCurrencyAdapter;

    iput-object p3, p0, Lo/getInternationalTransactions;->onPostMessage:Lo/isCompressed;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lo/getInternationalTransactions;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lo/getInternationalTransactions;->onNavigationEvent:Lo/RecentOrder;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lo/RecentOrder;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, p0, Lo/getInternationalTransactions;->onNavigationEvent:Lo/RecentOrder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/RecentOrder;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_4

    const/4 p1, 0x6

    if-eq v0, p1, :cond_3

    if-eq v0, v1, :cond_1

    const-string p1, "Unknown MRAID command called."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lo/WinningTypes;->IconCompatParcelizer:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/getInternationalTransactions;->onPostMessage:Lo/isCompressed;

    invoke-interface {p1}, Lo/isCompressed;->MediaBrowserCompat()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lo/getInternationalTransactions;->ICustomTabsCallback:Lo/RewardServiceCurrencyAdapter;

    invoke-virtual {p1, v3}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Z)V

    return-void

    :cond_4
    new-instance v0, Lo/StashStatusAdapter;

    invoke-direct {v0, p1, p2}, Lo/StashStatusAdapter;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/Map;)V

    invoke-virtual {v0}, Lo/StashStatusAdapter;->ICustomTabsCallback()V

    return-void

    :cond_5
    new-instance v0, Lo/CredColorFormat;

    invoke-direct {v0, p1, p2}, Lo/CredColorFormat;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/Map;)V

    invoke-virtual {v0}, Lo/CredColorFormat;->onNavigationEvent()V

    return-void

    :cond_6
    new-instance v0, Lo/RewardServiceCurrency;

    invoke-direct {v0, p1, p2}, Lo/RewardServiceCurrency;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/Map;)V

    invoke-virtual {v0}, Lo/RewardServiceCurrency;->onNavigationEvent()V

    return-void

    :cond_7
    iget-object p1, p0, Lo/getInternationalTransactions;->ICustomTabsCallback:Lo/RewardServiceCurrencyAdapter;

    invoke-virtual {p1, p2}, Lo/RewardServiceCurrencyAdapter;->onPostMessage(Ljava/util/Map;)V

    return-void
.end method
