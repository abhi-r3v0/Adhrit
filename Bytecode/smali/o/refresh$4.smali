.class final Lo/refresh$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/refresh;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/View;Lo/refresh$onNavigationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/String;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/refresh;


# direct methods
.method constructor <init>(Lo/refresh;)V
    .locals 0

    iput-object p1, p0, Lo/refresh$4;->onNavigationEvent:Lo/refresh;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 27
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lo/refresh$4;->onNavigationEvent:Lo/refresh;

    .line 2063
    iget-object v1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    .line 2064
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v5, -0x2a45b91c

    const-string v6, "pay_total"

    const-string v7, "custom_amount_entered"

    const-string v8, ""

    const-string v9, ","

    const-string v10, "$this$toPlainNumbers"

    const-string v11, "payAmount"

    if-eq v1, v5, :cond_1e

    const v5, -0x73e8dcf

    if-eq v1, v5, :cond_1

    const v0, 0x4de25dda    # 4.74725184E8f

    if-eq v1, v0, :cond_0

    goto/16 :goto_e

    :cond_0
    const-string v0, "custom_pay_focus_acquired"

    .line 2072
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_e

    :cond_1
    const-string v1, "custom_pay_proceed_clicked"

    .line 2074
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2075
    iget-object p1, v0, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p1, :cond_25

    .line 5043
    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {p1, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6075
    invoke-static {p1, v9, v8, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2076
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 6093
    iget-object p1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz p1, :cond_25

    .line 6094
    sget-object p1, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    iget-object p1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-nez p1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    iget-object v1, v0, Lo/refresh;->onPostMessage:Ljava/lang/String;

    .line 7010
    invoke-static {p1, v1}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 6095
    iget-object v1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-nez v1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentData()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalDue()Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpg-double v1, v8, v5

    if-gez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 6097
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v7, "amount_error"

    invoke-interface {p1, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pay_custom_amount_submit"

    .line 6098
    invoke-static {v1, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    cmpl-double p1, v8, v5

    if-ltz p1, :cond_1d

    .line 6101
    iget-object p1, v0, Lo/refresh;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getInvalidPaymentAmount()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_9

    .line 7128
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getValue()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_8

    :cond_7
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMinInvalidPaymentAmount()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMinInvalidPaymentAmount()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double p1, v8, v5

    if-gez p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_b

    .line 6102
    new-instance p1, Lo/recycleData;

    iget-object v1, v0, Lo/refresh;->asInterface:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fragment.requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/refresh;->extraCallback:Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->getInvalidPaymentAmount()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;->getMessage()Ljava/lang/String;

    move-result-object v3

    :cond_a
    invoke-direct {p1, v1, v3}, Lo/recycleData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6103
    new-instance v1, Lo/refresh$onMessageChannelReady;

    invoke-direct {v1, v0}, Lo/refresh$onMessageChannelReady;-><init>(Lo/refresh;)V

    check-cast v1, Lo/getServerTime;

    .line 8021
    iput-object v1, p1, Lo/recycleData;->onPostMessage:Lo/getServerTime;

    goto/16 :goto_e

    .line 8121
    :cond_b
    iget-object p1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentDueDateWeaklyTyped()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_c
    move-object p1, v3

    :goto_4
    const-string v1, "IMMEDIATE"

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_5

    .line 9056
    :cond_d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_5
    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    if-nez p1, :cond_11

    .line 8121
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asBinder()I

    move-result p1

    sget-object v6, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    iget-object v6, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f

    if-eqz v6, :cond_e

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_e
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    move-object v6, v3

    :goto_6
    invoke-static {v6}, Lo/setPreventCornerOverlap;->onPostMessage(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_10

    goto :goto_7

    :cond_10
    if-lt p1, v6, :cond_12

    :cond_11
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-wide v6, v0, Lo/refresh;->onMessageChannelReady:D

    cmpg-double p1, v8, v6

    if-ltz p1, :cond_1b

    .line 8122
    :cond_12
    :goto_7
    iget-object p1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentDueDateWeaklyTyped()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_13
    move-object p1, v3

    :goto_8
    if-nez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_9

    .line 10056
    :cond_14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_9
    if-nez p1, :cond_18

    .line 8122
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->asBinder()I

    move-result p1

    sget-object v1, Lo/setPreventCornerOverlap;->onPostMessage:Lo/setPreventCornerOverlap;

    iget-object v1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getDueDateText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    if-eqz v1, :cond_15

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_15
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_a
    invoke-static {v3}, Lo/setPreventCornerOverlap;->onPostMessage(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_17

    goto :goto_b

    :cond_17
    if-lt p1, v1, :cond_19

    :cond_18
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-wide v5, v0, Lo/refresh;->onMessageChannelReady:D

    cmpl-double p1, v8, v5

    if-ltz p1, :cond_19

    iget-wide v5, v0, Lo/refresh;->ICustomTabsCallback:D

    cmpg-double p1, v8, v5

    if-ltz p1, :cond_1b

    :cond_19
    :goto_b
    sget-object p1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-wide v5, v0, Lo/refresh;->ICustomTabsCallback:D

    const-wide/16 v10, 0x0

    cmpl-double p1, v5, v10

    if-lez p1, :cond_1a

    .line 8123
    iget-wide v5, v0, Lo/refresh;->ICustomTabsCallback:D

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double v5, v5, v10

    cmpl-double p1, v8, v5

    if-lez p1, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    :goto_c
    if-eqz v2, :cond_1c

    .line 6108
    iget-object p1, v0, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p1, :cond_25

    new-instance v1, Lo/refresh$ICustomTabsCallback;

    invoke-direct {v1, v0, v8, v9}, Lo/refresh$ICustomTabsCallback;-><init>(Lo/refresh;D)V

    check-cast v1, Lo/getServerTime;

    invoke-virtual {p1, v4, v1}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(ZLo/getServerTime;)V

    goto/16 :goto_e

    .line 6112
    :cond_1c
    iget-object p1, v0, Lo/refresh;->onRelationshipValidationResult:Lo/refresh$onNavigationEvent;

    invoke-interface {p1, v8, v9}, Lo/refresh$onNavigationEvent;->onNavigationEvent(D)V

    goto/16 :goto_e

    .line 6115
    :cond_1d
    iget-object p1, v0, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz p1, :cond_25

    .line 10168
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->error:I

    invoke-virtual {p1, v0}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "error"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1e
    const-string v1, "custom_pay_user_interacted"

    .line 2065
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2066
    sget-object p1, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    iget-object p1, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-nez p1, :cond_1f

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1f
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object p1

    goto :goto_d

    :cond_20
    move-object p1, v3

    :goto_d
    iget-object v1, v0, Lo/refresh;->onPostMessage:Ljava/lang/String;

    .line 3010
    invoke-static {p1, v1}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2067
    iget-object v1, v0, Lo/refresh;->asBinder:Lo/AsyncListUtil$DataCallback;

    if-eqz v1, :cond_21

    .line 3043
    sget v2, Lo/getSwitchMinWidth$onPostMessage;->payAmount:I

    invoke-virtual {v1, v2}, Lo/AsyncListUtil$DataCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4075
    invoke-static {v1, v9, v8, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2067
    :cond_21
    invoke-interface {p1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    iget-object v0, v0, Lo/refresh;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-nez v0, :cond_22

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_22
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->getPaymentData()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->getTotalDue()Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pay_custom_amount_key_triggered"

    .line 2069
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_e

    :cond_23
    new-array p1, v2, [Lo/addWrite;

    .line 2083
    iget-object v0, v0, Lo/refresh;->asInterface:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 11043
    :cond_24
    new-instance v0, Lo/addWrite;

    const-string/jumbo v1, "state"

    invoke-direct {v0, v1, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    const-string v0, "pairs"

    .line 2082
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "illegal_state_payment_custom_view"

    .line 2082
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 27
    :cond_25
    :goto_e
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
