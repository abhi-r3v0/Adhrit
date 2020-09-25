.class public abstract Lo/clone;
.super Lo/DeviceAttrResponse;

# interfaces
.implements Lo/GemIntroDetails;
.implements Lo/LoginResponse;
.implements Lo/LockConfigData;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field protected final asBinder:Lo/BankAccountData;

.field private transient getInterfaceDescriptor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 1

    new-instance v0, Lo/PaymentMode$$Parcelable;

    invoke-direct {v0, p1, p2, p3, p5}, Lo/PaymentMode$$Parcelable;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/DataListJsonAdapter;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p4, p1, p6}, Lo/clone;-><init>(Lo/PaymentMode$$Parcelable;Lo/BankAccountData;Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/StatementPeriod;)V

    return-void
.end method

.method private constructor <init>(Lo/PaymentMode$$Parcelable;Lo/BankAccountData;Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/StatementPeriod;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p4}, Lo/DeviceAttrResponse;-><init>(Lo/PaymentMode$$Parcelable;Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/StatementPeriod;)V

    iput-object p2, p0, Lo/clone;->asBinder:Lo/BankAccountData;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/clone;->getInterfaceDescriptor:Z

    return-void
.end method

.method static ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object p0, p0, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "class_name"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    return-object v0
.end method

.method private final extraCallback(Lo/setLastItem;Landroid/os/Bundle;Lo/GreetingCampaignCodeRequestJsonAdapter;I)Lo/setBankNameTopMargin;
    .locals 54

    move-object/from16 v0, p0

    iget-object v1, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v2}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v2

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lo/component28;->ICustomTabsCallback(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    goto :goto_0

    :catch_0
    const/4 v8, 0x0

    :goto_0
    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v2}, Lo/PaymentModeListResponse;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v5, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v5, v2}, Lo/PaymentModeListResponse;->getLocationOnScreen([I)V

    aget v5, v2, v1

    const/4 v6, 0x1

    aget v2, v2, v6

    iget-object v9, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v9, v9, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v9}, Lo/PaymentModeListResponse;->getWidth()I

    move-result v9

    iget-object v10, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v10, v10, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v10}, Lo/PaymentModeListResponse;->getHeight()I

    move-result v10

    iget-object v11, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v11, v11, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v11}, Lo/PaymentModeListResponse;->isShown()Z

    move-result v11

    if-eqz v11, :cond_0

    add-int v11, v5, v9

    if-lez v11, :cond_0

    add-int v11, v2, v10

    if-lez v11, :cond_0

    iget v11, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v5, v11, :cond_0

    iget v11, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    new-instance v11, Landroid/os/Bundle;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Landroid/os/Bundle;-><init>(I)V

    const-string v12, "x"

    invoke-virtual {v11, v12, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "y"

    invoke-virtual {v11, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "width"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "height"

    invoke-virtual {v11, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "visible"

    invoke-virtual {v11, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v9, v11

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback()Lo/ReferredContacts;

    move-result-object v2

    invoke-virtual {v2}, Lo/ReferredContacts;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    new-instance v5, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iget-object v6, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v6, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v5, v12, v6}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v2, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    move-object/from16 v14, p1

    invoke-virtual {v2, v14}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback(Lo/setLastItem;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v5, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v6, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v6, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    invoke-static {v2, v5, v6}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Landroid/content/Context;Landroid/view/View;Lo/setCurrentItem$default;)Ljava/lang/String;

    move-result-object v20

    const-wide/16 v5, 0x0

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->requestPostMessageChannel:Lo/TemplatePropertiesMachineJsonAdapter;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->requestPostMessageChannel:Lo/TemplatePropertiesMachineJsonAdapter;

    invoke-interface {v2}, Lo/TemplatePropertiesMachineJsonAdapter;->onPostMessage()J

    move-result-wide v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string v2, "Cannot get correlation id, default to 0."

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    :goto_3
    move-wide/from16 v21, v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lo/getParcel;->asBinder()Lo/GreetingCardResponse;

    move-result-object v2

    iget-object v5, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2, v5, v0, v12}, Lo/GreetingCardResponse;->onMessageChannelReady(Landroid/content/Context;Lo/GreetingCardResponseJsonAdapter;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_4
    iget-object v5, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    invoke-virtual {v5}, Lo/fromMediaItemList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    invoke-virtual {v5, v2}, Lo/fromMediaItemList;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v6, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    invoke-virtual {v6, v5}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v6, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    invoke-virtual {v6, v5}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    new-instance v2, Lo/getBank;

    invoke-direct {v2, v0}, Lo/getBank;-><init>(Lo/clone;)V

    invoke-static {v2}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v34

    new-instance v2, Lo/getCountry;

    invoke-direct {v2, v0}, Lo/getCountry;-><init>(Lo/clone;)V

    invoke-static {v2}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v44

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lo/GreetingCampaignCodeRequestJsonAdapter;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v2

    goto :goto_5

    :cond_5
    const/16 v35, 0x0

    :goto_5
    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v8, :cond_6

    iget v1, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    :cond_6
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v2

    invoke-virtual {v2}, Lo/ContactSyncResponse;->onTransact()I

    move-result v2

    if-le v1, v2, :cond_7

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v2

    invoke-virtual {v2}, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy()V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/ContactSyncResponse;->onPostMessage(I)V

    goto :goto_6

    :cond_7
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v1

    invoke-virtual {v1}, Lo/ContactSyncResponse;->getInterfaceDescriptor()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v46, v1

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v46, 0x0

    :goto_7
    new-instance v1, Lo/setBankNameTopMargin;

    move-object v2, v1

    iget-object v5, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v6, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v6, v6, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    move-object/from16 v48, v11

    move-object v11, v3

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Default:Ljava/util/List;

    move-object/from16 v53, v13

    move-object v13, v3

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v3

    invoke-virtual {v3}, Lo/ContactSyncResponse;->extraCallback()Z

    move-result v16

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v3

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v3

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v3

    invoke-static {}, Lo/WinningTypes;->onPostMessage()Ljava/util/List;

    move-result-object v24

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->extraCallback:Ljava/lang/String;

    move-object/from16 v25, v3

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub:Lo/activateCredProtect;

    move-object/from16 v26, v3

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v3}, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lo/getParcel;->INotificationSideChannel$Stub()Lo/getSwipedDirection;

    move-result-object v3

    invoke-virtual {v3}, Lo/getSwipedDirection;->onPostMessage()F

    move-result v28

    invoke-static {}, Lo/getParcel;->INotificationSideChannel$Stub()Lo/getSwipedDirection;

    move-result-object v3

    invoke-virtual {v3}, Lo/getSwipedDirection;->onMessageChannelReady()Z

    move-result v29

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->asInterface(Landroid/content/Context;)I

    move-result v30

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-static {v3}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/view/View;)I

    move-result v31

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    move/from16 v32, v3

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v3

    invoke-virtual {v3}, Lo/ContactSyncResponse;->onRelationshipValidationResult()Z

    move-result v33

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->extraCallback()Z

    move-result v36

    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/FeaturePitchJsonAdapter;->onNavigationEvent()I

    move-result v37

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {}, Lo/AuthSupportedResponse$MetaData;->extraCallback()Landroid/os/Bundle;

    move-result-object v38

    invoke-static {}, Lo/getParcel;->ICustomTabsService()Lo/getSwipeActions;

    move-result-object v3

    invoke-virtual {v3}, Lo/getSwipeActions;->onNavigationEvent()Ljava/lang/String;

    move-result-object v39

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->IPostMessageService:Lo/UserWinningStatisticsJsonAdapter;

    move-object/from16 v40, v3

    invoke-static {}, Lo/getParcel;->ICustomTabsService()Lo/getSwipeActions;

    move-result-object v3

    invoke-virtual {v3}, Lo/getSwipeActions;->extraCallback()Z

    move-result v41

    invoke-static {}, Lo/TargetNavJsonAdapter;->extraCallback()Lo/TargetNavJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/TargetNavJsonAdapter;->ICustomTabsCallback$Stub()Landroid/os/Bundle;

    move-result-object v42

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v3

    iget-object v4, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lo/ContactSyncResponse;->onPostMessage(Ljava/lang/String;)Z

    move-result v43

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->IPostMessageService$Stub$Proxy:Ljava/util/List;

    move-object/from16 v45, v3

    iget-object v3, v0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v3}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v3

    invoke-virtual {v3}, Lo/component28;->onNavigationEvent()Z

    move-result v49

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady()Z

    move-result v50

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    invoke-static {}, Lo/getAccount_number;->onNavigationEvent()Z

    move-result v51

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->warmup()Lo/PaymentModeListResponseJsonAdapter;

    move-result-object v3

    move-object/from16 p3, v1

    const-wide/16 v0, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v14, 0x0

    invoke-static {v3, v14, v0, v1, v4}, Lo/InvalidPaymentAmount$$Parcelable;->ICustomTabsCallback(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v52, v0

    check-cast v52, Ljava/util/ArrayList;

    move-object v3, v9

    move-object/from16 v4, p1

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v14, v53

    move-object/from16 v15, p2

    move-object/from16 v47, v48

    move/from16 v48, p4

    invoke-direct/range {v2 .. v52}, Lo/setBankNameTopMargin;-><init>(Landroid/os/Bundle;Lo/setLastItem;Lo/setCurrentItem$default;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lo/DataListJsonAdapter;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/activateCredProtect;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lo/UserWinningStatisticsJsonAdapter;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;Ljava/util/List;Ljava/lang/String;Ljava/util/List;IZZZLjava/util/ArrayList;)V

    return-object p3
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getDefaultImpl:Z

    if-nez v1, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual {p0, v3}, Lo/DeviceAttrResponse;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getDefaultImpl:Z

    :cond_1
    iget-boolean v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Default:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v1, v1, Lo/LockConfigDataJsonAdapter;->onNavigationEvent:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v1, v1, Lo/LockConfigDataJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {p0, v1}, Lo/DeviceAttrResponse;->onPostMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v1, v1, Lo/TabConfigResponse;->onTransact:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v1, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v7, v1, Lo/TabConfigResponse;->onTransact:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_4
    iput-boolean v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Default:Z

    return-void
.end method

.method protected ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCommand:Lo/TabConfigResponseJsonAdapter;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCommand:Lo/TabConfigResponseJsonAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/TabConfigResponseJsonAdapter;->extraCallback(Lo/LockConfigData;)V

    :cond_0
    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCommand:Lo/TabConfigResponseJsonAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCommand:Lo/TabConfigResponseJsonAdapter;

    invoke-virtual {p1, p0}, Lo/TabConfigResponseJsonAdapter;->extraCallback(Lo/LockConfigData;)V

    :cond_1
    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget v0, p1, Lo/LockConfigDataJsonAdapter;->mayLaunchUrl:I

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget p1, p1, Lo/LockConfigDataJsonAdapter;->postMessage:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    invoke-virtual {p2, v0, p1}, Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;->onNavigationEvent(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lo/BankDetailsResponse;->onNavigationEvent(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public IconCompatParcelizer()V
    .locals 1

    const-string v0, "showInterstitial is not supported for current ad type"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final MediaBrowserCompat$CallbackHandler()V
    .locals 3

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Mediation adapter "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " refreshed, but mediation adapters should never refresh."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lo/clone;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {p0, v0, v1}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->cancelAll()V

    return-void
.end method

.method public final MediaBrowserCompat$ConnectionCallback()V
    .locals 2

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/clone;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    return-void
.end method

.method public extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V
    .locals 8

    const-string v0, "Ad state was null when trying to ping impression URLs."

    if-nez p1, :cond_0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Pinging Impression URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback()V

    :cond_2
    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object v2, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->ICustomTabsCallback:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    invoke-virtual {v0, v2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->notify:Z

    if-nez v0, :cond_3

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onMessageChannelReady:Ljava/util/List;

    invoke-virtual {p0, v3}, Lo/DeviceAttrResponse;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-boolean v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->notify:Z

    :cond_3
    :goto_0
    iget-boolean v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->setDefaultImpl:Z

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_5
    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v0, v0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v7, v0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub:Ljava/util/List;

    move-object v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_6
    iput-boolean v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->setDefaultImpl:Z

    return-void
.end method

.method public final extraCallback(Lo/openGameRewards;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lo/openGameRewards;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;

    invoke-virtual {v0, v1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    :cond_1
    if-nez v0, :cond_2

    const-string p1, "Mediation adapter invoked onCustomClick but no listeners were set."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v0, p1, p2}, Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/openGameRewards;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    const-string p2, "Unable to call onCustomClick."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final extraCallback(Lo/setLastItem;Lo/setCanReverse;I)Z
    .locals 11

    invoke-virtual {p0}, Lo/clone;->unsubscribe()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Landroid/content/Context;)Lo/ReferralBottomSheetBackgroundJsonAdapter;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Lo/ReferralBottomSheetBackgroundJsonAdapter;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v3}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady()V

    iget-object v3, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput v1, v3, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    sget-object v1, Lo/WinningTypes;->getString:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v1

    invoke-virtual {v1}, Lo/ContactSyncResponse;->asBinder()Lo/GreetingCampaignCodeRequestJsonAdapter;

    move-result-object v1

    invoke-static {}, Lo/getParcel;->newSession()Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;

    move-result-object v3

    iget-object v4, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v5, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v6, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v9, v6, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lo/GreetingCampaignCodeRequestJsonAdapter;->extraCallback()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v8, v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-virtual/range {v3 .. v10}, Lo/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;->onPostMessage(Landroid/content/Context;Lo/DataListJsonAdapter;ZLo/GreetingCampaignCodeRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object v2, v1

    :cond_3
    invoke-direct {p0, p1, v0, v2, p3}, Lo/clone;->extraCallback(Lo/setLastItem;Landroid/os/Bundle;Lo/GreetingCampaignCodeRequestJsonAdapter;I)Lo/setBankNameTopMargin;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/clone;->onNavigationEvent(Lo/setBankNameTopMargin;Lo/setCanReverse;)Z

    move-result p1

    return p1
.end method

.method public getItem()V
    .locals 0

    invoke-virtual {p0}, Lo/clone;->MediaBrowserCompat$ConnectionCallback()V

    return-void
.end method

.method public final getNotifyChildrenChangedOptions()V
    .locals 0

    invoke-virtual {p0}, Lo/clone;->onRelationshipValidationResult()V

    return-void
.end method

.method public getSessionToken()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->u_()V

    return-void
.end method

.method public mayLaunchUrl()V
    .locals 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/getAccount_number;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    :cond_0
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v0}, Lo/Info;->onMessageChannelReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Could not pause mediation adapter."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lo/clone;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    iget-object v0, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent()V

    return-void
.end method

.method public final onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 7

    invoke-super {p0, p1}, Lo/DeviceAttrResponse;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_1

    const-string v0, "Disable the debug gesture detector on the mediation ad frame."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->onMessageChannelReady()V

    :cond_0
    const-string v0, "Pinging network fill URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v6, v0, Lo/TabConfigResponse;->asInterface:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->asBinder:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "Pinging urls remotely"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v2, v2, Lo/LockConfigDataJsonAdapter;->asBinder:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v0, "Enable the debug gesture detector on the admob ad frame."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->extraCallback()V

    :cond_2
    :goto_0
    iget v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->asInterface:Ljava/util/List;

    if-eqz v0, :cond_3

    const-string v0, "Pinging no fill URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v6, v0, Lo/LockConfigDataJsonAdapter;->asInterface:Ljava/util/List;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_3
    return-void
.end method

.method final onNavigationEvent(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 4

    iget-object v0, p0, Lo/clone;->onRelationshipValidationResult:Lo/setLastItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onRelationshipValidationResult:Lo/setLastItem;

    const/4 v2, 0x0

    iput-object v2, p0, Lo/clone;->onRelationshipValidationResult:Lo/setLastItem;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/setLastItem;

    iget-object v2, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v3, "_noRefresh"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p1, v1}, Lo/clone;->onNavigationEvent(Lo/setLastItem;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/setBankNameTopMargin;Lo/setCanReverse;)Z
    .locals 4

    iput-object p2, p0, Lo/clone;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v0, p1, Lo/setBankNameTopMargin;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v1, "seq_num"

    invoke-virtual {p2, v1, v0}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lo/setBankNameTopMargin;->IPostMessageService$Stub:Ljava/lang/String;

    const-string v1, "request_id"

    invoke-virtual {p2, v1, v0}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lo/setBankNameTopMargin;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {p2, v1, v0}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lo/setBankNameTopMargin;->asBinder:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/setBankNameTopMargin;->asBinder:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version"

    invoke-virtual {p2, v1, v0}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {}, Lo/getParcel;->onNavigationEvent()Lo/ColorsJsonAdapter;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/clone;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    iget-object v1, v1, Lo/StatementPeriod;->ICustomTabsCallback:Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;

    iget-object v2, p1, Lo/setBankNameTopMargin;->ICustomTabsCallback:Lo/setLastItem;

    iget-object v2, v2, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string v3, "sdk_less_server_data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-direct {v2, v0, p1, p0, v1}, Lo/AutoDebitAddMandateResponseJsonAdapter;-><init>(Landroid/content/Context;Lo/setBankNameTopMargin;Lo/Colors;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lo/GradientResponseModel;

    invoke-direct {v2, v0, p1, p0, v1}, Lo/GradientResponseModel;-><init>(Landroid/content/Context;Lo/setBankNameTopMargin;Lo/Colors;Lo/RedeemUtils$redeemReward$1$onResponse$1$1$onResponse$$inlined$executeOnResume$1;)V

    :goto_0
    invoke-virtual {v2}, Lo/ContactReverseSyncResponse;->asBinder()Lo/PaymentModeListResponseJsonAdapter;

    iput-object v2, p2, Lo/PaymentMode$$Parcelable;->asBinder:Lo/ContactReverseSyncResponse;

    const/4 p1, 0x1

    return p1
.end method

.method protected final onNavigationEvent(Lo/setLastItem;)Z
    .locals 0

    invoke-super {p0, p1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/setLastItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lo/clone;->getInterfaceDescriptor:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onNavigationEvent(Lo/setLastItem;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)Z
    .locals 4

    if-nez p3, :cond_2

    iget-object p3, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p3}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-wide v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->asInterface:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    iget-object p3, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    iget-wide v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->asInterface:J

    :goto_0
    invoke-virtual {p3, p1, v0, v1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Lo/setLastItem;J)V

    goto :goto_1

    :cond_0
    iget-object p3, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-wide v0, p3, Lo/LockConfigDataJsonAdapter;->onTransact:J

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    iget-object p3, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    iget-object p2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-wide v0, p2, Lo/LockConfigDataJsonAdapter;->onTransact:J

    goto :goto_0

    :cond_1
    iget-boolean p3, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-nez p3, :cond_2

    iget p2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {p2, p1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/setLastItem;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result p1

    return p1
.end method

.method public onNavigationEvent(Lo/setLastItem;Lo/setCanReverse;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lo/clone;->extraCallback(Lo/setLastItem;Lo/setCanReverse;I)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo/DeviceAttrResponse;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRelationshipValidationResult()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/clone;->getInterfaceDescriptor:Z

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsService$Stub$Proxy()V

    return-void
.end method

.method public final onTransact()V
    .locals 2

    iget-object v0, p0, Lo/clone;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method public postMessage()V
    .locals 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v1}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v1}, Lo/getAccount_number;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    :cond_1
    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v1}, Lo/Info;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Could not resume mediation adapter."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback()V

    :cond_4
    iget-object v0, p0, Lo/clone;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method public final search()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub()V

    return-void
.end method

.method public sendCustomAction()V
    .locals 1

    const-string v0, "Mediated ad does not support onVideoEnd callback"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final subscribe()V
    .locals 0

    invoke-virtual {p0}, Lo/clone;->z_()V

    return-void
.end method

.method public final t_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-static {v0}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u_()V
    .locals 7

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_1
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v0, v0, Lo/TabConfigResponse;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v6, v0, Lo/TabConfigResponse;->onRelationshipValidationResult:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_2
    invoke-super {p0}, Lo/DeviceAttrResponse;->u_()V

    return-void
.end method

.method protected unsubscribe()Z
    .locals 2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final v_()V
    .locals 2

    iget-object v0, p0, Lo/clone;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method public final w_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final x_()V
    .locals 2

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lo/clone;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lo/getBrand;->onNavigationEvent(Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public z_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/clone;->getInterfaceDescriptor:Z

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->ICustomTabsService$Stub()V

    iget-object v0, p0, Lo/clone;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->extraCallback()V

    return-void
.end method
