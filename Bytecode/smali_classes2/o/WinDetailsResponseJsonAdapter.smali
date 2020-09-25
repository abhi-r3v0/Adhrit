.class public final Lo/WinDetailsResponseJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getRewardsClosingBalance;

.field private ICustomTabsCallback$Stub:Lo/getRewardType;

.field private ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse$StatementDetails;

.field private ICustomTabsService:Lo/getTransactions;

.field private asBinder:Lo/getCardLimits;

.field private asInterface:Lo/zzd;

.field private final extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private extraCommand:Z

.field private getInterfaceDescriptor:Landroid/view/ViewGroup;

.field private newSession:Lo/SpinDetail;

.field private final onMessageChannelReady:Lo/PayoutClaimResponse;

.field private final onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

.field private final onPostMessage:Lo/setDigitUpdateListener;

.field private onRelationshipValidationResult:[Lo/getRewardsExpired;

.field private onTransact:Lo/getExpiringWithin60Days;

.field private updateVisuals:I

.field private warmup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 6

    sget-object v4, Lo/setDigitUpdateListener;->ICustomTabsCallback:Lo/setDigitUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    sget-object v4, Lo/setDigitUpdateListener;->ICustomTabsCallback:Lo/setDigitUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 6

    sget-object v4, Lo/setDigitUpdateListener;->ICustomTabsCallback:Lo/setDigitUpdateListener;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 6

    sget-object v4, Lo/setDigitUpdateListener;->ICustomTabsCallback:Lo/setDigitUpdateListener;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lo/WinDetailsResponseJsonAdapter;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;Lo/SpinDetail;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLo/setDigitUpdateListener;Lo/SpinDetail;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lo/BankAccountsResponseJsonAdapter;

    invoke-direct {p5}, Lo/BankAccountsResponseJsonAdapter;-><init>()V

    iput-object p5, p0, Lo/WinDetailsResponseJsonAdapter;->onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

    new-instance p5, Lo/getRewardsClosingBalance;

    invoke-direct {p5}, Lo/getRewardsClosingBalance;-><init>()V

    iput-object p5, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/getRewardsClosingBalance;

    new-instance p5, Lo/WinDetailsResponse;

    invoke-direct {p5, p0}, Lo/WinDetailsResponse;-><init>(Lo/WinDetailsResponseJsonAdapter;)V

    iput-object p5, p0, Lo/WinDetailsResponseJsonAdapter;->onMessageChannelReady:Lo/PayoutClaimResponse;

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->getInterfaceDescriptor:Landroid/view/ViewGroup;

    iput-object p4, p0, Lo/WinDetailsResponseJsonAdapter;->onPostMessage:Lo/setDigitUpdateListener;

    const/4 p4, 0x0

    iput-object p4, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lo/WinDetailsResponseJsonAdapter;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lo/WinDetailsResponseJsonAdapter;->updateVisuals:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lo/LiveCounterJsonAdapter;

    invoke-direct {p6, p4, p2}, Lo/LiveCounterJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lo/LiveCounterJsonAdapter;->extraCallback(Z)[Lo/getRewardsExpired;

    move-result-object p2

    iput-object p2, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    invoke-virtual {p6}, Lo/LiveCounterJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/WinDetailsResponseJsonAdapter;->warmup:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    move-result-object p2

    iget-object p3, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    aget-object p3, p3, p5

    iget p5, p0, Lo/WinDetailsResponseJsonAdapter;->updateVisuals:I

    new-instance p6, Lo/setCurrentItem$default;

    invoke-direct {p6, p4, p3}, Lo/setCurrentItem$default;-><init>(Landroid/content/Context;Lo/getRewardsExpired;)V

    invoke-static {p5}, Lo/WinDetailsResponseJsonAdapter;->onPostMessage(I)Z

    move-result p3

    iput-boolean p3, p6, Lo/setCurrentItem$default;->asBinder:Z

    const-string p3, "Ads by Google"

    invoke-virtual {p2, p1, p6, p3}, Lo/ControlStatementRepo$TransactionItem;->extraCallback(Landroid/view/ViewGroup;Lo/setCurrentItem$default;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    move-result-object p3

    new-instance p5, Lo/setCurrentItem$default;

    sget-object p6, Lo/getRewardsExpired;->onNavigationEvent:Lo/getRewardsExpired;

    invoke-direct {p5, p4, p6}, Lo/setCurrentItem$default;-><init>(Landroid/content/Context;Lo/getRewardsExpired;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/setCurrentItem$default;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic extraCallback(Lo/WinDetailsResponseJsonAdapter;)Lo/getRewardsClosingBalance;
    .locals 0

    iget-object p0, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/getRewardsClosingBalance;

    return-object p0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;[Lo/getRewardsExpired;I)Lo/setCurrentItem$default;
    .locals 1

    new-instance v0, Lo/setCurrentItem$default;

    invoke-direct {v0, p0, p1}, Lo/setCurrentItem$default;-><init>(Landroid/content/Context;[Lo/getRewardsExpired;)V

    invoke-static {p2}, Lo/WinDetailsResponseJsonAdapter;->onPostMessage(I)Z

    move-result p0

    iput-boolean p0, v0, Lo/setCurrentItem$default;->asBinder:Z

    return-object v0
.end method

.method private static onPostMessage(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    invoke-interface {v0}, Lo/SpinDetail;->newSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->warmup:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->warmup:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/StatementResponse$StatementDetails;)V
    .locals 2

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse$StatementDetails;

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lo/WinLuckyNumberResponseJsonAdapter;

    invoke-direct {v1, p1}, Lo/WinLuckyNumberResponseJsonAdapter;-><init>(Lo/StatementResponse$StatementDetails;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lo/SpinDetail;->extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/getTransactions;)V
    .locals 2

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsService:Lo/getTransactions;

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz p1, :cond_0

    new-instance v1, Lo/setCurrentPosition;

    invoke-direct {v1, p1}, Lo/setCurrentPosition;-><init>(Lo/getTransactions;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/SpinDetail;->extraCallback(Lo/setStartingAngle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    iput-boolean p1, p0, Lo/WinDetailsResponseJsonAdapter;->extraCommand:Z

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    invoke-interface {v0, p1}, Lo/SpinDetail;->onPostMessage(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs ICustomTabsCallback([Lo/getRewardsExpired;)V
    .locals 3

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    :try_start_0
    iget-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->getInterfaceDescriptor:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    iget v2, p0, Lo/WinDetailsResponseJsonAdapter;->updateVisuals:I

    invoke-static {v0, v1, v2}, Lo/WinDetailsResponseJsonAdapter;->onMessageChannelReady(Landroid/content/Context;[Lo/getRewardsExpired;I)Lo/setCurrentItem$default;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinDetail;->ICustomTabsCallback(Lo/setCurrentItem$default;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->getInterfaceDescriptor:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Lo/TrophySectionsResponseJsonAdapter;
    .locals 3

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lo/SpinDetail;->validateRelationship()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final extraCallback()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    invoke-interface {v0}, Lo/SpinDetail;->postMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback(Lo/getExpiringWithin60Days;)V
    .locals 1

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->onTransact:Lo/getExpiringWithin60Days;

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/getExpiringWithin60Days;->onMessageChannelReady()Lo/MetaSlotMachineJsonAdapter;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Lo/SpinDetail;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs extraCallback([Lo/getRewardsExpired;)V
    .locals 1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback([Lo/getRewardsExpired;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady()Lo/getRewardsExpired;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    invoke-interface {v0}, Lo/SpinDetail;->ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/setCurrentItem$default;->onNavigationEvent()Lo/getRewardsExpired;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/WinAccessibility;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    :try_start_0
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-nez v1, :cond_a

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->warmup:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v1, :cond_9

    :cond_1
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->getInterfaceDescriptor:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/WinDetailsResponseJsonAdapter;->onRelationshipValidationResult:[Lo/getRewardsExpired;

    iget v3, p0, Lo/WinDetailsResponseJsonAdapter;->updateVisuals:I

    invoke-static {v1, v2, v3}, Lo/WinDetailsResponseJsonAdapter;->onMessageChannelReady(Landroid/content/Context;[Lo/getRewardsExpired;I)Lo/setCurrentItem$default;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback()Lo/LiveCounter;

    move-result-object v2

    iget-object v3, p0, Lo/WinDetailsResponseJsonAdapter;->warmup:Ljava/lang/String;

    new-instance v4, Lo/Currency;

    invoke-direct {v4, v2, v1, v5, v3}, Lo/Currency;-><init>(Lo/LiveCounter;Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;)V

    invoke-static {v1, v8, v4}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lo/SpinDetail;

    goto :goto_1

    :cond_2
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback()Lo/LiveCounter;

    move-result-object v3

    iget-object v6, p0, Lo/WinDetailsResponseJsonAdapter;->warmup:Ljava/lang/String;

    iget-object v7, p0, Lo/WinDetailsResponseJsonAdapter;->onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

    new-instance v9, Lo/CurrencyJsonAdapter;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lo/CurrencyJsonAdapter;-><init>(Lo/LiveCounter;Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;)V

    invoke-static {v1, v8, v9}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    new-instance v2, Lo/accept;

    iget-object v3, p0, Lo/WinDetailsResponseJsonAdapter;->onMessageChannelReady:Lo/PayoutClaimResponse;

    invoke-direct {v2, v3}, Lo/accept;-><init>(Lo/getRewardType;)V

    invoke-interface {v1, v2}, Lo/SpinDetail;->onPostMessage(Lo/PendingUsers;)V

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->asInterface:Lo/zzd;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    new-instance v2, Lo/zze;

    iget-object v3, p0, Lo/WinDetailsResponseJsonAdapter;->asInterface:Lo/zzd;

    invoke-direct {v2, v3}, Lo/zze;-><init>(Lo/zzd;)V

    invoke-interface {v1, v2}, Lo/SpinDetail;->ICustomTabsCallback(Lo/ParentEntity;)V

    :cond_3
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->asBinder:Lo/getCardLimits;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    new-instance v2, Lo/CounterConfigJsonAdapter;

    iget-object v3, p0, Lo/WinDetailsResponseJsonAdapter;->asBinder:Lo/getCardLimits;

    invoke-direct {v2, v3}, Lo/CounterConfigJsonAdapter;-><init>(Lo/getCardLimits;)V

    invoke-interface {v1, v2}, Lo/SpinDetail;->extraCallback(Lo/StatisticsItemJsonAdapter;)V

    :cond_4
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsService:Lo/getTransactions;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    new-instance v2, Lo/setCurrentPosition;

    iget-object v3, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsService:Lo/getTransactions;

    invoke-direct {v2, v3}, Lo/setCurrentPosition;-><init>(Lo/getTransactions;)V

    invoke-interface {v1, v2}, Lo/SpinDetail;->extraCallback(Lo/setStartingAngle;)V

    :cond_5
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->onTransact:Lo/getExpiringWithin60Days;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    iget-object v2, p0, Lo/WinDetailsResponseJsonAdapter;->onTransact:Lo/getExpiringWithin60Days;

    invoke-virtual {v2}, Lo/getExpiringWithin60Days;->onMessageChannelReady()Lo/MetaSlotMachineJsonAdapter;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinDetail;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V

    :cond_6
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse$StatementDetails;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    new-instance v2, Lo/WinLuckyNumberResponseJsonAdapter;

    iget-object v3, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/StatementResponse$StatementDetails;

    invoke-direct {v2, v3}, Lo/WinLuckyNumberResponseJsonAdapter;-><init>(Lo/StatementResponse$StatementDetails;)V

    invoke-interface {v1, v2}, Lo/SpinDetail;->extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V

    :cond_7
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    iget-boolean v2, p0, Lo/WinDetailsResponseJsonAdapter;->extraCommand:Z

    invoke-interface {v1, v2}, Lo/SpinDetail;->onPostMessage(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    invoke-interface {v1}, Lo/SpinDetail;->ICustomTabsService()Lo/getEventName;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lo/WinDetailsResponseJsonAdapter;->getInterfaceDescriptor:Landroid/view/ViewGroup;

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0, v1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    iget-object v2, p0, Lo/WinDetailsResponseJsonAdapter;->getInterfaceDescriptor:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lo/setDigitUpdateListener;->extraCallback(Landroid/content/Context;Lo/WinAccessibility;)Lo/setLastItem;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinDetail;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lo/WinDetailsResponseJsonAdapter;->onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

    invoke-virtual {p1}, Lo/WinAccessibility;->asInterface()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/BankAccountsResponseJsonAdapter;->onMessageChannelReady(Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/getCardLimits;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->asBinder:Lo/getCardLimits;

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz p1, :cond_0

    new-instance v1, Lo/CounterConfigJsonAdapter;

    invoke-direct {v1, p1}, Lo/CounterConfigJsonAdapter;-><init>(Lo/getCardLimits;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/SpinDetail;->extraCallback(Lo/StatisticsItemJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/zzd;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->asInterface:Lo/zzd;

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz p1, :cond_0

    new-instance v1, Lo/zze;

    invoke-direct {v1, p1}, Lo/zze;-><init>(Lo/zzd;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/SpinDetail;->ICustomTabsCallback(Lo/ParentEntity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent()Lo/getRewardsClosingBalance;
    .locals 1

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback:Lo/getRewardsClosingBalance;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/getRewardType;)V
    .locals 1

    iput-object p1, p0, Lo/WinDetailsResponseJsonAdapter;->ICustomTabsCallback$Stub:Lo/getRewardType;

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->onMessageChannelReady:Lo/PayoutClaimResponse;

    invoke-virtual {v0, p1}, Lo/PayoutClaimResponse;->onNavigationEvent(Lo/getRewardType;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsResponseJsonAdapter;->newSession:Lo/SpinDetail;

    invoke-interface {v0}, Lo/SpinDetail;->mayLaunchUrl()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
