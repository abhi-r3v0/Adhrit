.class public final Lo/getRewardsEarned$ICustomTabsCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRewardsEarned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/ReelSymbol;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1012
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback()Lo/LiveCounter;

    move-result-object v1

    new-instance v2, Lo/BankAccountsResponseJsonAdapter;

    invoke-direct {v2}, Lo/BankAccountsResponseJsonAdapter;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Lo/LiveCounter;->extraCallback(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;)Lo/ReelSymbol;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/getRewardsEarned$ICustomTabsCallback;-><init>(Landroid/content/Context;Lo/ReelSymbol;)V

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/content/Context;Lo/ReelSymbol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getRewardsEarned$ICustomTabsCallback;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getAvailableCreditLimit$onPostMessage;)Lo/getRewardsEarned$ICustomTabsCallback;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    new-instance v1, Lo/DataListItemJsonAdapter;

    invoke-direct {v1, p1}, Lo/DataListItemJsonAdapter;-><init>(Lo/getAvailableCreditLimit$onPostMessage;)V

    invoke-interface {v0, v1}, Lo/ReelSymbol;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add content ad listener"

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final ICustomTabsCallback(Lo/getPreviousBalance;)Lo/getRewardsEarned$ICustomTabsCallback;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    new-instance v1, Lo/activateCredProtect;

    invoke-direct {v1, p1}, Lo/activateCredProtect;-><init>(Lo/getPreviousBalance;)V

    invoke-interface {v0, v1}, Lo/ReelSymbol;->onMessageChannelReady(Lo/activateCredProtect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;Lo/getCurrentPurchaseValue$onPostMessage;Lo/getCurrentPurchaseValue$onNavigationEvent;)Lo/getRewardsEarned$ICustomTabsCallback;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    new-instance v1, Lo/RemoteControlResponseJsonAdapter;

    invoke-direct {v1, p2}, Lo/RemoteControlResponseJsonAdapter;-><init>(Lo/getCurrentPurchaseValue$onPostMessage;)V

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lo/NBAAckResponse;

    invoke-direct {p2, p3}, Lo/NBAAckResponse;-><init>(Lo/getCurrentPurchaseValue$onNavigationEvent;)V

    :goto_0
    invoke-interface {v0, p1, v1, p2}, Lo/ReelSymbol;->extraCallback(Ljava/lang/String;Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    invoke-static {p2, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method

.method public final extraCallback(Lo/getRewardType;)Lo/getRewardsEarned$ICustomTabsCallback;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    new-instance v1, Lo/accept;

    invoke-direct {v1, p1}, Lo/accept;-><init>(Lo/getRewardType;)V

    invoke-interface {v0, v1}, Lo/ReelSymbol;->extraCallback(Lo/PendingUsers;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set AdListener."

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final extraCallback(Lo/getTotalCreditLimit$onMessageChannelReady;)Lo/getRewardsEarned$ICustomTabsCallback;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    new-instance v1, Lo/RemoteControlCardJsonAdapter;

    invoke-direct {v1, p1}, Lo/RemoteControlCardJsonAdapter;-><init>(Lo/getTotalCreditLimit$onMessageChannelReady;)V

    invoke-interface {v0, v1}, Lo/ReelSymbol;->extraCallback(Lo/Actionable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final onPostMessage(Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;)Lo/getRewardsEarned$ICustomTabsCallback;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    new-instance v1, Lo/DismissConfig;

    invoke-direct {v1, p1}, Lo/DismissConfig;-><init>(Lo/StatementResponse$StatementDetails$AccountSummary$onNavigationEvent;)V

    invoke-interface {v0, v1}, Lo/ReelSymbol;->onMessageChannelReady(Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add app install ad listener"

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final onPostMessage()Lo/getRewardsEarned;
    .locals 3

    :try_start_0
    new-instance v0, Lo/getRewardsEarned;

    iget-object v1, p0, Lo/getRewardsEarned$ICustomTabsCallback;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/getRewardsEarned$ICustomTabsCallback;->onMessageChannelReady:Lo/ReelSymbol;

    invoke-interface {v2}, Lo/ReelSymbol;->onNavigationEvent()Lo/PayoutClaimSlotMachineResponse;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/getRewardsEarned;-><init>(Landroid/content/Context;Lo/PayoutClaimSlotMachineResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
