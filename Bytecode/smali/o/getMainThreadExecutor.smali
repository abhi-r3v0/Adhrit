.class public interface abstract Lo/getMainThreadExecutor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMainThreadExecutor$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J6\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0016\u0008\u0001\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\'J\u001e\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u0014\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u0014\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00050\u0003H\'J7\u0010\u0013\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\u0017\u001a\u0004\u0018\u00010\nH\'\u00a2\u0006\u0002\u0010\u0018J1\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\u001c\u001a\u0004\u0018\u00010\nH\'\u00a2\u0006\u0002\u0010\u0018JU\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010 \u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u0008H\'\u00a2\u0006\u0002\u0010#J\u001e\u0010$\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010&\u001a\u00020\u0008H\'J\u001e\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J\u001e\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J*\u0010)\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\n\u0008\u0003\u0010+\u001a\u0004\u0018\u00010\u0008H\'J\u0014\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u0014\u0010-\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u001e\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u00100\u001a\u000201H\'J*\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\n\u0008\u0001\u00103\u001a\u0004\u0018\u00010\u0008H\'J\u001e\u00104\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J\u0014\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u001e\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J\u001e\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J\u0014\u00108\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0003H\'J\u001e\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J(\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0008H\'J\u001e\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0008H\'J\u001e\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008H\'J\u0014\u0010=\u001a\u000e\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020\u00050\u0003H\'J(\u0010?\u001a\u000e\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0001\u0010A\u001a\u00020BH\'J7\u0010C\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0\u0014\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010E\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010F\u001a\u0004\u0018\u00010\nH\'\u00a2\u0006\u0002\u0010GJ+\u0010H\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0\u0014\u0012\u0004\u0012\u00020\u00050\u00032\n\u0008\u0003\u0010E\u001a\u0004\u0018\u00010\nH\'\u00a2\u0006\u0002\u0010IJ\u001e\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\u0006\u001a\u00020KH\'J@\u0010L\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0016\u0008\u0001\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\'J\u001e\u0010M\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00050\u00032\u0008\u0008\u0001\u0010O\u001a\u00020PH\'\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/helper/ControlService;",
        "",
        "addCard",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "params",
        "",
        "",
        "linkCardEnabled",
        "",
        "cardValidationcheck",
        "Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;",
        "id",
        "fetchMyCards",
        "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
        "getAllCardManageActionsDetails",
        "getAmexStatus",
        "Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;",
        "getBankOfferCategories",
        "",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;",
        "instrument_id",
        "showHits",
        "(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getBankOfferDetails",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;",
        "reward_id",
        "neu_flow",
        "getBankOfferRewards",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;",
        "category",
        "text",
        "page",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "getCardFullStatement",
        "Lcom/dreamplug/androidapp/cards/StatementResponse;",
        "cardId",
        "getCardLinkInfo",
        "getCardManageActionsDetails",
        "getControlDetails",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
        "metaData",
        "getInstrumentDetails",
        "getOnboardCardsList",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;",
        "getSmartStatementDetails",
        "requestBody",
        "Lcom/dreamplug/fabrik/ui/cm/models/StatementDetailsRequest;",
        "getSmartStatements",
        "yearMonth",
        "getStatementUrl",
        "getUnBenefitsDetails",
        "getUnBilledCriteriaDetails",
        "getUnBilledDetails",
        "getUnBilledFarm",
        "getUnBilledSingleCardLevelTxns",
        "getUnBilledSingleCategoryLevelTxns",
        "getUnBilledSingleCategoryTxns",
        "getUnbilledSingleCardAllCategories",
        "getUserSegmentData",
        "Lcom/dreamplug/fabrik/ui/control/UserSegmentResponse;",
        "linkCard",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkSuccessResponse;",
        "request",
        "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkRequest;",
        "paymentModeWithoutCache",
        "Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
        "showTemplate",
        "maxUnmask",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "paymentModes",
        "(Ljava/lang/Boolean;)Lcom/dreamplug/network/internals/call/CallRequest;",
        "thirdPartyAuthorize",
        "Lcom/dreamplug/androidapp/auth/AuthRequestClass;",
        "updateCard",
        "validate",
        "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;",
        "body",
        "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessRequest;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/my-cards"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "control_service_my_cards"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lo/clearScrap;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "show_templates"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "max_unmask"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/clearScrap<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/data/card-lists"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/aggregated/{id}"
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "metadata"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/data/card-details/{id}/"
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardCardsData;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "cardano/v1/aggregator/card-list"
    .end annotation
