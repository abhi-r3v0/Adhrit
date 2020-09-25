.class public final Lo/Bucketizer;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SyncBankRequestAccount;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/BankAccountData;

.field private final ICustomTabsCallback$Stub:Lo/DataListJsonAdapter;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/activateCredProtect;

.field private final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Landroid/content/Context;

.field private asInterface:Lo/setLastItem;

.field private final extraCallback:Lo/TabConfigResponse;

.field private final extraCommand:Z

.field private final getInterfaceDescriptor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mayLaunchUrl:Z

.field private final newSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/LockConfigDataJsonAdapter;

.field private final onNavigationEvent:J

.field private final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Lo/setCurrentItem$default;

.field private final onTransact:Ljava/lang/Object;

.field private postMessage:Lo/InfoJsonAdapter;

.field private requestPostMessageChannel:I

.field private updateVisuals:Lo/Info;

.field private final warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/BankAccountData;Lo/LockConfigDataJsonAdapter;Lo/TabConfigResponse;Lo/setLastItem;Lo/setCurrentItem$default;Lo/DataListJsonAdapter;ZZLo/activateCredProtect;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lo/BankAccountData;",
            "Lo/LockConfigDataJsonAdapter;",
            "Lo/TabConfigResponse;",
            "Lo/setLastItem;",
            "Lo/setCurrentItem$default;",
            "Lo/DataListJsonAdapter;",
            "ZZ",
            "Lo/activateCredProtect;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    const/4 v4, -0x2

    iput v4, v0, Lo/Bucketizer;->requestPostMessageChannel:I

    move-object v4, p1

    iput-object v4, v0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    move-object v4, p3

    iput-object v4, v0, Lo/Bucketizer;->ICustomTabsCallback:Lo/BankAccountData;

    iput-object v3, v0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    const-string v4, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lo/Bucketizer;->extraCallback()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    iput-object v2, v0, Lo/Bucketizer;->onMessageChannelReady:Lo/LockConfigDataJsonAdapter;

    iget-wide v4, v3, Lo/TabConfigResponse;->requestPostMessageChannel:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v1, v3, Lo/TabConfigResponse;->requestPostMessageChannel:J

    :goto_0
    iput-wide v1, v0, Lo/Bucketizer;->onNavigationEvent:J

    move-object v1, p6

    goto :goto_1

    :cond_1
    iget-wide v3, v2, Lo/LockConfigDataJsonAdapter;->extraCallback:J

    cmp-long v1, v3, v6

    if-eqz v1, :cond_2

    iget-wide v1, v2, Lo/LockConfigDataJsonAdapter;->extraCallback:J

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x2710

    goto :goto_0

    :goto_1
    iput-object v1, v0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    move-object v1, p7

    iput-object v1, v0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    move-object/from16 v1, p8

    iput-object v1, v0, Lo/Bucketizer;->ICustomTabsCallback$Stub:Lo/DataListJsonAdapter;

    move/from16 v1, p9

    iput-boolean v1, v0, Lo/Bucketizer;->warmup:Z

    move/from16 v1, p10

    iput-boolean v1, v0, Lo/Bucketizer;->mayLaunchUrl:Z

    move-object/from16 v1, p11

    iput-object v1, v0, Lo/Bucketizer;->ICustomTabsCallback$Stub$Proxy:Lo/activateCredProtect;

    move-object/from16 v1, p12

    iput-object v1, v0, Lo/Bucketizer;->newSession:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lo/Bucketizer;->getInterfaceDescriptor:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lo/Bucketizer;->ICustomTabsService:Ljava/util/List;

    move/from16 v1, p15

    iput-boolean v1, v0, Lo/Bucketizer;->extraCommand:Z

    return-void
.end method

