.class public final Lo/PayoutInstrument;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final extraCallback:Lo/BankAccountsResponseJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Lo/BankAccountData;

.field private final asBinder:Lo/setOnCropWindowChangedListener;

.field private final onMessageChannelReady:Lo/BadgeJsonAdapter;

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Cta$Deeplink;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/PaymentMode$$Parcelable;

.field private final onTransact:Lo/getTxnCurrency;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/BankAccountsResponseJsonAdapter;

    invoke-direct {v0}, Lo/BankAccountsResponseJsonAdapter;-><init>()V

    sput-object v0, Lo/PayoutInstrument;->extraCallback:Lo/BankAccountsResponseJsonAdapter;

    return-void
.end method

.method public constructor <init>(Lo/PaymentMode$$Parcelable;Lo/BankAccountData;Lo/BadgeJsonAdapter;Lo/getTxnCurrency;Lo/setOnCropWindowChangedListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    iput-object p1, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p2, p0, Lo/PayoutInstrument;->ICustomTabsCallback:Lo/BankAccountData;

    iput-object p3, p0, Lo/PayoutInstrument;->onMessageChannelReady:Lo/BadgeJsonAdapter;

    iput-object p4, p0, Lo/PayoutInstrument;->onTransact:Lo/getTxnCurrency;

    iput-object p5, p0, Lo/PayoutInstrument;->asBinder:Lo/setOnCropWindowChangedListener;

    return-void
.end method

.method public static onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/Cta$Deeplink;
    .locals 4

    iget-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Cta$Deeplink;

    if-nez v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lo/PayoutInstrument;->ICustomTabsCallback:Lo/BankAccountData;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lo/PayoutInstrument;->extraCallback:Lo/BankAccountsResponseJsonAdapter;

    :cond_0
    new-instance v2, Lo/Cta$Deeplink;

    invoke-interface {v1, p1}, Lo/BankAccountData;->ICustomTabsCallback(Ljava/lang/String;)Lo/Info;

    move-result-object v1

    iget-object v3, p0, Lo/PayoutInstrument;->onMessageChannelReady:Lo/BadgeJsonAdapter;

    invoke-direct {v2, v1, v3}, Lo/Cta$Deeplink;-><init>(Lo/Info;Lo/BadgeJsonAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Fail to instantiate adapter "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public final ICustomTabsCallback()Lo/getTxnCurrency;
    .locals 1

    iget-object v0, p0, Lo/PayoutInstrument;->onTransact:Lo/getTxnCurrency;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 7

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v6, v0, Lo/TabConfigResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public final asBinder()V
    .locals 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cta$Deeplink;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    invoke-interface {v1}, Lo/Info;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final extraCallback()V
    .locals 3

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cta$Deeplink;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    invoke-interface {v1}, Lo/Info;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 3

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cta$Deeplink;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    invoke-interface {v1}, Lo/Info;->onMessageChannelReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 2

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->mayLaunchUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lo/PayoutInstrument;->ICustomTabsCallback(Ljava/lang/String;)Lo/Cta$Deeplink;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    invoke-interface {v1, p1}, Lo/Info;->onMessageChannelReady(Z)V

    invoke-virtual {v0}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object p1

    invoke-interface {p1}, Lo/Info;->onTransact()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/FooterActions;)Lo/FooterActions;
    .locals 4

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->newSession:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lo/FooterActions;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget-object v0, v0, Lo/LockConfigDataJsonAdapter;->newSession:Ljava/lang/String;

    iget-object v1, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->updateVisuals:Lo/LockConfigDataJsonAdapter;

    iget v1, v1, Lo/LockConfigDataJsonAdapter;->ICustomTabsService:I

    invoke-direct {p1, v0, v1}, Lo/FooterActions;-><init>(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v1, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v2, v2, Lo/TabConfigResponse;->ICustomTabsService:Ljava/util/List;

    iget-object v3, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lo/AccountTemplateProperties;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lo/FooterActions;)V

    :cond_1
    return-object p1
.end method

.method public final onNavigationEvent()V
    .locals 5

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput v1, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-static {}, Lo/getParcel;->extraCallback()Lo/setOnSetCropOverlayReleasedListener;

    iget-object v1, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    new-instance v3, Lo/CardProgressJsonAdapter;

    invoke-direct {v3, v1, v2, p0}, Lo/CardProgressJsonAdapter;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/PayoutInstrument;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "AdRenderer: "

    if-eqz v2, :cond_0

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-interface {v3}, Lo/setSwipedDirection;->s_()Ljava/lang/Object;

    iput-object v3, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    return-void
.end method

.method public final onPostMessage()Lo/setOnCropWindowChangedListener;
    .locals 1

    iget-object v0, p0, Lo/PayoutInstrument;->asBinder:Lo/setOnCropWindowChangedListener;

    return-object v0
.end method

.method public final onPostMessage(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lo/PayoutInstrument;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Cta$Deeplink;

    :try_start_0
    invoke-virtual {v1}, Lo/Cta$Deeplink;->onPostMessage()Lo/Info;

    move-result-object v1

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/Info;->onMessageChannelReady(Lo/getEventName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to call Adapter.onContextChanged."

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransact()V
    .locals 7

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->validateRelationship()Lo/AccountTemplateProperties;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v0, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lo/PayoutInstrument;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v6, v0, Lo/TabConfigResponse;->warmup:Ljava/util/List;

    invoke-static/range {v1 .. v6}, Lo/AccountTemplateProperties;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;ZLjava/util/List;)V

    :cond_0
    return-void
.end method
