.class public final Lo/PayoutClaimResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/PayoutClaimResponseJsonAdapter;

.field private static final onNavigationEvent:Ljava/lang/Object;


# instance fields
.field private final asBinder:Lo/WinningStatisticsResponseJsonAdapter;

.field private final asInterface:Lo/WinTicketResponseJsonAdapter;

.field private final extraCallback:Lo/ControlStatementRepo$TransactionItem;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onPostMessage:Lo/LiveCounter;

.field private final onTransact:Lo/WinningTypesJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/PayoutClaimResponseJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    new-instance v0, Lo/PayoutClaimResponseJsonAdapter;

    invoke-direct {v0}, Lo/PayoutClaimResponseJsonAdapter;-><init>()V

    sget-object v1, Lo/PayoutClaimResponseJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback:Lo/PayoutClaimResponseJsonAdapter;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/ControlStatementRepo$TransactionItem;

    invoke-direct {v0}, Lo/ControlStatementRepo$TransactionItem;-><init>()V

    iput-object v0, p0, Lo/PayoutClaimResponseJsonAdapter;->extraCallback:Lo/ControlStatementRepo$TransactionItem;

    new-instance v0, Lo/LiveCounter;

    new-instance v2, Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;

    invoke-direct {v2}, Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;-><init>()V

    new-instance v3, Lo/setWheelBackground;

    invoke-direct {v3}, Lo/setWheelBackground;-><init>()V

    new-instance v4, Lo/WinAccessibilityJsonAdapter;

    invoke-direct {v4}, Lo/WinAccessibilityJsonAdapter;-><init>()V

    new-instance v5, Lo/DataItemBackground;

    invoke-direct {v5}, Lo/DataItemBackground;-><init>()V

    new-instance v6, Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;

    invoke-direct {v6}, Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;-><init>()V

    new-instance v7, Lo/getMethod;

    invoke-direct {v7}, Lo/getMethod;-><init>()V

    new-instance v8, Lo/DismissConfigJsonAdapter;

    invoke-direct {v8}, Lo/DismissConfigJsonAdapter;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lo/LiveCounter;-><init>(Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;Lo/setWheelBackground;Lo/WinAccessibilityJsonAdapter;Lo/DataItemBackground;Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;Lo/getMethod;Lo/DismissConfigJsonAdapter;)V

    iput-object v0, p0, Lo/PayoutClaimResponseJsonAdapter;->onPostMessage:Lo/LiveCounter;

    invoke-static {}, Lo/ControlStatementRepo$TransactionItem;->extraCallback()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/PayoutClaimResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    new-instance v0, Lo/WinTicketResponseJsonAdapter;

    invoke-direct {v0}, Lo/WinTicketResponseJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/PayoutClaimResponseJsonAdapter;->asInterface:Lo/WinTicketResponseJsonAdapter;

    new-instance v0, Lo/WinningTypesJsonAdapter;

    invoke-direct {v0}, Lo/WinningTypesJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/PayoutClaimResponseJsonAdapter;->onTransact:Lo/WinningTypesJsonAdapter;

    new-instance v0, Lo/WinningStatisticsResponseJsonAdapter;

    invoke-direct {v0}, Lo/WinningStatisticsResponseJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/PayoutClaimResponseJsonAdapter;->asBinder:Lo/WinningStatisticsResponseJsonAdapter;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/LiveCounter;
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->asBinder()Lo/PayoutClaimResponseJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/PayoutClaimResponseJsonAdapter;->onPostMessage:Lo/LiveCounter;

    return-object v0
.end method

.method public static ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->asBinder()Lo/PayoutClaimResponseJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/PayoutClaimResponseJsonAdapter;->asBinder:Lo/WinningStatisticsResponseJsonAdapter;

    return-object v0
.end method

.method private static asBinder()Lo/PayoutClaimResponseJsonAdapter;
    .locals 2

    sget-object v0, Lo/PayoutClaimResponseJsonAdapter;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback:Lo/PayoutClaimResponseJsonAdapter;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static extraCallback()Lo/ControlStatementRepo$TransactionItem;
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->asBinder()Lo/PayoutClaimResponseJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/PayoutClaimResponseJsonAdapter;->extraCallback:Lo/ControlStatementRepo$TransactionItem;

    return-object v0
.end method

.method public static onMessageChannelReady()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->asBinder()Lo/PayoutClaimResponseJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/PayoutClaimResponseJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/WinTicketResponseJsonAdapter;
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->asBinder()Lo/PayoutClaimResponseJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/PayoutClaimResponseJsonAdapter;->asInterface:Lo/WinTicketResponseJsonAdapter;

    return-object v0
.end method

.method public static onPostMessage()Lo/WinningTypesJsonAdapter;
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->asBinder()Lo/PayoutClaimResponseJsonAdapter;

    move-result-object v0

    iget-object v0, v0, Lo/PayoutClaimResponseJsonAdapter;->onTransact:Lo/WinningTypesJsonAdapter;

    return-object v0
.end method