.method private static ICustomTabsCallback(Lo/Attributes;)Lo/Info;
    .locals 1

    new-instance v0, Lo/StringEntityJsonAdapter;

    invoke-direct {v0, p0}, Lo/StringEntityJsonAdapter;-><init>(Lo/Attributes;)V

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/Bucketizer;)Lo/Info;
    .locals 0

    invoke-direct {p0}, Lo/Bucketizer;->onNavigationEvent()Lo/Info;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/Bucketizer;Lo/Info;)Lo/Info;
    .locals 0

    iput-object p1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    return-object p1
.end method

.method private final ICustomTabsCallback()Z
    .locals 2

    iget-object v0, p0, Lo/Bucketizer;->onMessageChannelReady:Lo/LockConfigDataJsonAdapter;

    iget v0, v0, Lo/LockConfigDataJsonAdapter;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ICustomTabsCallback(Lo/Bucketizer;I)Z
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/Bucketizer;->onMessageChannelReady(I)Z

    move-result p0

    return p0
.end method

.method private final extraCallback()Ljava/lang/String;
    .locals 3

    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    :try_start_0
    iget-object v1, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v1, v1, Lo/TabConfigResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/Bucketizer;->ICustomTabsCallback:Lo/BankAccountData;

    iget-object v2, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v2, v2, Lo/TabConfigResponse;->onMessageChannelReady:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/BankAccountData;->onPostMessage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const-string v1, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method static synthetic extraCallback(Lo/Bucketizer;)Lo/Info;
    .locals 0

    iget-object p0, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    return-object p0
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lo/Bucketizer;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/Bucketizer;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cpm_floor_cents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string v0, "Could not remove field. Returning the original value"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final onMessageChannelReady(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lo/Bucketizer;->warmup:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    invoke-interface {v1}, Lo/Info;->B_()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    iget-boolean v1, v1, Lo/setCurrentItem$default;->extraCallback:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    invoke-interface {v1}, Lo/Info;->warmup()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    invoke-interface {v1}, Lo/Info;->ICustomTabsCallback$Stub$Proxy()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "capabilities"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catch_0
    const-string p1, "Could not get adapter info. Returning false"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic onMessageChannelReady(Lo/Bucketizer;)Z
    .locals 0

    invoke-direct {p0}, Lo/Bucketizer;->ICustomTabsCallback()Z

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/Bucketizer;)I
    .locals 0

    iget p0, p0, Lo/Bucketizer;->requestPostMessageChannel:I

    return p0
.end method

