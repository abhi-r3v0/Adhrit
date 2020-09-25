.class public final Lo/onRangeChanged$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onRangeChanged;->onMessageChannelReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/payments/ControlPaymentsViewModel$fetchDetails$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onRangeChanged;


# direct methods
.method constructor <init>(Lo/onRangeChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lo/onRangeChanged$ICustomTabsCallback;->onPostMessage:Lo/onRangeChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v2, :cond_9

    .line 48
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 48
    check-cast v1, Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;

    if-eqz v1, :cond_a

    .line 1020
    iget-object v5, v1, Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-nez v5, :cond_0

    .line 51
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1025
    :cond_0
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;->onPostMessage:Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2013
    iget-object v4, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 54
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 2019
    iget-object v4, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v4, :cond_1

    .line 3013
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v4, :cond_1

    .line 3037
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;->extraCallback:Ljava/lang/Double;

    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 4013
    iget-object v6, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    if-eqz v6, :cond_2

    .line 55
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 4019
    iget-object v8, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v8, :cond_2

    .line 5013
    iget-object v8, v8, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v8, :cond_2

    .line 5035
    iget-object v8, v8, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;->onPostMessage:Ljava/lang/Double;

    if-eqz v8, :cond_2

    .line 55
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v3

    .line 56
    :goto_1
    new-instance v11, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-eqz v2, :cond_3

    .line 6013
    iget-object v7, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->onMessageChannelReady:Ljava/lang/Double;

    goto :goto_2

    :cond_3
    move-object v7, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 6019
    iget-object v8, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v8, :cond_4

    .line 7009
    iget-object v8, v8, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v8, v3

    .line 56
    :goto_3
    invoke-direct {v11, v4, v6, v7, v8}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    .line 57
    new-instance v10, Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-eqz v2, :cond_5

    .line 7019
    iget-object v4, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v4, :cond_5

    .line 8013
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v4, :cond_5

    .line 8035
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;->onPostMessage:Ljava/lang/Double;

    move-object v13, v4

    goto :goto_4

    :cond_5
    move-object v13, v3

    :goto_4
    if-eqz v2, :cond_6

    .line 9019
    iget-object v4, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v4, :cond_6

    .line 10013
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v4, :cond_6

    .line 10037
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;->extraCallback:Ljava/lang/Double;

    move-object v14, v4

    goto :goto_5

    :cond_6
    move-object v14, v3

    :goto_5
    const-wide/16 v6, 0x0

    .line 57
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    if-eqz v2, :cond_7

    .line 11019
    iget-object v4, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v4, :cond_7

    .line 12013
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v4, :cond_7

    .line 12029
    iget-object v4, v4, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v16, v4

    goto :goto_6

    :cond_7
    move-object/from16 v16, v3

    .line 57
    :goto_6
    new-instance v4, Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    invoke-direct {v4, v5}, Lcom/dreamplug/androidapp/onboarding/PaymentMode;-><init>(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    if-eqz v2, :cond_8

    .line 13019
    iget-object v2, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/PaymentSummary;->asBinder:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    if-eqz v2, :cond_8

    .line 14013
    iget-object v2, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    if-eqz v2, :cond_8

    .line 14033
    iget-object v3, v2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;->onNavigationEvent:Ljava/lang/String;

    :cond_8
    move-object/from16 v18, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc0

    const/16 v22, 0x0

    move-object v12, v10

    move-object/from16 v17, v4

    .line 57
    invoke-direct/range {v12 .. v22}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    iget-object v2, v0, Lo/onRangeChanged$ICustomTabsCallback;->onPostMessage:Lo/onRangeChanged;

    .line 15027
    iget-object v12, v2, Lo/onRangeChanged;->onNavigationEvent:Lo/setActive;

    .line 58
    new-instance v13, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    new-instance v14, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 15033
    iget-object v8, v1, Lcom/dreamplug/fabrik/ui/control/ControlAggregatorResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/control/ControlMetadata;

    const/16 v9, 0x1b

    const/4 v1, 0x0

    move-object v2, v14

    move-object v15, v10

    move-object v10, v1

    .line 58
    invoke-direct/range {v2 .. v10}, Lcom/dreamplug/fabrik/ui/control/CardTemplateData;-><init>(Lcom/dreamplug/fabrik/ui/control/Template;Lcom/dreamplug/fabrik/ui/control/Overlay;Lcom/dreamplug/fabrik/ui/control/CardDetails;Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/SwipeActions;Lcom/dreamplug/fabrik/ui/control/ControlMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v13, v11, v15, v14}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;-><init>(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V

    invoke-virtual {v12, v13}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_9
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v2, :cond_a

    .line 61
    iget-object v2, v0, Lo/onRangeChanged$ICustomTabsCallback;->onPostMessage:Lo/onRangeChanged;

    .line 16031
    iget-object v2, v2, Lo/onRangeChanged;->extraCallback:Lo/setActive;

    .line 61
    new-instance v3, Lo/throwIfInMutationOperation;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 62
    sget-object v5, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 17014
    iget-object v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 18014
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 62
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    invoke-static/range {v5 .. v11}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_a
    return-void
.end method
