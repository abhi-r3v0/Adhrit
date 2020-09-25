.class public final Lo/setPanGiven;
.super Lo/clone;

# interfaces
.implements Lo/openRewards;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Lo/SuggestedAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SuggestedAmount<",
            "Lo/refreshAuth;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final getInterfaceDescriptor:Ljava/lang/Object;

.field private mayLaunchUrl:I

.field private newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final postMessage:Ljava/lang/String;

.field private requestPostMessageChannel:Lo/setIdentifier;

.field private updateVisuals:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lo/setPanGiven;-><init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo/clone;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setPanGiven;->getInterfaceDescriptor:Ljava/lang/Object;

    new-instance p1, Lo/SuggestedAmount;

    invoke-direct {p1}, Lo/SuggestedAmount;-><init>()V

    iput-object p1, p0, Lo/setPanGiven;->ICustomTabsCallback$Stub$Proxy:Lo/SuggestedAmount;

    const/4 p1, 0x1

    iput p1, p0, Lo/setPanGiven;->mayLaunchUrl:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/setPanGiven;->postMessage:Ljava/lang/String;

    iput-boolean p7, p0, Lo/setPanGiven;->warmup:Z

    return-void
.end method

.method private static ICustomTabsCallback(Lo/refreshAuth;)Lo/FabrikWebViewFragment$MyJavascriptInterface;
    .locals 20

    move-object/from16 v0, p0

    instance-of v1, v0, Lo/StackLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lo/StackLayoutManager;

    new-instance v1, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    move-object v3, v1

    invoke-virtual {v0}, Lo/StackLayoutManager;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lo/StackLayoutManager;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lo/StackLayoutManager;->extraCallback()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lo/StackLayoutManager;->onRelationshipValidationResult()Lo/enableDarkMode;

    move-result-object v7

    invoke-virtual {v0}, Lo/StackLayoutManager;->onTransact()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lo/StackLayoutManager;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v9

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0}, Lo/StackLayoutManager;->ICustomTabsService()Lo/setOutsideTouchEnabled;

    move-result-object v14

    invoke-virtual {v0}, Lo/StackLayoutManager;->asInterface()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v15

    invoke-virtual {v0}, Lo/StackLayoutManager;->requestPostMessageChannel()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lo/StackLayoutManager;->onPostMessage()Lo/getEventName;

    move-result-object v17

    invoke-virtual {v0}, Lo/StackLayoutManager;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lo/StackLayoutManager;->updateVisuals()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lo/StackLayoutManager;->newSession()Lo/getEventName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lo/StackLayoutManager;->newSession()Lo/getEventName;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    if-eqz v1, :cond_1

    check-cast v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    new-instance v1, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    move-object v3, v1

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->extraCallback()Lo/enableDarkMode;

    move-result-object v7

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onPostMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onTransact()D

    move-result-wide v10

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->ICustomTabsService()Lo/setOutsideTouchEnabled;

    move-result-object v14

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->asInterface()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v15

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->requestPostMessageChannel()Landroid/view/View;

    move-result-object v16

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->postMessage()Lo/getEventName;

    move-result-object v17

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->extraCommand()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->mayLaunchUrl()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->newSession()Lo/getEventName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->newSession()Lo/getEventName;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_1
    instance-of v0, v2, Lo/hideNavigationBar;

    if-eqz v0, :cond_3

    check-cast v2, Lo/hideNavigationBar;

    invoke-virtual {v1, v2}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    :cond_3
    return-object v1
.end method

