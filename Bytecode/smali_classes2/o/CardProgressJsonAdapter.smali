.class public final Lo/CardProgressJsonAdapter;
.super Lo/ContactReverseSyncResponse;

# interfaces
.implements Lo/CardProgress;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/SmartStatementResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:J

.field private final asInterface:Ljava/lang/Object;

.field private final extraCallback:Landroid/content/Context;

.field private final onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

.field private final onNavigationEvent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/PayoutInstrument;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/PayoutInstrument;)V
    .locals 7

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lo/CardProgressJsonAdapter;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/PayoutInstrument;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/PayoutInstrument;J)V
    .locals 1

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CardProgressJsonAdapter;->ICustomTabsCallback:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CardProgressJsonAdapter;->onNavigationEvent:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    iput-object p1, p0, Lo/CardProgressJsonAdapter;->extraCallback:Landroid/content/Context;

    iput-object p2, p0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iput-object p3, p0, Lo/CardProgressJsonAdapter;->onTransact:Lo/PayoutInstrument;

    iput-wide p4, p0, Lo/CardProgressJsonAdapter;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method private final extraCallback(ILjava/lang/String;Lo/TabConfigResponse;)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;
    .locals 53

    move-object/from16 v0, p0

    new-instance v45, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v2, v1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v4, v1, Lo/setOnCtaClick;->onPostMessage:Ljava/util/List;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v6, v1, Lo/setOnCtaClick;->ICustomTabsCallback:Ljava/util/List;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v7, v1, Lo/setOnCtaClick;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget v8, v1, Lo/setOnCtaClick;->warmup:I

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v9, v1, Lo/setOnCtaClick;->asBinder:J

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v11, v1, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v12, v1, Lo/setOnCtaClick;->asInterface:Z

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v15, v1, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v13, v1, Lo/setOnCtaClick;->onTransact:J

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v5, v1, Lo/GreetingCampaignCodeRequest;->onNavigationEvent:Lo/setCurrentItem$default;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    move-wide/from16 v17, v13

    move-object/from16 v16, v15

    iget-wide v14, v1, Lo/setOnCtaClick;->onRelationshipValidationResult:J

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    move-wide/from16 v19, v14

    iget-wide v14, v1, Lo/GreetingCampaignCodeRequest;->ICustomTabsCallback$Stub:J

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    move-wide/from16 v21, v14

    iget-wide v14, v1, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v13, v1, Lo/setOnCtaClick;->ICustomTabsService:Ljava/lang/String;

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->asBinder:Lorg/json/JSONObject;

    iget-object v3, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->cancel:Lo/FooterActions;

    move-object/from16 v23, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v24, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    move-object/from16 v25, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->notify:Z

    move/from16 v26, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->INotificationSideChannel$Stub$Proxy:Lo/AddressListResponseJsonAdapter;

    move-object/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v28, v3

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v47, v1

    move-object/from16 v31, v5

    move/from16 v46, v12

    move-object/from16 v33, v13

    move-wide/from16 v34, v14

    goto/16 :goto_2

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v31, v5

    if-eqz v29, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v5, v29

    check-cast v5, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    if-eqz v5, :cond_7

    move-object/from16 v29, v3

    iget-object v3, v5, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v5, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v33, v13

    iget v13, v5, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback:I

    move-wide/from16 v34, v14

    const/4 v15, 0x4

    const/4 v14, 0x3

    if-eq v13, v14, :cond_5

    if-eq v13, v15, :cond_4

    const/4 v14, 0x5

    if-eq v13, v14, :cond_3

    const/4 v14, 0x6

    if-eq v13, v14, :cond_2

    const/4 v15, 0x7

    if-eq v13, v15, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    move v15, v12

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move v15, v12

    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    move v15, v12

    const/4 v14, 0x4

    goto :goto_1

    :cond_4
    const/16 v30, 0x2

    move v15, v12

    const/4 v14, 0x2

    goto :goto_1

    :cond_5
    move v15, v12

    const/4 v14, 0x1

    :goto_1
    iget-wide v12, v5, Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage:J

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    move/from16 v46, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    move-object/from16 v5, v31

    move-object/from16 v13, v33

    move-wide/from16 v14, v34

    move/from16 v12, v46

    goto/16 :goto_0

    :cond_6
    move-object/from16 v3, v29

    :cond_7
    move-object/from16 v5, v31

    goto/16 :goto_0

    :cond_8
    move/from16 v46, v12

    move-object/from16 v33, v13

    move-wide/from16 v34, v14

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v47, v1

    :goto_2
    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->getDefaultImpl:Ljava/util/List;

    move-object/from16 v36, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object/from16 v38, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->disconnect:Z

    move/from16 v39, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-boolean v1, v1, Lo/GreetingCampaignCodeRequest;->asInterface:Z

    move/from16 v40, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->AudioAttributesImplApi21Parcelizer:Z

    move/from16 v41, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->connect:Ljava/util/List;

    move-object/from16 v42, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->MediaBrowserCompat:Z

    move/from16 v43, v1

    iget-object v1, v0, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    move-object/from16 v44, v1

    const/4 v3, 0x0

    move-object/from16 v30, v28

    const/4 v14, 0x0

    move-wide/from16 v48, v34

    move-wide/from16 v34, v21

    move-wide/from16 v21, v19

    move-wide/from16 v18, v17

    const/16 v17, 0x0

    const/16 v29, 0x0

    move-object/from16 v28, v23

    move-object/from16 v32, v24

    move-object/from16 v50, v25

    move/from16 v51, v26

    move-object/from16 v52, v27

    move-object/from16 v1, v45

    move-object/from16 v20, v31

    move/from16 v5, p1

    move/from16 v12, v46

    move-object/from16 v27, v33

    move-object/from16 v13, p3

    move-object/from16 v15, p2

    move-wide/from16 v23, v34

    move-wide/from16 v25, v48

    move-object/from16 v31, v32

    move-object/from16 v32, v50

    move/from16 v33, v51

    move-object/from16 v34, v52

    move-object/from16 v35, v47

    invoke-direct/range {v1 .. v44}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/setLastItem;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponseJsonAdapter;JLo/setCurrentItem$default;JJJLjava/lang/String;Lorg/json/JSONObject;Lo/refreshAuth;Lo/FooterActions;Ljava/util/List;Ljava/util/List;ZLo/AddressListResponseJsonAdapter;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;ZZZLjava/util/List;ZLjava/lang/String;)V

    return-object v45
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/CardProgressJsonAdapter;->onNavigationEvent:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 1

    iget-object v0, p0, Lo/CardProgressJsonAdapter;->onTransact:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->onPostMessage()Lo/setOnCropWindowChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/setOnCropWindowChangedListener;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 19

    move-object/from16 v11, p0

    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->extraCallback:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lo/TabConfigResponse;

    iget-object v14, v13, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    iget-object v0, v13, Lo/TabConfigResponse;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, v0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "class_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_3
    iget-object v9, v11, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onTransact:Lo/PayoutInstrument;

    invoke-virtual {v0, v3}, Lo/PayoutInstrument;->ICustomTabsCallback(Ljava/lang/String;)Lo/Cta$Deeplink;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lo/Cta$Deeplink;->onNavigationEvent()Lo/CardFooter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    new-instance v0, Lo/SmartStatementResponseJsonAdapter;

    iget-object v2, v11, Lo/CardProgressJsonAdapter;->extraCallback:Landroid/content/Context;

    iget-object v6, v11, Lo/CardProgressJsonAdapter;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-wide v4, v11, Lo/CardProgressJsonAdapter;->ICustomTabsCallback$Stub:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move-wide/from16 v16, v4

    move-object v4, v14

    move-object v5, v13

    move-object/from16 v8, p0

    move-object/from16 v18, v9

    move-wide/from16 v9, v16

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lo/SmartStatementResponseJsonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lo/TabConfigResponse;Lo/GreetingCampaignCodeRequest;Lo/Cta$Deeplink;Lo/CardProgress;J)V

    iget-object v1, v11, Lo/CardProgressJsonAdapter;->onTransact:Lo/PayoutInstrument;

    invoke-virtual {v1}, Lo/PayoutInstrument;->ICustomTabsCallback()Lo/getTxnCurrency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent(Lo/getTxnCurrency;)V

    iget-object v1, v11, Lo/CardProgressJsonAdapter;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    monitor-exit v18

    goto :goto_0

    :cond_4
    :goto_5
    move-object/from16 v18, v9

    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    new-instance v1, Lo/HighlightsListViewHolder$layoutManager$1;

    invoke-direct {v1}, Lo/HighlightsListViewHolder$layoutManager$1;-><init>()V

    iget-object v2, v13, Lo/TabConfigResponse;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/HighlightsListViewHolder$layoutManager$1;->ICustomTabsCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->extraCallback(Ljava/lang/String;)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(J)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage(I)Lo/HighlightsListViewHolder$layoutManager$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/HighlightsListViewHolder$layoutManager$1;->onPostMessage()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v18, v9

    :goto_6
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v1, "Unable to determine custom event class name, skipping..."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v11, Lo/CardProgressJsonAdapter;->ICustomTabsCallback:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_6
    :goto_7
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lo/SmartStatementResponseJsonAdapter;

    iget-object v6, v5, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lo/SmartStatementResponseJsonAdapter;->extraCallback()Ljava/util/concurrent/Future;

    goto :goto_7

    :cond_7
    iget-object v0, v11, Lo/CardProgressJsonAdapter;->ICustomTabsCallback:Ljava/util/ArrayList;

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_8
    if-ge v3, v2, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    check-cast v4, Lo/SmartStatementResponseJsonAdapter;

    :try_start_3
    invoke-virtual {v4}, Lo/SmartStatementResponseJsonAdapter;->extraCallback()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    iget-object v5, v11, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v0, v4, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-virtual {v4}, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v6, v11, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onNavigationEvent:Ljava/util/HashSet;

    iget-object v5, v4, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v4, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v4}, Lo/SmartStatementResponseJsonAdapter;->asInterface()Lo/TabConfigResponse;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v11, v2, v0, v1}, Lo/CardProgressJsonAdapter;->extraCallback(ILjava/lang/String;Lo/TabConfigResponse;)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    sget-object v1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/CardFooterJsonAdapter;

    invoke-direct {v2, v11, v0}, Lo/CardFooterJsonAdapter;-><init>(Lo/CardProgressJsonAdapter;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v6

    return-void

    :cond_9
    monitor-exit v6

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_7
    const-string v5, "Unable to resolve rewarded adapter."

    invoke-static {v5, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iget-object v5, v11, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8
    iget-object v0, v4, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-virtual {v4}, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    monitor-exit v5

    goto :goto_8

    :catchall_5
    move-exception v0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catch_2
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    iget-object v1, v11, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, v4, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v11, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-virtual {v4}, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    monitor-exit v1

    goto :goto_a

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    :goto_9
    iget-object v1, v11, Lo/CardProgressJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, v4, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v11, Lo/CardProgressJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-virtual {v4}, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent()Lo/SmartStatementFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v0

    :cond_d
    :goto_a
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {v11, v0, v1, v1}, Lo/CardProgressJsonAdapter;->extraCallback(ILjava/lang/String;Lo/TabConfigResponse;)Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    move-result-object v0

    sget-object v1, Lo/ControlStatementRepo$TransactionItem;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/Cta$Data;

    invoke-direct {v2, v11, v0}, Lo/Cta$Data;-><init>(Lo/CardProgressJsonAdapter;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method final synthetic onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 1

    iget-object v0, p0, Lo/CardProgressJsonAdapter;->onTransact:Lo/PayoutInstrument;

    invoke-virtual {v0}, Lo/PayoutInstrument;->onPostMessage()Lo/setOnCropWindowChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/setOnCropWindowChangedListener;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
