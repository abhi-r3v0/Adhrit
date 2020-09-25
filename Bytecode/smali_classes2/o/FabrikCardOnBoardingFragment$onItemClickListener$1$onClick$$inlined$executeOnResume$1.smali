.class final Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/refreshAuth;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setPanGiven;

.field private final synthetic extraCallback:Lorg/json/JSONArray;

.field private final synthetic onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

.field private final synthetic onNavigationEvent:I

.field private final synthetic onPostMessage:I


# direct methods
.method constructor <init>(Lo/setPanGiven;ILorg/json/JSONArray;ILo/GreetingCampaignCodeRequest;)V
    .locals 0

    iput-object p1, p0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iput p2, p0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:I

    iput-object p3, p0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lorg/json/JSONArray;

    iput p4, p0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:I

    iput-object p5, p0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:I

    iget-object v2, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback:Lorg/json/JSONArray;

    iget v3, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:I

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ads"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v5, v1, Lo/setPanGiven;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iget-object v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v7, v1, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v8, v1, Lo/setPanGiven;->asBinder:Lo/BankAccountData;

    iget-object v1, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v1, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v9, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    new-instance v1, Lo/setPanGiven;

    const/4 v10, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lo/setPanGiven;-><init>(Landroid/content/Context;Lo/StatementPeriod;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Z)V

    iget-object v3, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v4, v3, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/setPanGiven;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {v3, v4, v5}, Lo/setPanGiven;->onMessageChannelReady(Lo/setPanGiven;Lo/PaymentMode$$Parcelable;Lo/PaymentMode$$Parcelable;)V

    invoke-virtual {v1}, Lo/setPanGiven;->onNavigationEvent()V

    iget-object v3, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/setPanGiven;

    iget-object v3, v3, Lo/setPanGiven;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-virtual {v1, v3}, Lo/DeviceAttrResponse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iget-object v3, v1, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget v4, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onPostMessage:I

    iget v5, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onNavigationEvent:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "num_ads_requested"

    invoke-virtual {v3, v6, v5}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ad_index"

    invoke-virtual {v3, v5, v4}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lo/FabrikCardOnBoardingFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady:Lo/GreetingCampaignCodeRequest;

    iget-object v3, v3, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v4, v4, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    iget-object v5, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v5, v5, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v9, v4

    const-string v4, "_ad"

    invoke-virtual {v9, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lo/setLastItem;

    move-object/from16 v27, v5

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget v6, v2, Lo/setLastItem;->onMessageChannelReady:I

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-wide v7, v2, Lo/setLastItem;->ICustomTabsCallback:J

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget v10, v2, Lo/setLastItem;->onPostMessage:I

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v11, v2, Lo/setLastItem;->onNavigationEvent:Ljava/util/List;

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-boolean v12, v2, Lo/setLastItem;->onTransact:Z

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget v13, v2, Lo/setLastItem;->asBinder:I

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-boolean v14, v2, Lo/setLastItem;->onRelationshipValidationResult:Z

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v15, v2, Lo/setLastItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->asInterface:Lo/WinLuckyNumberClaim;

    move-object/from16 v16, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    move-object/from16 v17, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    move-object/from16 v19, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->newSession:Landroid/os/Bundle;

    move-object/from16 v20, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->warmup:Ljava/util/List;

    move-object/from16 v21, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->extraCommand:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->postMessage:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v3, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-boolean v2, v2, Lo/setLastItem;->mayLaunchUrl:Z

    move/from16 v24, v2

    invoke-direct/range {v5 .. v24}, Lo/setLastItem;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lo/WinLuckyNumberClaim;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lo/setBankNameTopMargin;

    move-object/from16 v25, v2

    iget-object v4, v3, Lo/setCardBackgroundView;->extraCallback:Landroid/os/Bundle;

    move-object/from16 v26, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    move-object/from16 v28, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v29, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->asBinder:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->onRelationshipValidationResult:Landroid/content/pm/PackageInfo;

    move-object/from16 v31, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object/from16 v32, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->asInterface:Ljava/lang/String;

    move-object/from16 v33, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->warmup:Lo/DataListJsonAdapter;

    move-object/from16 v34, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->getInterfaceDescriptor:Landroid/os/Bundle;

    move-object/from16 v35, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->newSession:Ljava/util/List;

    move-object/from16 v36, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->INotificationSideChannel:Ljava/util/List;

    move-object/from16 v37, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->ICustomTabsService:Landroid/os/Bundle;

    move-object/from16 v38, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->extraCommand:Z

    move/from16 v39, v4

    iget v4, v3, Lo/setCardBackgroundView;->postMessage:I

    move/from16 v40, v4

    iget v4, v3, Lo/setCardBackgroundView;->requestPostMessageChannel:I

    move/from16 v41, v4

    iget v4, v3, Lo/setCardBackgroundView;->updateVisuals:F

    move/from16 v42, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->mayLaunchUrl:Ljava/lang/String;

    move-object/from16 v43, v4

    iget-wide v4, v3, Lo/setCardBackgroundView;->ICustomTabsService$Stub:J

    move-wide/from16 v44, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    move-object/from16 v46, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->validateRelationship:Ljava/util/List;

    move-object/from16 v47, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->IPostMessageService$Stub:Ljava/lang/String;

    move-object/from16 v48, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->ICustomTabsService$Stub$Proxy:Lo/activateCredProtect;

    move-object/from16 v49, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->cancelAll:Ljava/lang/String;

    move-object/from16 v50, v4

    iget v4, v3, Lo/setCardBackgroundView;->notify:F

    move/from16 v51, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->INotificationSideChannel$Stub$Proxy:Z

    move/from16 v52, v4

    iget v4, v3, Lo/setCardBackgroundView;->IPostMessageService$Stub$Proxy:I

    move/from16 v53, v4

    iget v4, v3, Lo/setCardBackgroundView;->getDefaultImpl:I

    move/from16 v54, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->INotificationSideChannel$Default:Z

    move/from16 v55, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->setDefaultImpl:Z

    move/from16 v56, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->INotificationSideChannel$Stub:Ljava/lang/String;

    invoke-static {v4}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v57

    iget-object v4, v3, Lo/setCardBackgroundView;->write:Ljava/lang/String;

    move-object/from16 v58, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->read:Z

    move/from16 v59, v4

    iget v4, v3, Lo/setCardBackgroundView;->RemoteActionCompatParcelizer:I

    move/from16 v60, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->AudioAttributesCompatParcelizer:Landroid/os/Bundle;

    move-object/from16 v61, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->IconCompatParcelizer:Ljava/lang/String;

    move-object/from16 v62, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->AudioAttributesImplApi21Parcelizer:Lo/UserWinningStatisticsJsonAdapter;

    move-object/from16 v63, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->AudioAttributesImplBaseParcelizer:Z

    move/from16 v64, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->MediaBrowserCompat:Landroid/os/Bundle;

    move-object/from16 v65, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->isConnected:Z

    move/from16 v66, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->onTransact:Ljava/lang/String;

    invoke-static {v4}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object v67

    iget-object v4, v3, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    move-object/from16 v68, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->getSessionToken:Ljava/lang/String;

    move-object/from16 v69, v4

    iget-object v4, v3, Lo/setCardBackgroundView;->getRoot:Ljava/util/List;

    move-object/from16 v70, v4

    const/16 v71, 0x1

    iget-boolean v4, v3, Lo/setCardBackgroundView;->search:Z

    move/from16 v72, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->unsubscribe:Z

    move/from16 v73, v4

    iget-boolean v4, v3, Lo/setCardBackgroundView;->sendCustomAction:Z

    move/from16 v74, v4

    iget-object v3, v3, Lo/setCardBackgroundView;->getItem:Ljava/util/ArrayList;

    move-object/from16 v75, v3

    invoke-direct/range {v25 .. v75}, Lo/setBankNameTopMargin;-><init>(Landroid/os/Bundle;Lo/setLastItem;Lo/setCurrentItem$default;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/activateCredProtect;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lo/UserWinningStatisticsJsonAdapter;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V

    iget-object v3, v1, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    invoke-virtual {v1, v2, v3}, Lo/clone;->onNavigationEvent(Lo/setBankNameTopMargin;Lo/setCanReverse;)Z

    invoke-virtual {v1}, Lo/setPanGiven;->RemoteActionCompatParcelizer()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/refreshAuth;

    return-object v1
.end method
