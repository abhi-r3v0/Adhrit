.class public final Lo/WinDetailsItem;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getRewardType;

.field private ICustomTabsCallback$Stub:Lo/getTransactions;

.field private ICustomTabsCallback$Stub$Proxy:Lo/getAmount;

.field private asBinder:Lo/getCardLimits;

.field private asInterface:Ljava/lang/String;

.field private final extraCallback:Landroid/content/Context;

.field private getInterfaceDescriptor:Lo/getExpiringWithin60Days;

.field private newSession:Z

.field private final onMessageChannelReady:Lo/setDigitUpdateListener;

.field private final onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

.field private onPostMessage:Lo/zzd;

.field private onRelationshipValidationResult:Lo/SpinDetail;

.field private onTransact:Lo/setPayments;

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lo/setDigitUpdateListener;->ICustomTabsCallback:Lo/setDigitUpdateListener;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/WinDetailsItem;-><init>(Landroid/content/Context;Lo/setDigitUpdateListener;Lo/getStatementDate;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/setDigitUpdateListener;Lo/getStatementDate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lo/BankAccountsResponseJsonAdapter;

    invoke-direct {p3}, Lo/BankAccountsResponseJsonAdapter;-><init>()V

    iput-object p3, p0, Lo/WinDetailsItem;->onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

    iput-object p1, p0, Lo/WinDetailsItem;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/WinDetailsItem;->onMessageChannelReady:Lo/setDigitUpdateListener;

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getRewardType;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lo/WinDetailsItem;->ICustomTabsCallback:Lo/getRewardType;

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz p1, :cond_0

    new-instance v1, Lo/accept;

    invoke-direct {v1, p1}, Lo/accept;-><init>(Lo/getRewardType;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/SpinDetail;->onPostMessage(Lo/PendingUsers;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    :try_start_0
    iput-boolean p1, p0, Lo/WinDetailsItem;->warmup:Z

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    invoke-interface {v0, p1}, Lo/SpinDetail;->ICustomTabsCallback(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    invoke-interface {v0}, Lo/SpinDetail;->extraCommand()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/setPayments;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lo/WinDetailsItem;->onTransact:Lo/setPayments;

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz p1, :cond_0

    new-instance v1, Lo/setCyclic;

    invoke-direct {v1, p1}, Lo/setCyclic;-><init>(Lo/setPayments;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/SpinDetail;->onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/zzd;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lo/WinDetailsItem;->onPostMessage:Lo/zzd;

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

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

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lo/WinDetailsItem;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    invoke-interface {v0}, Lo/SpinDetail;->IconCompatParcelizer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#008 Must be called on the main UI thread."

    invoke-static {v1, v0}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/getAmount;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lo/WinDetailsItem;->ICustomTabsCallback$Stub$Proxy:Lo/getAmount;

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-eqz p1, :cond_0

    new-instance v1, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;

    invoke-direct {v1, p1}, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;-><init>(Lo/getAmount;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lo/SpinDetail;->extraCallback(Lo/CredProtectResponseJsonAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/WinDetailsItem;->newSession:Z

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/WinDetailsItem;->asInterface:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lo/WinDetailsItem;->asInterface:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/WinAccessibility;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    if-nez v0, :cond_9

    const-string v0, "loadAd"

    iget-object v1, p0, Lo/WinDetailsItem;->asInterface:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lo/WinDetailsItem;->extraCallback(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lo/WinDetailsItem;->newSession:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lo/setCurrentItem$default;->onPostMessage()Lo/setCurrentItem$default;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lo/setCurrentItem$default;

    invoke-direct {v0}, Lo/setCurrentItem$default;-><init>()V

    :goto_0
    move-object v4, v0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback()Lo/LiveCounter;

    move-result-object v2

    iget-object v0, p0, Lo/WinDetailsItem;->extraCallback:Landroid/content/Context;

    iget-object v5, p0, Lo/WinDetailsItem;->asInterface:Ljava/lang/String;

    iget-object v6, p0, Lo/WinDetailsItem;->onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

    new-instance v7, Lo/LockerConfigJsonAdapter;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lo/LockerConfigJsonAdapter;-><init>(Lo/LiveCounter;Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lo/LiveCounter;->onPostMessage(Landroid/content/Context;ZLo/LiveCounter$extraCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SpinDetail;

    iput-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    iget-object v1, p0, Lo/WinDetailsItem;->ICustomTabsCallback:Lo/getRewardType;

    if-eqz v1, :cond_2

    new-instance v1, Lo/accept;

    iget-object v2, p0, Lo/WinDetailsItem;->ICustomTabsCallback:Lo/getRewardType;

    invoke-direct {v1, v2}, Lo/accept;-><init>(Lo/getRewardType;)V

    invoke-interface {v0, v1}, Lo/SpinDetail;->onPostMessage(Lo/PendingUsers;)V

    :cond_2
    iget-object v0, p0, Lo/WinDetailsItem;->onPostMessage:Lo/zzd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    new-instance v1, Lo/zze;

    iget-object v2, p0, Lo/WinDetailsItem;->onPostMessage:Lo/zzd;

    invoke-direct {v1, v2}, Lo/zze;-><init>(Lo/zzd;)V

    invoke-interface {v0, v1}, Lo/SpinDetail;->ICustomTabsCallback(Lo/ParentEntity;)V

    :cond_3
    iget-object v0, p0, Lo/WinDetailsItem;->onTransact:Lo/setPayments;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    new-instance v1, Lo/setCyclic;

    iget-object v2, p0, Lo/WinDetailsItem;->onTransact:Lo/setPayments;

    invoke-direct {v1, v2}, Lo/setCyclic;-><init>(Lo/setPayments;)V

    invoke-interface {v0, v1}, Lo/SpinDetail;->onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V

    :cond_4
    iget-object v0, p0, Lo/WinDetailsItem;->asBinder:Lo/getCardLimits;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    new-instance v1, Lo/CounterConfigJsonAdapter;

    iget-object v2, p0, Lo/WinDetailsItem;->asBinder:Lo/getCardLimits;

    invoke-direct {v1, v2}, Lo/CounterConfigJsonAdapter;-><init>(Lo/getCardLimits;)V

    invoke-interface {v0, v1}, Lo/SpinDetail;->extraCallback(Lo/StatisticsItemJsonAdapter;)V

    :cond_5
    iget-object v0, p0, Lo/WinDetailsItem;->ICustomTabsCallback$Stub:Lo/getTransactions;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    new-instance v1, Lo/setCurrentPosition;

    iget-object v2, p0, Lo/WinDetailsItem;->ICustomTabsCallback$Stub:Lo/getTransactions;

    invoke-direct {v1, v2}, Lo/setCurrentPosition;-><init>(Lo/getTransactions;)V

    invoke-interface {v0, v1}, Lo/SpinDetail;->extraCallback(Lo/setStartingAngle;)V

    :cond_6
    iget-object v0, p0, Lo/WinDetailsItem;->getInterfaceDescriptor:Lo/getExpiringWithin60Days;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    iget-object v1, p0, Lo/WinDetailsItem;->getInterfaceDescriptor:Lo/getExpiringWithin60Days;

    invoke-virtual {v1}, Lo/getExpiringWithin60Days;->onMessageChannelReady()Lo/MetaSlotMachineJsonAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinDetail;->onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V

    :cond_7
    iget-object v0, p0, Lo/WinDetailsItem;->ICustomTabsCallback$Stub$Proxy:Lo/getAmount;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    new-instance v1, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;

    iget-object v2, p0, Lo/WinDetailsItem;->ICustomTabsCallback$Stub$Proxy:Lo/getAmount;

    invoke-direct {v1, v2}, Lo/CredProtectResponse_Cards_Properties_ConfigJsonAdapter;-><init>(Lo/getAmount;)V

    invoke-interface {v0, v1}, Lo/SpinDetail;->extraCallback(Lo/CredProtectResponseJsonAdapter;)V

    :cond_8
    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    iget-boolean v1, p0, Lo/WinDetailsItem;->warmup:Z

    invoke-interface {v0, v1}, Lo/SpinDetail;->ICustomTabsCallback(Z)V

    :cond_9
    iget-object v0, p0, Lo/WinDetailsItem;->onRelationshipValidationResult:Lo/SpinDetail;

    iget-object v1, p0, Lo/WinDetailsItem;->extraCallback:Landroid/content/Context;

    invoke-static {v1, p1}, Lo/setDigitUpdateListener;->extraCallback(Landroid/content/Context;Lo/WinAccessibility;)Lo/setLastItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinDetail;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lo/WinDetailsItem;->onNavigationEvent:Lo/BankAccountsResponseJsonAdapter;

    invoke-virtual {p1}, Lo/WinAccessibility;->asInterface()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/BankAccountsResponseJsonAdapter;->onMessageChannelReady(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0, p1}, Lo/getText1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