.method private final onNavigationEvent()Lo/Info;
    .locals 4

    iget-object v0, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Instantiating mediation adapter: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/Bucketizer;->warmup:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    invoke-virtual {v0}, Lo/TabConfigResponse;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lo/WinningTypes;->removeSubscription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-static {v0}, Lo/Bucketizer;->ICustomTabsCallback(Lo/Attributes;)Lo/Info;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$ServiceBinderWrapper:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.AdUrlAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-static {v0}, Lo/Bucketizer;->ICustomTabsCallback(Lo/Attributes;)Lo/Info;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    const-string v1, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lo/StringEntityJsonAdapter;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzzv;-><init>()V

    invoke-direct {v0, v1}, Lo/StringEntityJsonAdapter;-><init>(Lo/Attributes;)V

    return-object v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lo/Bucketizer;->ICustomTabsCallback:Lo/BankAccountData;

    iget-object v1, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/BankAccountData;->ICustomTabsCallback(Ljava/lang/String;)Lo/Info;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not instantiate mediation adapter: "

    iget-object v2, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final onNavigationEvent(Lo/TabConfigResponseJsonAdapter;)V
    .locals 9

    iget-object v0, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v0, v0, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/Bucketizer;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lo/Bucketizer;->ICustomTabsCallback$Stub:Lo/DataListJsonAdapter;

    iget v1, v1, Lo/DataListJsonAdapter;->onMessageChannelReady:I

    const v2, 0x3e8fa0

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    iget-boolean v1, v1, Lo/setCurrentItem$default;->extraCallback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    invoke-interface {v1, v2, v3, v0, p1}, Lo/Info;->extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void

    :cond_0
    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    iget-object v4, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    move-object v5, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lo/Info;->onPostMessage(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lo/Bucketizer;->warmup:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    invoke-virtual {v1}, Lo/TabConfigResponse;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    iget-boolean v1, v1, Lo/setCurrentItem$default;->extraCallback:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    iget-object v4, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v5, v4, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    move-object v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lo/Info;->onNavigationEvent(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lo/Bucketizer;->mayLaunchUrl:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v1, v1, Lo/TabConfigResponse;->newSession:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    iget-object v4, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v5, v4, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    new-instance v7, Lo/activateCredProtect;

    iget-object v4, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v4, v4, Lo/TabConfigResponse;->mayLaunchUrl:Ljava/lang/String;

    invoke-static {v4}, Lo/Bucketizer;->onPostMessage(Ljava/lang/String;)Lo/getPreviousBalance;

    move-result-object v4

    invoke-direct {v7, v4}, Lo/activateCredProtect;-><init>(Lo/getPreviousBalance;)V

    iget-object v4, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v8, v4, Lo/TabConfigResponse;->extraCommand:Ljava/util/List;

    move-object v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lo/Info;->extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;Lo/activateCredProtect;Ljava/util/List;)V

    return-void

    :cond_4
    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    iget-object v4, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    iget-object v5, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v6, v5, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    move-object v5, v0

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lo/Info;->onMessageChannelReady(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void

    :cond_5
    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->onRelationshipValidationResult:Lo/setCurrentItem$default;

    iget-object v4, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    iget-object v5, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v6, v5, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    move-object v5, v0

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lo/Info;->onMessageChannelReady(Lo/getEventName;Lo/setCurrentItem$default;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;)V

    return-void

    :cond_6
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/Bucketizer;->newSession:Ljava/util/List;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lo/Bucketizer;->getInterfaceDescriptor:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lo/Bucketizer;->getInterfaceDescriptor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":false"

    iget-object v4, p0, Lo/Bucketizer;->ICustomTabsService:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lo/Bucketizer;->ICustomTabsService:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, ":true"

    :cond_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "custom:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v2, p0, Lo/Bucketizer;->asBinder:Landroid/content/Context;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    iget-object v3, p0, Lo/Bucketizer;->asInterface:Lo/setLastItem;

    iget-object v4, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v5, v4, Lo/TabConfigResponse;->onNavigationEvent:Ljava/lang/String;

    iget-object v7, p0, Lo/Bucketizer;->ICustomTabsCallback$Stub$Proxy:Lo/activateCredProtect;

    move-object v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lo/Info;->extraCallback(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Ljava/lang/String;Lo/PromotionalCardsJsonAdapter;Lo/activateCredProtect;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not request ad from mediation adapter."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lo/Bucketizer;->onNavigationEvent(I)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/Bucketizer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    return-object p0
.end method

.method private final onPostMessage()Lo/InfoJsonAdapter;
    .locals 2

    iget v0, p0, Lo/Bucketizer;->requestPostMessageChannel:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lo/Bucketizer;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lo/Bucketizer;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Bucketizer;->postMessage:Lo/InfoJsonAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Bucketizer;->postMessage:Lo/InfoJsonAdapter;

    invoke-interface {v0}, Lo/InfoJsonAdapter;->onMessageChannelReady()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Bucketizer;->postMessage:Lo/InfoJsonAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get cpm value from MediationResponseMetadata"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lo/Bucketizer;->onTransact()I

    move-result v0

    new-instance v1, Lo/BankAccountSyncRequest;

    invoke-direct {v1, v0}, Lo/BankAccountSyncRequest;-><init>(I)V

    return-object v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static onPostMessage(Ljava/lang/String;)Lo/getPreviousBalance;
    .locals 4

    const-string v0, "any"

    new-instance v1, Lo/getPreviousBalance$extraCallback;

    invoke-direct {v1}, Lo/getPreviousBalance$extraCallback;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback()Lo/getPreviousBalance;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "multiple_images"

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback(Z)Lo/getPreviousBalance$extraCallback;

    const-string p0, "only_urls"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Lo/getPreviousBalance$extraCallback;->onNavigationEvent(Z)Lo/getPreviousBalance$extraCallback;

    const-string p0, "native_image_orientation"

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "landscape"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "portrait"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_0
    invoke-virtual {v1, v3}, Lo/getPreviousBalance$extraCallback;->onNavigationEvent(I)Lo/getPreviousBalance$extraCallback;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Exception occurred when creating native ad options"

    invoke-static {v0, p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v1}, Lo/getPreviousBalance$extraCallback;->ICustomTabsCallback()Lo/getPreviousBalance;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/Bucketizer;Lo/TabConfigResponseJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/Bucketizer;->onNavigationEvent(Lo/TabConfigResponseJsonAdapter;)V

    return-void
.end method

.method private final onTransact()I
    .locals 4

    iget-object v0, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v0, v0, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v2, v2, Lo/TabConfigResponse;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cpm_cents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lo/Bucketizer;->onMessageChannelReady(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cpm_floor_cents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    const-string v2, "penalized_average_cpm_cents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_3
    return v2

    :catch_0
    const-string v0, "Could not convert to json. Returning 0"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic onTransact(Lo/Bucketizer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/InfoJsonAdapter;)V
    .locals 1

    iget-object p1, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lo/Bucketizer;->requestPostMessageChannel:I

    iput-object p2, p0, Lo/Bucketizer;->postMessage:Lo/InfoJsonAdapter;

    iget-object p2, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onMessageChannelReady()V
    .locals 3

    iget-object v0, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/Bucketizer;->updateVisuals:Lo/Info;

    invoke-interface {v1}, Lo/Info;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lo/Bucketizer;->requestPostMessageChannel:I

    iget-object v1, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(JJ)Lo/PinAccountRequest;
    .locals 14

    move-object v1, p0

    iget-object v2, v1, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v9, Lo/TabConfigResponseJsonAdapter;

    invoke-direct {v9}, Lo/TabConfigResponseJsonAdapter;-><init>()V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v5, Lo/BucketizerJsonAdapter;

    invoke-direct {v5, p0, v9}, Lo/BucketizerJsonAdapter;-><init>(Lo/Bucketizer;Lo/TabConfigResponseJsonAdapter;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v5, v1, Lo/Bucketizer;->onNavigationEvent:J

    :goto_0
    iget v0, v1, Lo/Bucketizer;->requestPostMessageChannel:I

    const/4 v7, -0x2

    if-eq v0, v7, :cond_0

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onPostMessage()J

    move-result-wide v5

    sub-long v12, v5, v3

    new-instance v0, Lo/PinAccountRequest;

    iget-object v6, v1, Lo/Bucketizer;->extraCallback:Lo/TabConfigResponse;

    iget-object v7, v1, Lo/Bucketizer;->updateVisuals:Lo/Info;

    iget-object v8, v1, Lo/Bucketizer;->onPostMessage:Ljava/lang/String;

    iget v10, v1, Lo/Bucketizer;->requestPostMessageChannel:I

    invoke-direct {p0}, Lo/Bucketizer;->onPostMessage()Lo/InfoJsonAdapter;

    move-result-object v11

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lo/PinAccountRequest;-><init>(Lo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/TabConfigResponseJsonAdapter;ILo/InfoJsonAdapter;J)V

    monitor-exit v2

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v10, v7, v3

    sub-long v10, v5, v10

    sub-long/2addr v7, p1

    sub-long v7, p3, v7

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_2

    cmp-long v0, v7, v12

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, v1, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    :try_start_2
    iput v0, v1, Lo/Bucketizer;->requestPostMessageChannel:I

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "Timed out waiting for adapter."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, v1, Lo/Bucketizer;->requestPostMessageChannel:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    iget-object v0, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lo/Bucketizer;->requestPostMessageChannel:I

    iget-object p1, p0, Lo/Bucketizer;->onTransact:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