.method private final extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/GatingActivity$onCreate$3$$special$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, p1}, Lo/GatingActivity$onCreate$3$$special$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Lo/FabrikWebViewFragment$MyJavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final extraCallback(Lo/StackLayoutManager;)V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/FabrikOnboardAddCardFragment$dialogInterface$1$onComplete$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, p1}, Lo/FabrikOnboardAddCardFragment$dialogInterface$1$onComplete$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Lo/StackLayoutManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final extraCallback(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V
    .locals 2

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, p1}, Lo/GatingActivity$onCreate$5$$special$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final handleMessage()Z
    .locals 1

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->RemoteActionCompatParcelizer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final onConnectionFailed()V
    .locals 1

    invoke-virtual {p0}, Lo/setPanGiven;->AudioAttributesCompatParcelizer()Lo/setIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/setIdentifier;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setPanGiven;Lo/PaymentMode$$Parcelable;Lo/PaymentMode$$Parcelable;)V
    .locals 0

    invoke-static {p1, p2}, Lo/setPanGiven;->onPostMessage(Lo/PaymentMode$$Parcelable;Lo/PaymentMode$$Parcelable;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/refreshAuth;)Lo/FabrikWebViewFragment$MyJavascriptInterface;
    .locals 0

    invoke-static {p0}, Lo/setPanGiven;->ICustomTabsCallback(Lo/refreshAuth;)Lo/FabrikWebViewFragment$MyJavascriptInterface;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Lo/PaymentMode$$Parcelable;Lo/PaymentMode$$Parcelable;)V
    .locals 1

    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    :cond_0
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    :cond_1
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    :cond_2
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    :cond_3
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

    :cond_4
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    :cond_5
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    :cond_6
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    :cond_7
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    if-nez v0, :cond_8

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    :cond_8
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsService:Lo/ParentEntity;

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsService:Lo/ParentEntity;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsService:Lo/ParentEntity;

    :cond_9
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    if-nez v0, :cond_a

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    :cond_a
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    if-nez v0, :cond_b

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    :cond_b
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_c

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iput-object v0, p1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    :cond_c
    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    if-nez v0, :cond_d

    iget-object p0, p0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    iput-object p0, p1, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    :cond_d
    return-void
.end method

.method private final setCallbacksMessenger()Lo/LockConfigDataJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final AudioAttributesCompatParcelizer()Lo/setIdentifier;
    .locals 2

    iget-object v0, p0, Lo/setPanGiven;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPanGiven;->requestPostMessageChannel:Lo/setIdentifier;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final AudioAttributesImplApi21Parcelizer()V
    .locals 3

    invoke-direct {p0}, Lo/setPanGiven;->handleMessage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/setPanGiven;->onTransact:Lo/getEventName;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lo/setPanGiven;->newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v1, :cond_2

    :goto_0
    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final AudioAttributesImplBaseParcelizer()V
    .locals 5

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface()Lo/Data;

    move-result-object v0

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v2, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v3, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/Data;->onMessageChannelReady(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/setPanGiven;->updateVisuals:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/setPanGiven;->updateVisuals:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(I)V
    .locals 1

    const-string v0, "setMaxNumberOfAds must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iput p1, p0, Lo/setPanGiven;->mayLaunchUrl:I

    return-void
.end method

.method public final ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/setPanGiven;->newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method

.method public final ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
    .locals 12

    const-string v0, ""

    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, p1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iput-object v2, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    :cond_0
    iget v1, p1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    sget-object p2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;

    invoke-direct {v0, p0, p1}, Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Lo/GreetingCampaignCodeRequest;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget v1, v1, Lo/setCardBackgroundView;->subscribe:I

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput v8, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {}, Lo/getParcel;->extraCallback()Lo/setOnSetCropOverlayReleasedListener;

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    const/4 v6, 0x0

    iget-object v7, p0, Lo/setPanGiven;->asBinder:Lo/BankAccountData;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lo/setOnSetCropOverlayReleasedListener;->onMessageChannelReady(Landroid/content/Context;Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)Lo/setSwipedDirection;

    move-result-object p1

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    const-string p1, "AdRenderer: "

    iget-object p2, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "slots"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ads"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lo/setPanGiven;->onConnectionFailed()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v1, :cond_6

    new-instance v11, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;

    move-object v2, v11

    move-object v3, p0

    move v4, v10

    move-object v5, p2

    move v6, v1

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;ILorg/json/JSONArray;ILo/GreetingCampaignCodeRequest;)V

    invoke-static {v11}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p1

    if-ge v8, p1, :cond_7

    :try_start_1
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentModeListResponseJsonAdapter;

    sget-object p2, Lo/WinningTypes;->MediaBrowserCompat$Subscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, p2}, Lo/PaymentModeListResponseJsonAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/refreshAuth;

    sget-object p2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;

    invoke-direct {v1, p0, p1, v8, v9}, Lo/FabrikCardOnBoardingFragment$introCtaClicked$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Lo/refreshAuth;ILjava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_5
    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    return-void

    :catch_4
    move-exception p1

    const-string p2, "Malformed native ad response"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v8}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return-void
