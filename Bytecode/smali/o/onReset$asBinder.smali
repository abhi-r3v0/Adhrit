.class final Lo/onReset$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onReset;->onPostMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getViewForPosition<",
        "+",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onReset;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/onReset;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    iput-object p2, p0, Lo/onReset$asBinder;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 71
    check-cast p1, Lo/getViewForPosition;

    .line 1443
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 1444
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v1}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>()V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_1b

    .line 3010
    iget-object v0, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_11

    .line 4003
    iget-object p1, p1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 1448
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast p1, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;

    .line 1449
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 4320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    .line 1449
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_5
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iget-object v1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v1}, Lo/onReset;->onNavigationEvent(Lo/onReset;)Lo/stopLoading;

    move-result-object v1

    invoke-interface {v1}, Lo/stopLoading;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    .line 1450
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 5320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_7

    .line 1450
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBank()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 6320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, v2

    :goto_4
    if-nez v0, :cond_9

    .line 1451
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBank_code()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1452
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 7320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_b

    .line 1452
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getBrand()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 1453
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 8320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_c

    goto :goto_6

    :cond_c
    move-object v0, v2

    :goto_6
    if-nez v0, :cond_d

    .line 1453
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->type:Ljava/lang/String;

    .line 1454
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 9320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_e

    goto :goto_7

    :cond_e
    move-object v0, v2

    :goto_7
    if-nez v0, :cond_f

    .line 1454
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_f
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/onboarding/model/CardBinDetails;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->country:Ljava/lang/String;

    .line 1455
    iget-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {p1, v2}, Lo/onReset;->extraCallback(Lo/onReset;Ljava/lang/String;)V

    .line 1456
    iget-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {p1}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 10320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_10

    move-object v2, v0

    .line 1456
    :cond_10
    check-cast v2, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-static {p1, v2}, Lo/onReset;->onMessageChannelReady(Lo/onReset;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    return-void

    .line 1458
    :cond_11
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 11320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v4, :cond_12

    goto :goto_8

    :cond_12
    move-object v0, v2

    :goto_8
    if-nez v0, :cond_13

    .line 1458
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_13
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iput-object v2, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer:Ljava/lang/String;

    .line 1459
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 12320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v4, :cond_14

    goto :goto_9

    :cond_14
    move-object v0, v2

    :goto_9
    if-nez v0, :cond_15

    .line 1459
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_15
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iput-object v2, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->issuer_code:Ljava/lang/String;

    .line 1460
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 13320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 13321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v4, :cond_16

    goto :goto_a

    :cond_16
    move-object v0, v2

    :goto_a
    if-nez v0, :cond_17

    .line 1460
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_17
    check-cast v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iput-object v2, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    .line 1461
    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    .line 14003
    iget-object p1, p1, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    .line 1461
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    :cond_18
    move-object p1, v2

    :goto_b
    invoke-static {v0, p1}, Lo/onReset;->extraCallback(Lo/onReset;Ljava/lang/String;)V

    .line 1462
    iget-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    const/4 v0, 0x2

    new-array v4, v0, [Lo/addWrite;

    invoke-static {p1}, Lo/onReset;->onRelationshipValidationResult(Lo/onReset;)Ljava/lang/String;

    move-result-object v5

    .line 14043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "source"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v3

    .line 1462
    iget-object v5, p0, Lo/onReset$asBinder;->onPostMessage:Ljava/lang/String;

    if-eqz v5, :cond_1a

    const/4 v6, 0x6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15043
    new-instance v6, Lo/addWrite;

    const-string v7, "bin"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v1

    const-string v1, "pairs"

    .line 1462
    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "card_bin_error"

    .line 1462
    invoke-static {p1, v0, v1}, Lo/onReset;->onNavigationEvent(Lo/onReset;Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1463
    iget-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {p1}, Lo/onReset;->onNavigationEvent(Lo/onReset;)Lo/stopLoading;

    move-result-object p1

    iget-object v0, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->ICustomTabsCallback$Stub(Lo/onReset;)Ljava/lang/String;

    move-result-object v0

    .line 16023
    invoke-interface {p1, v0, v3}, Lo/stopLoading;->onNavigationEvent(Ljava/lang/String;Z)V

    .line 1464
    iget-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {p1}, Lo/onReset;->onNavigationEvent(Lo/onReset;)Lo/stopLoading;

    move-result-object p1

    invoke-interface {p1, v3}, Lo/stopLoading;->onNavigationEvent(Z)V

    .line 1465
    iget-object p1, p0, Lo/onReset$asBinder;->ICustomTabsCallback:Lo/onReset;

    invoke-static {p1}, Lo/onReset;->onPostMessage(Lo/onReset;)Lo/setActive;

    move-result-object v0

    .line 16320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 16321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_19

    move-object v2, v0

    .line 1465
    :cond_19
    check-cast v2, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-static {p1, v2}, Lo/onReset;->onMessageChannelReady(Lo/onReset;Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V

    goto :goto_c

    .line 1462
    :cond_1a
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    :goto_c
    return-void
.end method
