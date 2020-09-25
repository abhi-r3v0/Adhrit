.class public final Lo/getParcel;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static extraCallback:Lo/getParcel;

.field private static final onNavigationEvent:Ljava/lang/Object;


# instance fields
.field private final ICustomTabsCallback:Lo/CampaignIntroDetailsJsonAdapter;

.field private final ICustomTabsCallback$Stub:Lo/setOnSetCropOverlayReleasedListener;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;

.field private final ICustomTabsService:Lo/Values;

.field private final ICustomTabsService$Stub:Lo/getCities;

.field private final ICustomTabsService$Stub$Proxy:Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

.field private final INotificationSideChannel:Lo/RedeemRequestModel;

.field private final INotificationSideChannel$Default:Lo/FeaturePitchJsonAdapter;

.field private final INotificationSideChannel$Stub:Lo/getListTransaction;

.field private final INotificationSideChannel$Stub$Proxy:Lo/getCtas;

.field private final IPostMessageService:Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

.field private final IPostMessageService$Stub:Lo/AccountTemplateProperties;

.field private final IPostMessageService$Stub$Proxy:Lo/Template;

.field private final RemoteActionCompatParcelizer:Lo/GreetingCardResponse;

.field private final asBinder:Lo/AuthSupportedResponse$MetaData;

.field private final asInterface:Lo/RedeemRequestResponseJsonAdapter;

.field private final cancel:Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

.field private final cancelAll:Lo/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;

.field private final extraCommand:Lo/Stat;

.field private final getDefaultImpl:Lo/getSwipedDirection;

.field private final getInterfaceDescriptor:Lo/component15;

.field private final mayLaunchUrl:Lo/AutoDebitRequestBodyJsonAdapter;

.field private final newSession:Lo/ValuesJsonAdapter;

.field private final notify:Lo/getData;

.field private final onMessageChannelReady:Lo/LifeCycleObserverToState;

.field private final onPostMessage:Lo/ColorsJsonAdapter;

.field private final onRelationshipValidationResult:Lo/setCtaState$default;

.field private final onTransact:Lo/getAccount_number;

.field private final postMessage:Lo/getSwipeActions;

.field private final requestPostMessageChannel:Lo/NBAResponse;

.field private final setDefaultImpl:Lo/NotificationSeenAckRequestBodyJsonAdapter;

.field private final updateVisuals:Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;

.field private final validateRelationship:Lo/getTotal;

