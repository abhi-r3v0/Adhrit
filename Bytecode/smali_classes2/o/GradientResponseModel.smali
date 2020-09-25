.class public final Lo/GradientResponseModel;
.super Lo/ContactReverseSyncResponse;

# interfaces
.implements Lo/setCardTypeIv;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/setSwipedDirection;

.field private ICustomTabsCallback$Stub:Ljava/lang/Runnable;

.field private final asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

.field private asInterface:Lo/setCardBackgroundView;

.field private final extraCallback:Ljava/lang/Object;

.field private getInterfaceDescriptor:Lo/LockConfigDataJsonAdapter;

.field private final onMessageChannelReady:Lo/setBankNameTopMargin;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/Colors;

.field private final onRelationshipValidationResult:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

.field private onTransact:Lo/setOnCtaClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setBankNameTopMargin;Lo/Colors;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V
    .locals 1

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/GradientResponseModel;->extraCallback:Ljava/lang/Object;

    iput-object p3, p0, Lo/GradientResponseModel;->onPostMessage:Lo/Colors;

    iput-object p1, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iput-object p4, p0, Lo/GradientResponseModel;->onRelationshipValidationResult:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    new-instance p1, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    invoke-direct {p1, p4}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;-><init>(Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V

    iput-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    new-instance p2, Lo/AssetsResponseJsonAdapter;

    invoke-direct {p2, p0}, Lo/AssetsResponseJsonAdapter;-><init>(Lo/GradientResponseModel;)V

    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onNavigationEvent(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;)V

    new-instance p1, Lo/TimerConfigJsonAdapter;

    invoke-direct {p1}, Lo/TimerConfigJsonAdapter;-><init>()V

    iget-object p2, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object p2, p2, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    iget p2, p2, Lo/DataListJsonAdapter;->onPostMessage:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lo/TimerConfigJsonAdapter;->onNavigationEvent:Ljava/lang/Integer;

    iget-object p2, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object p2, p2, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    iget p2, p2, Lo/DataListJsonAdapter;->onMessageChannelReady:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lo/TimerConfigJsonAdapter;->extraCallback:Ljava/lang/Integer;

    iget-object p2, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object p2, p2, Lo/setBankNameTopMargin;->asInterface:Lo/DataListJsonAdapter;

    iget-boolean p2, p2, Lo/DataListJsonAdapter;->ICustomTabsCallback:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lo/TimerConfigJsonAdapter;->onPostMessage:Ljava/lang/Integer;

    iget-object p2, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    new-instance p3, Lo/GradientResponseModelJsonAdapter;

    invoke-direct {p3, p1}, Lo/GradientResponseModelJsonAdapter;-><init>(Lo/TimerConfigJsonAdapter;)V

    invoke-virtual {p2, p3}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onNavigationEvent(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;)V

    iget-object p1, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object p1, p1, Lo/setBankNameTopMargin;->asBinder:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    new-instance p2, Lo/AssetsDatabase;

    invoke-direct {p2, p0}, Lo/AssetsDatabase;-><init>(Lo/GradientResponseModel;)V

    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onNavigationEvent(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;)V

    :cond_1
    iget-object p1, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object p1, p1, Lo/setBankNameTopMargin;->onMessageChannelReady:Lo/setCurrentItem$default;

    iget-boolean p2, p1, Lo/setCurrentItem$default;->extraCallback:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string p3, "interstitial_mb"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/ImagesJsonAdapter;->onNavigationEvent:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;

    :goto_1
    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onNavigationEvent(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;)V

    goto :goto_2

    :cond_2
    iget-boolean p2, p1, Lo/setCurrentItem$default;->extraCallback:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string p3, "reward_mb"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/Images;->onPostMessage:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;

    goto :goto_1

    :cond_3
    iget-boolean p2, p1, Lo/setCurrentItem$default;->onRelationshipValidationResult:Z

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lo/setCurrentItem$default;->extraCallback:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/AssetsDatabase_Impl;->onPostMessage:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/MultiTextFadeBehaviour$observer$1;->onNavigationEvent:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->extraCallback:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/GradientResponseModel;)Lo/setBankNameTopMargin;
    .locals 0

    iget-object p0, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/GradientResponseModel;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lo/GradientResponseModel;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/GradientResponseModel;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/GradientResponseModel;->extraCallback:Ljava/lang/Object;

    return-object p0
