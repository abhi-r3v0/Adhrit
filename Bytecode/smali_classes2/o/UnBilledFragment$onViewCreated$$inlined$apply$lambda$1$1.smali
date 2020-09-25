.class public final Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final AudioAttributesCompatParcelizer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final AudioAttributesImplApi21Parcelizer:Z

.field private final AudioAttributesImplBaseParcelizer:J

.field public final ICustomTabsCallback:Lo/setLastItem;

.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsCallback$Stub$Proxy:Z

.field public final ICustomTabsService:Z

.field public final ICustomTabsService$Stub:Lo/setCurrentItem$default;

.field public final ICustomTabsService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final INotificationSideChannel:J

.field public INotificationSideChannel$Default:Z

.field public INotificationSideChannel$Stub:Z

.field public INotificationSideChannel$Stub$Proxy:Z

.field public final IPostMessageService:Lo/FooterActions;

.field public final IPostMessageService$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final IPostMessageService$Stub$Proxy:Lo/refreshAuth;

.field public final IconCompatParcelizer:Z

.field private final MediaBrowserCompat:J

.field public final RemoteActionCompatParcelizer:Z

.field public final asBinder:Ljava/lang/String;

.field public final asInterface:J

.field public final cancel:Ljava/lang/String;

.field public final cancelAll:Ljava/lang/String;

.field private final connect:Lo/AddressListResponseJsonAdapter;

.field private final disconnect:Ljava/lang/String;

.field public final extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field public final extraCommand:Lo/TabConfigResponseJsonAdapter;

.field public getDefaultImpl:Z

.field public final getInterfaceDescriptor:Lo/TabConfigResponse;

.field public final mayLaunchUrl:Ljava/lang/String;

.field public final newSession:Lorg/json/JSONObject;

.field public notify:Z

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:I

.field public final postMessage:Ljava/lang/String;

.field public final read:Z

.field public final requestPostMessageChannel:Lo/Info;

.field public setDefaultImpl:Z

.field public final updateVisuals:Lo/LockConfigDataJsonAdapter;

.field public final validateRelationship:J

.field public final warmup:Z

.field public final write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;


# direct methods
.method public constructor <init>(Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/TabConfigResponseJsonAdapter;Lo/refreshAuth;Ljava/lang/String;)V
    .locals 45

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v2, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v3, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    iget v5, v0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback:I

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v6, v3, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v7, v3, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget v8, v3, Lo/setOnCtaClick;->warmup:I

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v9, v3, Lo/setOnCtaClick;->asBinder:J

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v11, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v12, v3, Lo/setOnCtaClick;->asInterface:Z

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    move-object/from16 v16, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v3, Lo/setOnCtaClick;->onTransact:J

    move-wide/from16 v18, v13

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    move-object/from16 v20, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v3, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    move-wide/from16 v21, v13

    iget-wide v13, v0, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    move-wide/from16 v23, v13

    iget-wide v13, v0, Lo/GreetingCampaignCodeRequest;->onTransact:J

    move-wide/from16 v25, v13

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v27, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    move-object/from16 v28, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    move-object/from16 v30, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v31, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v32, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->notify:Z

    move/from16 v33, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v34, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v36, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v37, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v38, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v39, v3

    iget-boolean v3, v0, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v40, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v41, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move-object/from16 v42, v3

    iget-object v3, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v3, v3, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v43, v3

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v1 .. v44}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setLastItem;",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lo/TabConfigResponse;",
            "Lo/Info;",
            "Ljava/lang/String;",
            "Lo/LockConfigDataJsonAdapter;",
            "Lo/TabConfigResponseJsonAdapter;",
            "J",
            "Lo/setCurrentItem$default;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lo/refreshAuth;",
            "Lo/FooterActions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lo/AddressListResponseJsonAdapter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->notify:Z

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getDefaultImpl:Z

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->setDefaultImpl:Z

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Default:Z

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Stub:Z

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Stub$Proxy:Z

    move-object v1, p1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/setLastItem;

    move-object v1, p2

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {p3}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Ljava/util/List;

    move v1, p4

    iput v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    invoke-static {p5}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Ljava/util/List;

    invoke-static {p6}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub:Ljava/util/List;

    move v1, p7

    iput v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onTransact:I

    move-wide v1, p8

    iput-wide v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->asInterface:J

    move-object v1, p10

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->asBinder:Ljava/lang/String;

    move v1, p11

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    move-object v1, p12

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    move-object/from16 v1, p13

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    move-object/from16 v1, p16

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCommand:Lo/TabConfigResponseJsonAdapter;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesImplBaseParcelizer:J

    move-object/from16 v1, p19

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->MediaBrowserCompat:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->validateRelationship:J

    move-wide/from16 v1, p24

    iput-wide v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel:J

    move-object/from16 v1, p26

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancel:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    move-object/from16 v1, p28

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub$Proxy:Lo/refreshAuth;

    move-object/from16 v1, p29

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService:Lo/FooterActions;

    invoke-static/range {p30 .. p30}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IPostMessageService$Stub:Ljava/util/List;

    invoke-static/range {p31 .. p31}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    move/from16 v1, p32

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->connect:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v1, p34

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->postMessage:Ljava/lang/String;

    invoke-static/range {p35 .. p35}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesCompatParcelizer:Ljava/util/List;

    move-object/from16 v1, p36

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancelAll:Ljava/lang/String;

    move-object/from16 v1, p37

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move/from16 v1, p38

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->IconCompatParcelizer:Z

    move/from16 v1, p39

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->read:Z

    move/from16 v1, p40

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->RemoteActionCompatParcelizer:Z

    invoke-static/range {p41 .. p41}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onRelationshipValidationResult:Ljava/util/List;

    move/from16 v1, p42

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesImplApi21Parcelizer:Z

    move-object/from16 v1, p43

    iput-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->disconnect:Ljava/lang/String;

    return-void
.end method

.method private static onPostMessage(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onNavigationEvent()Z
    .locals 1

    iget-object v0, p0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-interface {v0}, Lo/SizeFilter;->extraCallback()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