.end method

.method protected final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lo/setPanGiven;->onMessageChannelReady(Ljava/util/List;)V

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v1}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lo/setPanGiven;->onConnectionFailed()V

    :try_start_0
    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v1}, Lo/Info;->updateVisuals()Lo/LiveCallbackWrapper;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v1, :cond_1

    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v1}, Lo/Info;->ICustomTabsCallback$Stub()Lo/RawBankAccountJsonAdapter;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v1, :cond_2

    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v1}, Lo/Info;->asInterface()Lo/TrackBalanceConfigsJsonAdapter;

    move-result-object v1

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object v9, v0

    :goto_2
    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v1, :cond_3

    iget-object v1, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v1}, Lo/Info;->newSession()Lo/openGameRewards;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    invoke-static/range {p2 .. p2}, Lo/setPanGiven;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_6

    iget-object v4, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v4, :cond_6

    new-instance v9, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onNavigationEvent()Ljava/util/List;

    move-result-object v12

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->extraCallback()Lo/enableDarkMode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->extraCallback()Lo/enableDarkMode;

    move-result-object v1

    move-object v14, v1

    goto :goto_4

    :cond_4
    move-object v14, v0

    :goto_4
    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onPostMessage()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->asInterface()D

    move-result-wide v17

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onTransact()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->newSession()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback$Stub$Proxy()Lo/getEventName;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsCallback$Stub$Proxy()Lo/getEventName;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_5
    move-object/from16 v23, v0

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->ICustomTabsService()Lo/getEventName;

    move-result-object v24

    invoke-interface {v5}, Lo/LiveCallbackWrapper;->updateVisuals()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lo/setPath;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/LiveCallbackWrapper;Lo/refreshAuth;)V

    invoke-virtual {v9, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    :goto_5
    invoke-direct {v7, v9}, Lo/setPanGiven;->extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V

    goto/16 :goto_b

    :cond_6
    if-eqz v6, :cond_9

    iget-object v4, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v4, :cond_9

    new-instance v9, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_7
    move-object v14, v0

    :goto_6
    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onTransact()D

    move-result-wide v17

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->asInterface()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsService()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_8
    move-object/from16 v23, v0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->updateVisuals()Lo/getEventName;

    move-result-object v24

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lo/setPath;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/RawBankAccountJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_c

    iget-object v4, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-eqz v4, :cond_c

    new-instance v9, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback()Lo/enableDarkMode;

    move-result-object v1

    move-object v14, v1

    goto :goto_7

    :cond_a
    move-object v14, v0

    :goto_7
    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->onTransact()D

    move-result-wide v16

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->asInterface()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;

    move-result-object v21

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->ICustomTabsService()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->postMessage()Lo/getEventName;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_b
    move-object/from16 v23, v0

    invoke-interface {v6}, Lo/RawBankAccountJsonAdapter;->updateVisuals()Lo/getEventName;

    move-result-object v24

    move-object v10, v9

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v25}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Landroid/os/Bundle;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;)V

    new-instance v0, Lo/setPath;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/RawBankAccountJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v0}, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/logout;)V

    invoke-direct {v7, v9}, Lo/setPanGiven;->extraCallback(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V

    goto/16 :goto_b

    :cond_c
    if-eqz v9, :cond_f

    iget-object v4, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v4, :cond_f

    new-instance v6, Lo/FabrikWebViewFragment$MyJavascriptInterface;

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v1

    move-object v14, v1

    goto :goto_8

    :cond_d
    move-object v14, v0

    :goto_8
    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onTransact()Ljava/lang/String;

    move-result-object v16

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->warmup()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v22

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_e
    move-object/from16 v23, v0

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->mayLaunchUrl()Lo/getEventName;

    move-result-object v24

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsService()Landroid/os/Bundle;

    move-result-object v26

    move-object v10, v6

    move-object/from16 v25, v3

    invoke-direct/range {v10 .. v26}, Lo/FabrikWebViewFragment$MyJavascriptInterface;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lo/setPath;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/TrackBalanceConfigsJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v0}, Lo/FabrikWebViewFragment$MyJavascriptInterface;->onMessageChannelReady(Lo/logout;)V

    goto/16 :goto_5

    :cond_f
    if-eqz v9, :cond_12

    iget-object v4, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-eqz v4, :cond_12

    new-instance v6, Lo/StackLayoutManager;

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onPostMessage()Ljava/util/List;

    move-result-object v12

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onNavigationEvent()Lo/enableDarkMode;

    move-result-object v1

    move-object v14, v1

    goto :goto_9

    :cond_10
    move-object v14, v0

    :goto_9
    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->onTransact()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsService()Landroid/os/Bundle;

    move-result-object v18

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->warmup()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v19

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->newSession()Lo/getEventName;

    move-result-object v0

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_11
    move-object/from16 v20, v0

    invoke-interface {v9}, Lo/TrackBalanceConfigsJsonAdapter;->mayLaunchUrl()Lo/getEventName;

    move-result-object v21

    move-object v10, v6

    move-object/from16 v22, v3

    invoke-direct/range {v10 .. v22}, Lo/StackLayoutManager;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/enableDarkMode;Ljava/lang/String;Ljava/lang/String;Lo/setOutsideTouchEnabled;Landroid/os/Bundle;Lo/TrophySectionsResponseJsonAdapter;Landroid/view/View;Lo/getEventName;Ljava/lang/String;)V

    new-instance v0, Lo/setPath;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    move-object v1, v0

    move-object/from16 v3, p0

    move-object v5, v9

    move-object v9, v6

    invoke-direct/range {v1 .. v6}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/TrackBalanceConfigsJsonAdapter;Lo/refreshAuth;)V

    invoke-virtual {v9, v0}, Lo/StackLayoutManager;->onMessageChannelReady(Lo/logout;)V

    invoke-direct {v7, v9}, Lo/setPanGiven;->extraCallback(Lo/StackLayoutManager;)V

    goto/16 :goto_b

    :cond_12
    if-eqz v1, :cond_13

    iget-object v0, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    if-eqz v0, :cond_13

    iget-object v0, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    invoke-interface {v1}, Lo/openGameRewards;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/FabrikCardOnBoardingFragment$skipReward$$inlined$executeOnResume$1;

    invoke-direct {v2, v7, v1}, Lo/FabrikCardOnBoardingFragment$skipReward$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Lo/openGameRewards;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    :cond_13
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lo/DeviceAttrResponse;->extraCallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_14
    iget-object v0, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub$Proxy:Lo/refreshAuth;

    iget-boolean v1, v7, Lo/setPanGiven;->warmup:Z

    if-eqz v1, :cond_15

    iget-object v1, v7, Lo/setPanGiven;->ICustomTabsCallback$Stub$Proxy:Lo/SuggestedAmount;

    invoke-virtual {v1, v0}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    goto :goto_b

    :cond_15
    instance-of v1, v0, Lo/StackLayoutManager;

    if-eqz v1, :cond_16

    iget-object v3, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v3, :cond_16

    :goto_a
    iget-object v0, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub$Proxy:Lo/refreshAuth;

    invoke-static {v0}, Lo/setPanGiven;->ICustomTabsCallback(Lo/refreshAuth;)Lo/FabrikWebViewFragment$MyJavascriptInterface;

    move-result-object v0

    invoke-direct {v7, v0}, Lo/setPanGiven;->extraCallback(Lo/FabrikWebViewFragment$MyJavascriptInterface;)V

    goto :goto_b

    :cond_16
    if-eqz v1, :cond_17

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_17

    iget-object v0, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub$Proxy:Lo/refreshAuth;

    check-cast v0, Lo/StackLayoutManager;

    invoke-direct {v7, v0}, Lo/setPanGiven;->extraCallback(Lo/StackLayoutManager;)V

    goto :goto_b

    :cond_17
    instance-of v1, v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    if-eqz v1, :cond_18

    iget-object v3, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->postMessage:Lo/Actionable;

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_18
    if-eqz v1, :cond_19

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_19

    iget-object v0, v8, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub$Proxy:Lo/refreshAuth;

    check-cast v0, Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;

    invoke-direct {v7, v0}, Lo/setPanGiven;->extraCallback(Lo/TicketMachineFragment$animateMachine$$inlined$executeOnResume$1;)V

    goto :goto_b

    :cond_19
    instance-of v1, v0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    if-eqz v1, :cond_1a

    iget-object v1, v7, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    check-cast v0, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lo/TrophyRoomFragment$clickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/FabrikCardOnBoardingFragment$showCampaignIntro$$inlined$executeOnResume$1;

    invoke-direct {v2, v7, v0, v8}, Lo/FabrikCardOnBoardingFragment$showCampaignIntro$$inlined$executeOnResume$1;-><init>(Lo/setPanGiven;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b
    invoke-super/range {p0 .. p2}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    return v0

    :cond_1a
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return v2

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final IconCompatParcelizer()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final MediaBrowserCompat()V
    .locals 1

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    :cond_0
    return-void
.end method

.method protected final RemoteActionCompatParcelizer()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lo/refreshAuth;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsCallback$Stub$Proxy:Lo/SuggestedAmount;

    return-object v0
.end method

.method protected final cancelAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Z)V

    return-void