.end method

.method private final onNavigationEvent(Lo/setCardBackgroundView;)Lo/setCurrentItem$default;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/setCard;
        }
    .end annotation

    iget-object v0, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object v0, v0, Lo/setCardBackgroundView;->getServiceComponent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/GradientResponseModel;->getInterfaceDescriptor:Lo/LockConfigDataJsonAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lo/LockConfigDataJsonAdapter;->extraCommand:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean v0, v0, Lo/setOnCtaClick;->IPostMessageService$Stub:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v0, v0, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    iget-boolean v6, v5, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-eqz v6, :cond_2

    new-instance v0, Lo/setCurrentItem$default;

    iget-object p1, p1, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object p1, p1, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    invoke-direct {v0, v5, p1}, Lo/setCurrentItem$default;-><init>(Lo/setCurrentItem$default;[Lo/setCurrentItem$default;)V

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    new-instance p1, Lo/setCard;

    const-string v0, "Invalid ad size format from the ad response: "

    iget-object v1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-direct {p1, v0, v2}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p1, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object v1, v1, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    iget-object v7, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iget v8, v6, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    iget v8, v6, Lo/setCurrentItem$default;->onTransact:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v8, v8

    goto :goto_4

    :cond_6
    iget v8, v6, Lo/setCurrentItem$default;->ICustomTabsCallback:I

    :goto_4
    iget v9, v6, Lo/setCurrentItem$default;->onNavigationEvent:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_7

    iget v9, v6, Lo/setCurrentItem$default;->onPostMessage:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_5

    :cond_7
    iget v7, v6, Lo/setCurrentItem$default;->onNavigationEvent:I

    :goto_5
    if-ne v3, v8, :cond_8

    if-ne v0, v7, :cond_8

    iget-boolean v7, v6, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-nez v7, :cond_8

    new-instance v0, Lo/setCurrentItem$default;

    iget-object p1, p1, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object p1, p1, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    invoke-direct {v0, v6, p1}, Lo/setCurrentItem$default;-><init>(Lo/setCurrentItem$default;[Lo/setCurrentItem$default;)V

    return-object v0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    new-instance p1, Lo/setCard;

    const-string v0, "The ad size from the ad response was not one of the requested sizes: "

    iget-object v1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    invoke-direct {p1, v0, v2}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1

    :catch_0
    nop

    new-instance p1, Lo/setCard;

    const-string v0, "Invalid ad size number from the ad response: "

    iget-object v1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_7
    invoke-direct {p1, v0, v2}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_c
    new-instance p1, Lo/setCard;

    const-string v0, "The ad response must specify one of the supported ad sizes."

    invoke-direct {p1, v0, v2}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/GradientResponseModel;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/GradientResponseModel;->onPostMessage(ILjava/lang/String;)V

    return-void
.end method

.method private final onPostMessage(ILjava/lang/String;)V
    .locals 15

    move-object v0, p0

    move/from16 v6, p1

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, -0x1

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static/range {p2 .. p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    if-nez v1, :cond_2

    new-instance v1, Lo/setOnCtaClick;

    invoke-direct {v1, v6}, Lo/setOnCtaClick;-><init>(I)V

    goto :goto_2

    :cond_2
    new-instance v1, Lo/setOnCtaClick;

    iget-object v2, v0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-wide v2, v2, Lo/setOnCtaClick;->asBinder:J

    invoke-direct {v1, v6, v2, v3}, Lo/setOnCtaClick;-><init>(IJ)V

    :goto_2
    iput-object v1, v0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v1, v0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Lo/setCardBackgroundView;

    iget-object v8, v0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lo/setCardBackgroundView;-><init>(Lo/setBankNameTopMargin;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v2, v1

    new-instance v14, Lo/GreetingCampaignCodeRequest;

    iget-object v3, v0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v4, v0, Lo/GradientResponseModel;->getInterfaceDescriptor:Lo/LockConfigDataJsonAdapter;

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    iget-wide v9, v3, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    const/4 v11, 0x0

    iget-object v12, v0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    const/4 v13, 0x0

    move-object v1, v14

    move/from16 v6, p1

    invoke-direct/range {v1 .. v13}, Lo/GreetingCampaignCodeRequest;-><init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;Ljava/lang/Boolean;)V

    iget-object v1, v0, Lo/GradientResponseModel;->onPostMessage:Lo/Colors;

    invoke-interface {v1, v14}, Lo/Colors;->onPostMessage(Lo/GreetingCampaignCodeRequest;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/GradientResponseModel;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/GradientResponseModel;->ICustomTabsCallback:Lo/setSwipedDirection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/GradientResponseModel;->ICustomTabsCallback:Lo/setSwipedDirection;

    invoke-interface {v1}, Lo/setSwipedDirection;->onMessageChannelReady()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic ICustomTabsCallback(Lo/AssetJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object v0, v0, Lo/setBankNameTopMargin;->IPostMessageService$Stub:Ljava/lang/String;

    iput-object v0, p1, Lo/AssetJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method final extraCallback(Lo/DataListJsonAdapter;Lo/StatJsonAdapter;)Lo/setSwipedDirection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DataListJsonAdapter;",
            "Lo/StatJsonAdapter<",
            "Lo/setCardBackgroundView;",
            ">;)",
            "Lo/setSwipedDirection;"
        }
    .end annotation

    iget-object v0, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    new-instance v1, Lo/setCardBankName;

    invoke-direct {v1, v0}, Lo/setCardBankName;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, p1}, Lo/setCardNumberTv;->ICustomTabsCallback(Lo/DataListJsonAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Fetching ad response from local ad request service."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance p1, Lo/setCardTemplate;

    invoke-direct {p1, v0, p2, p0}, Lo/setCardTemplate;-><init>(Landroid/content/Context;Lo/StatJsonAdapter;Lo/setCardTypeIv;)V

    invoke-virtual {p1}, Lo/setCenterImage;->s_()Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string v1, "Fetching ad response from remote ad request service."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {v0}, Lo/ControlStatementRepo$TransactionItem;->extraCallback(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Failed to connect to remote ad request service."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Lo/setNfcLogo;

    invoke-direct {v1, v0, p1, p2, p0}, Lo/setNfcLogo;-><init>(Landroid/content/Context;Lo/DataListJsonAdapter;Lo/StatJsonAdapter;Lo/setCardTypeIv;)V

    return-object v1
.end method

.method final synthetic onMessageChannelReady(Lo/AssetJsonAdapter;)V
    .locals 1

    iget-object p1, p1, Lo/AssetJsonAdapter;->onMessageChannelReady:Lo/UserSelectionRequestModel;

    iget-object v0, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object v0, v0, Lo/setBankNameTopMargin;->asBinder:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Lo/UserSelectionRequestModel;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage()V
    .locals 9

    const-string v0, "AdLoaderBackgroundTask started."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    new-instance v0, Lo/FabrikStringAdapter;

    invoke-direct {v0, p0}, Lo/FabrikStringAdapter;-><init>(Lo/GradientResponseModel;)V

    iput-object v0, p0, Lo/GradientResponseModel;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v1, p0, Lo/GradientResponseModel;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    sget-object v2, Lo/WinningTypes;->sendRequest:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v3

    sget-object v0, Lo/WinningTypes;->addSubscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object v0, v0, Lo/setBankNameTopMargin;->ICustomTabsCallback:Lo/setLastItem;

    iget-object v0, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    iget-object v0, v0, Lo/setBankNameTopMargin;->ICustomTabsCallback:Lo/setLastItem;

    iget-object v0, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lo/setCardBackgroundView;

    iget-object v2, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/setCardBackgroundView;-><init>(Lo/setBankNameTopMargin;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object v1, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-static {v1, v8, v0}, Lo/AutoDebitInstrumentSetupResponseJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Lo/setCardBackgroundView;Ljava/lang/String;)Lo/setOnCtaClick;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/GradientResponseModel;->onPostMessage(Lo/setOnCtaClick;)V

    return-void

    :cond_0
    new-instance v0, Lo/getSelected;

    invoke-direct {v0}, Lo/getSelected;-><init>()V

    new-instance v1, Lo/ServiceSmsHelper$lifecycleObserver$1;

    invoke-direct {v1, p0, v0}, Lo/ServiceSmsHelper$lifecycleObserver$1;-><init>(Lo/GradientResponseModel;Lo/StatJsonAdapter;)V

    invoke-static {v1}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/Template;->asBinder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/Template;->onRelationshipValidationResult(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/Template;->ICustomTabsCallback$Stub(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lo/Template;->asInterface(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v8, Lo/setCardBackgroundView;

    iget-object v2, p0, Lo/GradientResponseModel;->onMessageChannelReady:Lo/setBankNameTopMargin;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/setCardBackgroundView;-><init>(Lo/setBankNameTopMargin;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    invoke-interface {v0, v8}, Lo/StatJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(Lo/setOnCtaClick;)V
    .locals 13

    const-string v0, "Received ad response."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iput-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p1

    invoke-interface {p1}, Lo/component15;->onPostMessage()J

    move-result-wide v6

    iget-object p1, p0, Lo/GradientResponseModel;->extraCallback:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lo/GradientResponseModel;->ICustomTabsCallback:Lo/setSwipedDirection;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->INotificationSideChannel$Default:Z

    invoke-virtual {p1, v1}, Lo/ContactSyncResponse;->onPostMessage(Z)V

    sget-object p1, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$3:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean p1, p1, Lo/setOnCtaClick;->AudioAttributesCompatParcelizer:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object v1, v1, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/ContactSyncResponse;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object v1, v1, Lo/setCardBackgroundView;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lo/ContactSyncResponse;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget p1, p1, Lo/setOnCtaClick;->onNavigationEvent:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget p1, p1, Lo/setOnCtaClick;->onNavigationEvent:I

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lo/setCard;

    iget-object v0, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget v0, v0, Lo/setOnCtaClick;->onNavigationEvent:I

    const/16 v1, 0x42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "There was a problem getting an ad response. ErrorCode: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget v1, v1, Lo/setOnCtaClick;->onNavigationEvent:I

    invoke-direct {p1, v0, v1}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget p1, p1, Lo/setOnCtaClick;->onNavigationEvent:I

    const/4 v1, 0x0

    if-eq p1, v2, :cond_7

    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object p1, p1, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->extraCommand:Z

    invoke-virtual {p1, v2}, Lo/ContactSyncResponse;->onMessageChannelReady(Z)V

    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean p1, p1, Lo/setOnCtaClick;->asInterface:Z
    :try_end_1
    .catch Lo/setCard; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_5

    :try_start_2
    new-instance p1, Lo/LockConfigDataJsonAdapter;

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-direct {p1, v2}, Lo/LockConfigDataJsonAdapter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/GradientResponseModel;->getInterfaceDescriptor:Lo/LockConfigDataJsonAdapter;

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    iget-object v2, p0, Lo/GradientResponseModel;->getInterfaceDescriptor:Lo/LockConfigDataJsonAdapter;

    iget-boolean v2, v2, Lo/LockConfigDataJsonAdapter;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p1, v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lo/setCard; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "Could not parse mediation config."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lo/setCard;

    const-string v0, "Could not parse mediation config: "

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->extraCallback:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    invoke-direct {p1, v0, v1}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_5
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->setDefaultImpl:Z

    invoke-virtual {p1, v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage(Z)V

    :goto_3
    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object p1, p1, Lo/setOnCtaClick;->INotificationSideChannel$Stub:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lo/WinningTypes;->putText:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Received cookie from server. Setting webview cookie in CookieManager."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p1

    iget-object v2, p0, Lo/GradientResponseModel;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lo/getAccount_number;->onNavigationEvent(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v2, "googleads.g.doubleclick.net"

    iget-object v3, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v3, v3, Lo/setOnCtaClick;->INotificationSideChannel$Stub:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    new-instance p1, Lo/setCard;

    const-string v0, "No fill from ad server."

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lo/setCard;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_7
    :goto_4
    iget-object p1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object p1, p1, Lo/setCardBackgroundView;->onPostMessage:Lo/setCurrentItem$default;

    iget-object p1, p1, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    invoke-direct {p0, p1}, Lo/GradientResponseModel;->onNavigationEvent(Lo/setCardBackgroundView;)Lo/setCurrentItem$default;

    move-result-object p1
    :try_end_3
    .catch Lo/setCard; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, p1

    goto :goto_5

    :cond_8
    move-object v4, v0

    :goto_5
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->IPostMessageService:Z

    invoke-virtual {p1, v2}, Lo/ContactSyncResponse;->extraCallback(Z)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-boolean v2, v2, Lo/setOnCtaClick;->write:Z

    invoke-virtual {p1, v2}, Lo/ContactSyncResponse;->ICustomTabsCallback(Z)V

    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object p1, p1, Lo/setOnCtaClick;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v2, v2, Lo/setOnCtaClick;->requestPostMessageChannel:Ljava/lang/String;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, p1

    goto :goto_6

    :catch_1
    move-exception p1

    const-string v2, "Error parsing the JSON for Active View."

    invoke-static {v2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    move-object v10, v0

    :goto_6
    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget p1, p1, Lo/setOnCtaClick;->AudioAttributesImplBaseParcelizer:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_c

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object p1, p1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    iget-object v2, p1, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    if-eqz v2, :cond_a

    iget-object p1, p1, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    goto :goto_7

    :cond_a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_7
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_8

    :cond_b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-class v5, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_8
    const-string v2, "render_test_label"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget p1, p1, Lo/setOnCtaClick;->AudioAttributesImplBaseParcelizer:I

    if-ne p1, v3, :cond_d

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_d
    iget-object p1, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget p1, p1, Lo/setOnCtaClick;->AudioAttributesImplBaseParcelizer:I

    if-nez p1, :cond_e

    iget-object p1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object p1, p1, Lo/setCardBackgroundView;->onNavigationEvent:Lo/setLastItem;

    invoke-static {p1}, Lo/ControlMetadataJsonAdapter;->extraCallback(Lo/setLastItem;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v12, p1

    goto :goto_9

    :cond_e
    move-object v12, v0

    :goto_9
    new-instance p1, Lo/GreetingCampaignCodeRequest;

    iget-object v1, p0, Lo/GradientResponseModel;->asInterface:Lo/setCardBackgroundView;

    iget-object v2, p0, Lo/GradientResponseModel;->onTransact:Lo/setOnCtaClick;

    iget-object v3, p0, Lo/GradientResponseModel;->getInterfaceDescriptor:Lo/LockConfigDataJsonAdapter;

    const/4 v5, -0x2

    iget-wide v8, v2, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    iget-object v11, p0, Lo/GradientResponseModel;->asBinder:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lo/GreetingCampaignCodeRequest;-><init>(Lo/setCardBackgroundView;Lo/setOnCtaClick;Lo/LockConfigDataJsonAdapter;Lo/setCurrentItem$default;IJJLorg/json/JSONObject;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lo/GradientResponseModel;->onPostMessage:Lo/Colors;

    invoke-interface {v0, p1}, Lo/Colors;->onPostMessage(Lo/GreetingCampaignCodeRequest;)V

    :goto_a
    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v0, p0, Lo/GradientResponseModel;->ICustomTabsCallback$Stub:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lo/setCard;->extraCallback()I

    move-result v0

    invoke-virtual {p1}, Lo/setCard;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/GradientResponseModel;->onPostMessage(ILjava/lang/String;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
