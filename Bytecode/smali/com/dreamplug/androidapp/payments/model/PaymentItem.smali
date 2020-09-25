.class public final Lcom/dreamplug/androidapp/payments/model/PaymentItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\u0008\u0007\u0018\u00002\u00020\u0001BY\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\rR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u0017\u0010\u000f\"\u0004\u0008\u0018\u0010\u0011R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014\"\u0004\u0008\u001a\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0014\"\u0004\u0008\"\u0010\u0016R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008#\u0010\u000f\"\u0004\u0008$\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/model/PaymentItem;",
        "",
        "minAmount",
        "",
        "totalAmount",
        "customAmount",
        "dueDateText",
        "",
        "paymentMode",
        "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
        "paymentDueDateWeaklyTyped",
        "paymentAmountTitle",
        "source",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCustomAmount",
        "()Ljava/lang/Double;",
        "setCustomAmount",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getDueDateText",
        "()Ljava/lang/String;",
        "setDueDateText",
        "(Ljava/lang/String;)V",
        "getMinAmount",
        "setMinAmount",
        "getPaymentAmountTitle",
        "setPaymentAmountTitle",
        "getPaymentDueDateWeaklyTyped",
        "setPaymentDueDateWeaklyTyped",
        "getPaymentMode",
        "()Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
        "setPaymentMode",
        "(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V",
        "getSource",
        "setSource",
        "getTotalAmount",
        "setTotalAmount",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private customAmount:Ljava/lang/Double;

.field private dueDateText:Ljava/lang/String;

.field private minAmount:Ljava/lang/Double;

.field private paymentAmountTitle:Ljava/lang/String;

.field private paymentDueDateWeaklyTyped:Ljava/lang/String;

.field private paymentMode:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

.field private source:Ljava/lang/String;

.field private totalAmount:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "paymentMode"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->minAmount:Ljava/lang/Double;

    iput-object p2, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->totalAmount:Ljava/lang/Double;

    iput-object p3, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->customAmount:Ljava/lang/Double;

    iput-object p4, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->dueDateText:Ljava/lang/String;

    iput-object p5, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentMode:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iput-object p6, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentDueDateWeaklyTyped:Ljava/lang/String;

    iput-object p7, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentAmountTitle:Ljava/lang/String;

    iput-object p8, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->source:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 20
    invoke-direct/range {v3 .. v11}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCustomAmount()Ljava/lang/Double;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->customAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getDueDateText()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->dueDateText:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinAmount()Ljava/lang/Double;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->minAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public final getPaymentAmountTitle()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentAmountTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentDueDateWeaklyTyped()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentDueDateWeaklyTyped:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentMode:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalAmount()Ljava/lang/Double;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->totalAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public final setCustomAmount(Ljava/lang/Double;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->customAmount:Ljava/lang/Double;

    return-void
.end method

.method public final setDueDateText(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->dueDateText:Ljava/lang/String;

    return-void
.end method

.method public final setMinAmount(Ljava/lang/Double;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->minAmount:Ljava/lang/Double;

    return-void
.end method

.method public final setPaymentAmountTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentAmountTitle:Ljava/lang/String;

    return-void
.end method

.method public final setPaymentDueDateWeaklyTyped(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentDueDateWeaklyTyped:Ljava/lang/String;

    return-void
.end method

.method public final setPaymentMode(Lcom/dreamplug/androidapp/onboarding/PaymentMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->paymentMode:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->source:Ljava/lang/String;

    return-void
.end method

.method public final setTotalAmount(Ljava/lang/Double;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->totalAmount:Ljava/lang/Double;

    return-void
.end method
