.class public Lo/LiveCounter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LiveCounter$extraCallback;
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setWheelBackground;

.field private final ICustomTabsCallback$Stub:Lo/DataItemBackground;

.field private final asBinder:Lo/DismissConfigJsonAdapter;

.field private final asInterface:Lo/getMethod;

.field private final extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;

.field private onMessageChannelReady:Lo/StatisticsItem;

.field private final onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Lo/WinAccessibilityJsonAdapter;

.field private final onTransact:Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;


# direct methods
.method public constructor <init>(Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;Lo/setWheelBackground;Lo/WinAccessibilityJsonAdapter;Lo/DataItemBackground;Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;Lo/getMethod;Lo/DismissConfigJsonAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/LiveCounter;->onNavigationEvent:Ljava/lang/Object;

    iput-object p1, p0, Lo/LiveCounter;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/LiveCounter;->ICustomTabsCallback:Lo/setWheelBackground;

    iput-object p3, p0, Lo/LiveCounter;->onPostMessage:Lo/WinAccessibilityJsonAdapter;

    iput-object p4, p0, Lo/LiveCounter;->ICustomTabsCallback$Stub:Lo/DataItemBackground;

    iput-object p5, p0, Lo/LiveCounter;->onTransact:Lo/CredProtectResponse_Cards_Properties_Config_RecommendedEmailJsonAdapter;

    iput-object p6, p0, Lo/LiveCounter;->asInterface:Lo/getMethod;

    iput-object p7, p0, Lo/LiveCounter;->asBinder:Lo/DismissConfigJsonAdapter;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/LiveCounter;)Lo/getMethod;
    .locals 0

    iget-object p0, p0, Lo/LiveCounter;->asInterface:Lo/getMethod;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/LiveCounter;)Lo/DataItemBackground;
    .locals 0

    iget-object p0, p0, Lo/LiveCounter;->ICustomTabsCallback$Stub:Lo/DataItemBackground;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/LiveCounter;)Lo/setWheelBackground;
    .locals 0

    iget-object p0, p0, Lo/LiveCounter;->ICustomTabsCallback:Lo/setWheelBackground;

    return-object p0
.end method

.method private static onNavigationEvent()Lo/StatisticsItem;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lo/LiveCounter;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v1, "ClientApi class is not an instance of IBinder"

    invoke-static {v1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;)V

    return-object v0

    :cond_0
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lo/TemplatePropertiesSlotMachineJsonAdapter;->asInterface(Landroid/os/IBinder;)Lo/StatisticsItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/LiveCounter;)Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;
    .locals 0

    iget-object p0, p0, Lo/LiveCounter;->extraCallback:Lo/WinLandingFragment$onViewCreated$3$onScrolled$$inlined$executeOnResume$1;

    return-object p0
.end method

.method static onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lo/LiveCounter$extraCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p0}, Lo/ControlStatementRepo$TransactionItem;->extraCallback(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Google Play Services is not available"

    invoke-static {p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p0}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p0}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    invoke-static {p0}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    sget-object p0, Lo/WinningTypes;->onEvent:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lo/LiveCounter$extraCallback;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lo/LiveCounter$extraCallback;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lo/LiveCounter$extraCallback;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-virtual {p2}, Lo/LiveCounter$extraCallback;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method private final onPostMessage()Lo/StatisticsItem;
    .locals 2

    iget-object v0, p0, Lo/LiveCounter;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/LiveCounter;->onMessageChannelReady:Lo/StatisticsItem;

    if-nez v1, :cond_0

    invoke-static {}, Lo/LiveCounter;->onNavigationEvent()Lo/StatisticsItem;

    move-result-object v1

    iput-object v1, p0, Lo/LiveCounter;->onMessageChannelReady:Lo/StatisticsItem;

    :cond_0
    iget-object v1, p0, Lo/LiveCounter;->onMessageChannelReady:Lo/StatisticsItem;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic onPostMessage(Lo/LiveCounter;)Lo/StatisticsItem;
    .locals 0

    invoke-direct {p0}, Lo/LiveCounter;->onPostMessage()Lo/StatisticsItem;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/app/Activity;)Lo/Database_Impl;
    .locals 4

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v0, "useClientJar flag not found in activity intent extras."

    invoke-static {v0}, Lo/getText1;->onPostMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    new-instance v0, Lo/LockerConfig;

    invoke-direct {v0, p0, p1}, Lo/LockerConfig;-><init>(Lo/LiveCounter;Landroid/app/Activity;)V

    invoke-static {p1, v3, v0}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Database_Impl;

    return-object p1
.end method

.method public final extraCallback(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;)Lo/ReelSymbol;
    .locals 1

    new-instance v0, Lo/LockConfigJsonAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/LockConfigJsonAdapter;-><init>(Lo/LiveCounter;Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ReelSymbol;

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lo/relaunch;
    .locals 1

    new-instance v0, Lo/LockConfig;

    invoke-direct {v0, p0, p2, p3, p1}, Lo/LockConfig;-><init>(Lo/LiveCounter;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/relaunch;

    return-object p1
.end method