.end method

.method public abstract ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/transactions/{id}"
    .end annotation
.end method

.method public abstract asBinder(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "criteria"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/{criteria}"
    .end annotation
.end method

.method public abstract extraCallback()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/AmexLoginStatus;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/web/v1/amex/credentials/isactive"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/plutus/v1/payment-instruments/{id}/configs/"
    .end annotation
.end method

.method public abstract extraCallback(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/helper/CardLinkRequest;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/control/helper/CardLinkRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkSuccessResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "user-wallets/v1/instruments/card/{id}/link"
    .end annotation
.end method

.method public abstract onMessageChannelReady()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/my-cards/manage"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "category"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/category/transactions"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/Boolean;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "reward_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "neu_flow"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/pandora-ingestor/search/reward/getbyid/app"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Z)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lo/isText;
            onNavigationEvent = "link_card_enabled"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/WebSocketException;
        onNavigationEvent = "/user-wallets/v1/instruments/card/{id}?neu_flow=true"
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/util/Map;Z)Lo/clearScrap;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lo/isText;
            onNavigationEvent = "link_card_enabled"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/user-wallets/v1/instruments/card?neu_flow=true"
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/benefits"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "control_service_benefits"
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/dreamplug/fabrik/ui/cm/models/StatementDetailsRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/cm/models/StatementDetailsRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/cm/models/StatementDetailsRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/control-service/v1/smart-statement/transactions"
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessRequest;)Lo/clearScrap;
    .param p1    # Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessRequest;
        .annotation runtime Lo/setEventHandler;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessRequest;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/verifyServerStatusLine;
        onPostMessage = "/user-wallets/v1/instruments/valid"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/Boolean;)Lo/clearScrap;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "show_templates"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/clearScrap<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/data/card-lists?neu_flow=true"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "control_service_card_lists"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingDataResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/user-wallets/v1/instruments/card/{id}?neu_flow=true"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "instrument_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lo/isText;
            onNavigationEvent = "show_hits"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lo/clearScrap<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/control/bankoffers/OfferCategory;",
            ">;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/pandora-ingestor/published/rewards/get?size=1"
    .end annotation
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "year_month"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/smart-statement/{id}"
    .end annotation
.end method

.method public abstract onPostMessage()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/UserSegmentResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/obelix/api/v1/users/external/segments"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/my-cards/manage-bs/{id}"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "category"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/category/transactions/{id}"
    .end annotation
.end method

.method public abstract onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "instrument_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "category"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "text"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lo/isText;
            onNavigationEvent = "page_no"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lo/isText;
            onNavigationEvent = "reward_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/control/bankoffers/BankOfferRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/pandora-ingestor/published/rewards/get/app?size=10"
    .end annotation
.end method

.method public abstract onRelationshipValidationResult()Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/aggregated"
    .end annotation

    .annotation runtime Lo/updateViewCacheSize;
        extraCallback = "control_service_unbilled"
    .end annotation
.end method

.method public abstract onRelationshipValidationResult(Ljava/lang/String;)Lo/clearScrap;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/createNonce;
            onPostMessage = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/cm/models/MyCardsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/pong;
        onNavigationEvent = "/control-service/v1/unbilled/category/{id}"
    .end annotation
.end method