.field private final warmup:Lo/GreetingCampaignInvitesResponseJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getParcel;->onNavigationEvent:Ljava/lang/Object;

    new-instance v0, Lo/getParcel;

    invoke-direct {v0}, Lo/getParcel;-><init>()V

    sget-object v1, Lo/getParcel;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lo/getParcel;->extraCallback:Lo/getParcel;

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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/LifeCycleObserverToState;

    invoke-direct {v0}, Lo/LifeCycleObserverToState;-><init>()V

    iput-object v0, p0, Lo/getParcel;->onMessageChannelReady:Lo/LifeCycleObserverToState;

    new-instance v0, Lo/ColorsJsonAdapter;

    invoke-direct {v0}, Lo/ColorsJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->onPostMessage:Lo/ColorsJsonAdapter;

    new-instance v0, Lo/CampaignIntroDetailsJsonAdapter;

    invoke-direct {v0}, Lo/CampaignIntroDetailsJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->ICustomTabsCallback:Lo/CampaignIntroDetailsJsonAdapter;

    new-instance v0, Lo/setOnSetCropOverlayReleasedListener;

    invoke-direct {v0}, Lo/setOnSetCropOverlayReleasedListener;-><init>()V

    iput-object v0, p0, Lo/getParcel;->ICustomTabsCallback$Stub:Lo/setOnSetCropOverlayReleasedListener;

    new-instance v0, Lo/AuthSupportedResponse$MetaData;

    invoke-direct {v0}, Lo/AuthSupportedResponse$MetaData;-><init>()V

    iput-object v0, p0, Lo/getParcel;->asBinder:Lo/AuthSupportedResponse$MetaData;

    new-instance v0, Lo/setCtaState$default;

    invoke-direct {v0}, Lo/setCtaState$default;-><init>()V

    iput-object v0, p0, Lo/getParcel;->onRelationshipValidationResult:Lo/setCtaState$default;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lo/getShowCertified;

    invoke-direct {v0}, Lo/getShowCertified;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Lo/getShowCpi;

    invoke-direct {v0}, Lo/getShowCpi;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    new-instance v0, Lo/getVariant_name;

    invoke-direct {v0}, Lo/getVariant_name;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    new-instance v0, Lo/getNfc_enabled;

    invoke-direct {v0}, Lo/getNfc_enabled;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    new-instance v0, Lo/getCreated_by;

    invoke-direct {v0}, Lo/getCreated_by;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lo/getFingerprint;

    invoke-direct {v0}, Lo/getFingerprint;-><init>()V

    :goto_0
    iput-object v0, p0, Lo/getParcel;->onTransact:Lo/getAccount_number;

    new-instance v0, Lo/RedeemRequestResponseJsonAdapter;

    invoke-direct {v0}, Lo/RedeemRequestResponseJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->asInterface:Lo/RedeemRequestResponseJsonAdapter;

    new-instance v0, Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-direct {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->warmup:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    new-instance v0, Lo/GreetingCardResponse;

    invoke-direct {v0}, Lo/GreetingCardResponse;-><init>()V

    iput-object v0, p0, Lo/getParcel;->RemoteActionCompatParcelizer:Lo/GreetingCardResponse;

    new-instance v0, Lo/Values;

    invoke-direct {v0}, Lo/Values;-><init>()V

    iput-object v0, p0, Lo/getParcel;->ICustomTabsService:Lo/Values;

    new-instance v0, Lo/ValuesJsonAdapter;

    invoke-direct {v0}, Lo/ValuesJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->newSession:Lo/ValuesJsonAdapter;

    invoke-static {}, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->extraCallback()Lo/component15;

    move-result-object v0

    iput-object v0, p0, Lo/getParcel;->getInterfaceDescriptor:Lo/component15;

    new-instance v0, Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy:Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;

    new-instance v0, Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/getParcel;->updateVisuals:Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;

    new-instance v0, Lo/getSwipeActions;

    invoke-direct {v0}, Lo/getSwipeActions;-><init>()V

    iput-object v0, p0, Lo/getParcel;->postMessage:Lo/getSwipeActions;

    new-instance v0, Lo/AutoDebitRequestBodyJsonAdapter;

    invoke-direct {v0}, Lo/AutoDebitRequestBodyJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->mayLaunchUrl:Lo/AutoDebitRequestBodyJsonAdapter;

    new-instance v0, Lo/NotificationSeenAckRequestBodyJsonAdapter;

    invoke-direct {v0}, Lo/NotificationSeenAckRequestBodyJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->setDefaultImpl:Lo/NotificationSeenAckRequestBodyJsonAdapter;

    new-instance v0, Lo/Stat;

    invoke-direct {v0}, Lo/Stat;-><init>()V

    iput-object v0, p0, Lo/getParcel;->extraCommand:Lo/Stat;

    new-instance v0, Lo/NBAResponse;

    invoke-direct {v0}, Lo/NBAResponse;-><init>()V

    iput-object v0, p0, Lo/getParcel;->requestPostMessageChannel:Lo/NBAResponse;

    new-instance v0, Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

    invoke-direct {v0}, Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;-><init>()V

    iput-object v0, p0, Lo/getParcel;->IPostMessageService:Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

    new-instance v0, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    invoke-direct {v0}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;-><init>()V

    iput-object v0, p0, Lo/getParcel;->ICustomTabsService$Stub$Proxy:Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    new-instance v0, Lo/getTotal;

    invoke-direct {v0}, Lo/getTotal;-><init>()V

    iput-object v0, p0, Lo/getParcel;->validateRelationship:Lo/getTotal;

    new-instance v0, Lo/getCities;

    invoke-direct {v0}, Lo/getCities;-><init>()V

    iput-object v0, p0, Lo/getParcel;->ICustomTabsService$Stub:Lo/getCities;

    new-instance v0, Lo/AccountTemplateProperties;

    invoke-direct {v0}, Lo/AccountTemplateProperties;-><init>()V

    iput-object v0, p0, Lo/getParcel;->IPostMessageService$Stub:Lo/AccountTemplateProperties;

    new-instance v0, Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

    invoke-direct {v0}, Lo/CommonStatementNoHistoryItemHolder$TransactionItem;-><init>()V

    iput-object v0, p0, Lo/getParcel;->cancel:Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

    new-instance v0, Lo/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;

    invoke-direct {v0}, Lo/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;-><init>()V

    iput-object v0, p0, Lo/getParcel;->cancelAll:Lo/FabrikCardOnBoardingFragment$campaignErrorRecieved$$inlined$executeOnResume$1;

    new-instance v0, Lo/getData;

    invoke-direct {v0}, Lo/getData;-><init>()V

    iput-object v0, p0, Lo/getParcel;->notify:Lo/getData;

    new-instance v0, Lo/RedeemRequestModel;

    invoke-direct {v0}, Lo/RedeemRequestModel;-><init>()V

    iput-object v0, p0, Lo/getParcel;->INotificationSideChannel:Lo/RedeemRequestModel;

    new-instance v0, Lo/Template;

    invoke-direct {v0}, Lo/Template;-><init>()V

    iput-object v0, p0, Lo/getParcel;->IPostMessageService$Stub$Proxy:Lo/Template;

    new-instance v0, Lo/FeaturePitchJsonAdapter;

    invoke-direct {v0}, Lo/FeaturePitchJsonAdapter;-><init>()V

    iput-object v0, p0, Lo/getParcel;->INotificationSideChannel$Default:Lo/FeaturePitchJsonAdapter;

    new-instance v0, Lo/getCtas;

    invoke-direct {v0}, Lo/getCtas;-><init>()V

    iput-object v0, p0, Lo/getParcel;->INotificationSideChannel$Stub$Proxy:Lo/getCtas;

    new-instance v0, Lo/getSwipedDirection;

    invoke-direct {v0}, Lo/getSwipedDirection;-><init>()V

    iput-object v0, p0, Lo/getParcel;->getDefaultImpl:Lo/getSwipedDirection;

    new-instance v0, Lo/getListTransaction;

    invoke-direct {v0}, Lo/getListTransaction;-><init>()V

    iput-object v0, p0, Lo/getParcel;->INotificationSideChannel$Stub:Lo/getListTransaction;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->asBinder:Lo/AuthSupportedResponse$MetaData;

    return-object v0
.end method

.method public static ICustomTabsCallback$Stub()Lo/setCtaState$default;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->onRelationshipValidationResult:Lo/setCtaState$default;

    return-object v0
.end method

.method public static ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->getInterfaceDescriptor:Lo/component15;

    return-object v0
.end method

.method public static ICustomTabsService()Lo/getSwipeActions;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->postMessage:Lo/getSwipeActions;

    return-object v0
.end method

.method public static ICustomTabsService$Stub()Lo/getCities;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->ICustomTabsService$Stub:Lo/getCities;

    return-object v0
.end method

.method public static ICustomTabsService$Stub$Proxy()Lo/getTotal;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->validateRelationship:Lo/getTotal;

    return-object v0
.end method

.method public static INotificationSideChannel()Lo/NotificationSeenAckRequestBodyJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->setDefaultImpl:Lo/NotificationSeenAckRequestBodyJsonAdapter;

    return-object v0
.end method

.method public static INotificationSideChannel$Stub()Lo/getSwipedDirection;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->getDefaultImpl:Lo/getSwipedDirection;

    return-object v0
.end method

.method public static IPostMessageService()Lo/getData;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->notify:Lo/getData;

    return-object v0
.end method

.method public static IPostMessageService$Stub()Lo/CommonStatementNoHistoryItemHolder$TransactionItem;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->cancel:Lo/CommonStatementNoHistoryItemHolder$TransactionItem;

    return-object v0
.end method

.method public static IPostMessageService$Stub$Proxy()Lo/getCtas;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->INotificationSideChannel$Stub$Proxy:Lo/getCtas;

    return-object v0
.end method

.method public static asBinder()Lo/GreetingCardResponse;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->RemoteActionCompatParcelizer:Lo/GreetingCardResponse;

    return-object v0
.end method

.method public static asInterface()Lo/RedeemRequestResponseJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->asInterface:Lo/RedeemRequestResponseJsonAdapter;

    return-object v0
.end method

.method public static cancel()Lo/Template;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->IPostMessageService$Stub$Proxy:Lo/Template;

    return-object v0
.end method

.method public static cancelAll()Lo/FeaturePitchJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->INotificationSideChannel$Default:Lo/FeaturePitchJsonAdapter;

    return-object v0
.end method

.method public static extraCallback()Lo/setOnSetCropOverlayReleasedListener;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->ICustomTabsCallback$Stub:Lo/setOnSetCropOverlayReleasedListener;

    return-object v0
.end method

.method public static extraCommand()Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->ICustomTabsService$Stub$Proxy:Lo/CommonStatementNoHistoryItemHolder$TransactionItem$$Parcelable;

    return-object v0
.end method

.method public static getDefaultImpl()Lo/getListTransaction;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->INotificationSideChannel$Stub:Lo/getListTransaction;

    return-object v0
.end method

.method public static getInterfaceDescriptor()Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->updateVisuals:Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public static mayLaunchUrl()Lo/NBAResponse;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->requestPostMessageChannel:Lo/NBAResponse;

    return-object v0
.end method

.method public static newSession()Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy:Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/CampaignIntroDetailsJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->ICustomTabsCallback:Lo/CampaignIntroDetailsJsonAdapter;

    return-object v0
.end method

.method public static onNavigationEvent()Lo/ColorsJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->onPostMessage:Lo/ColorsJsonAdapter;

    return-object v0
.end method

.method public static onPostMessage()Lo/LifeCycleObserverToState;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->onMessageChannelReady:Lo/LifeCycleObserverToState;

    return-object v0
.end method

.method public static onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->warmup:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    return-object v0
.end method

.method public static onTransact()Lo/getAccount_number;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->onTransact:Lo/getAccount_number;

    return-object v0
.end method

.method public static postMessage()Lo/AutoDebitRequestBodyJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->mayLaunchUrl:Lo/AutoDebitRequestBodyJsonAdapter;

    return-object v0
.end method

.method public static requestPostMessageChannel()Lo/Stat;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->extraCommand:Lo/Stat;

    return-object v0
.end method

.method private static setDefaultImpl()Lo/getParcel;
    .locals 2

    sget-object v0, Lo/getParcel;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/getParcel;->extraCallback:Lo/getParcel;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateVisuals()Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->IPostMessageService:Lo/RentPaymentFragment$paymentFinished$$inlined$executeOnResume$3;

    return-object v0
.end method

.method public static validateRelationship()Lo/AccountTemplateProperties;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->IPostMessageService$Stub:Lo/AccountTemplateProperties;

    return-object v0
.end method

.method public static warmup()Lo/ValuesJsonAdapter;
    .locals 1

    invoke-static {}, Lo/getParcel;->setDefaultImpl()Lo/getParcel;

    move-result-object v0

    iget-object v0, v0, Lo/getParcel;->newSession:Lo/ValuesJsonAdapter;

    return-object v0
.end method