.end method

.method public final connect()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/setPanGiven;->updateVisuals:Z

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface()Lo/Data;

    move-result-object v0

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final disconnect()Lo/fromMediaItemList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    return-object v0
.end method

.method protected final extraCallback(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/DeviceAttrResponse;->onPostMessage(IZ)V

    return-void
.end method

.method protected final extraCallback(Lo/getEventName;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of v0, p1, Lo/logout;

    if-eqz v0, :cond_1

    check-cast p1, Lo/logout;

    invoke-interface {p1}, Lo/logout;->onMessageChannelReady()V

    :cond_1
    iget-object p1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    return-void
.end method

.method public final extraCallback(Lo/setStartingAngle;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getExtras()V
    .locals 1

    invoke-super {p0}, Lo/clone;->write()V

    iget-object v0, p0, Lo/setPanGiven;->newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/setPanGiven;->newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    :cond_0
    return-void
.end method

.method public final getItem()V
    .locals 2

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->cancel()V

    return-void

    :cond_0
    invoke-super {p0}, Lo/clone;->getItem()V

    return-void
.end method

.method public final getRoot()Z
    .locals 1

    invoke-direct {p0}, Lo/setPanGiven;->setCallbacksMessenger()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/setPanGiven;->setCallbacksMessenger()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lo/LockConfigDataJsonAdapter;->updateVisuals:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getServiceComponent()V
    .locals 2

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    iget-object v0, v0, Lo/activateCredProtect;->asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object v0

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    iget-object v1, v1, Lo/activateCredProtect;->asBinder:Lo/WinLuckyNumberResponseJsonAdapter;

    invoke-virtual {v0, v1}, Lo/ClickReference$$Parcelable;->extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final getSessionToken()V
    .locals 2

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->INotificationSideChannel()V

    return-void

    :cond_0
    invoke-super {p0}, Lo/clone;->getSessionToken()V

    return-void
.end method

.method public final isConnected()Z
    .locals 1

    invoke-direct {p0}, Lo/setPanGiven;->setCallbacksMessenger()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/setPanGiven;->setCallbacksMessenger()Lo/LockConfigDataJsonAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lo/LockConfigDataJsonAdapter;->requestPostMessageChannel:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final mayLaunchUrl()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/setPanGiven;->onTransact:Lo/getEventName;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    iget-object v1, p0, Lo/setPanGiven;->onTransact:Lo/getEventName;

    invoke-virtual {v0, v1, p1}, Lo/getData;->extraCallback(Lo/getEventName;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    return-void
.end method

.method final onNavigationEvent()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    iget-object v0, p0, Lo/setPanGiven;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Initializing webview native ads utills"

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    new-instance v1, Lo/getVersionNumber;

    iget-object v2, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v5, p0, Lo/setPanGiven;->postMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v2, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    iget-object v2, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v7, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    move-object v2, v1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lo/getVersionNumber;-><init>(Landroid/content/Context;Lo/setPanGiven;Ljava/lang/String;Lo/GameCta;Lo/DataListJsonAdapter;)V

    iput-object v1, p0, Lo/setPanGiven;->requestPostMessageChannel:Lo/setIdentifier;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/logout;)V
    .locals 4

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface()Lo/Data;

    move-result-object v0

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v2, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    new-instance v3, Lo/DataJsonAdapter;

    invoke-direct {v3, p1}, Lo/DataJsonAdapter;-><init>(Lo/logout;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lo/Data;->onPostMessage(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/RedeemInitiatedRewardDetailsResponse;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/openAmexWebView;)V
    .locals 1

    iget-object v0, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/openAmexWebView;)V

    :cond_0
    return-void
.end method

.method protected final onNavigationEvent(Z)V
    .locals 6

    invoke-super {p0, p1}, Lo/clone;->onNavigationEvent(Z)V

    iget-boolean p1, p0, Lo/setPanGiven;->updateVisuals:Z

    if-eqz p1, :cond_0

    sget-object p1, Lo/WinningTypes;->fromParcel:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lo/setPanGiven;->AudioAttributesImplBaseParcelizer()V

    :cond_0
    invoke-direct {p0}, Lo/setPanGiven;->handleMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/setPanGiven;->newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p1, :cond_4

    :cond_1
    iget-object p1, p0, Lo/setPanGiven;->newSession:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p1, :cond_3

    const-string v0, "javascript"

    goto :goto_0

    :cond_3
    move-object p1, v0

    move-object v5, p1

    :goto_1
    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/getData;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget v0, v0, Lo/DataListJsonAdapter;->onPostMessage:I

    iget-object v1, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget v1, v1, Lo/DataListJsonAdapter;->onMessageChannelReady:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v2

    const-string v3, ""

    const-string v4, "javascript"

    invoke-virtual/range {v0 .. v5}, Lo/getData;->onNavigationEvent(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/getEventName;

    move-result-object p1

    iput-object p1, p0, Lo/setPanGiven;->onTransact:Lo/getEventName;

    iget-object p1, p0, Lo/setPanGiven;->onTransact:Lo/getEventName;

    if-eqz p1, :cond_4

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object p1

    iget-object v0, p0, Lo/setPanGiven;->onTransact:Lo/getEventName;

    invoke-virtual {p1, v0}, Lo/getData;->onNavigationEvent(Lo/getEventName;)V

    :cond_4
    return-void
.end method

.method protected final onNavigationEvent(Lo/setLastItem;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)Z
    .locals 0

    iget-object p1, p0, Lo/setPanGiven;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/setLastItem;Lo/setCanReverse;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lo/setPanGiven;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p0, Lo/setPanGiven;->mayLaunchUrl:I

    invoke-super {p0, p1, p2, v0}, Lo/clone;->extraCallback(Lo/setLastItem;Lo/setCanReverse;I)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    invoke-static {p2}, Lo/getText1;->extraCallback(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Error initializing webview."

    const-string v0, "Ads"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPanGiven;->postMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;
    .locals 1

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    return-object p1
.end method

.method protected final onPostMessage(IZ)V
    .locals 0

    invoke-direct {p0}, Lo/setPanGiven;->onConnectionFailed()V

    invoke-super {p0, p1, p2}, Lo/clone;->onPostMessage(IZ)V

    return-void
.end method

.method public final onPostMessage(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lo/setPanGiven;->ICustomTabsService:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    return-void
.end method

.method public final onPostMessage(Lo/setMaxCropResultSize;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final postMessage()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sendCustomAction()V
    .locals 3

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-nez v1, :cond_0

    invoke-super {p0}, Lo/clone;->sendCustomAction()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    const/4 v1, 0x0

    invoke-interface {v0}, Lo/Info;->ICustomTabsCallback$Stub()Lo/RawBankAccountJsonAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lo/RawBankAccountJsonAdapter;->ICustomTabsService()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lo/Info;->asInterface()Lo/TrackBalanceConfigsJsonAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lo/TrackBalanceConfigsJsonAdapter;->warmup()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lo/Info;->newSession()Lo/openGameRewards;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/openGameRewards;->onPostMessage()Lo/TrophySectionsResponseJsonAdapter;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v1}, Lo/TrophySectionsResponseJsonAdapter;->onTransact()Lo/TrophySectionJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lo/TrophySectionJsonAdapter;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setDefaultImpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method
