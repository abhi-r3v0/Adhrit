.class public final Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;",
        "",
        "paymentData",
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;",
        "paymentItem",
        "Lcom/dreamplug/androidapp/payments/model/PaymentItem;",
        "cardDetails",
        "Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
        "(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V",
        "getCardDetails",
        "()Lcom/dreamplug/fabrik/ui/control/CardTemplateData;",
        "setCardDetails",
        "(Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V",
        "getPaymentData",
        "()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;",
        "setPaymentData",
        "(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;)V",
        "getPaymentItem",
        "()Lcom/dreamplug/androidapp/payments/model/PaymentItem;",
        "setPaymentItem",
        "(Lcom/dreamplug/androidapp/payments/model/PaymentItem;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

.field private paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

.field private paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;


# direct methods
.method public constructor <init>(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V
    .locals 1

    const-string v0, "paymentData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    iput-object p2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    iput-object p3, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;ILjava/lang/Object;)Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->copy(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    return-object v0
.end method

.method public final component2()Lcom/dreamplug/androidapp/payments/model/PaymentItem;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/fabrik/ui/control/CardTemplateData;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    return-object v0
.end method

.method public final copy(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;
    .locals 1

    const-string v0, "paymentData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;-><init>(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Lcom/dreamplug/androidapp/payments/model/PaymentItem;Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCardDetails()Lcom/dreamplug/fabrik/ui/control/CardTemplateData;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    return-object v0
.end method

.method public final getPaymentData()Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    return-object v0
.end method

.method public final getPaymentItem()Lcom/dreamplug/androidapp/payments/model/PaymentItem;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCardDetails(Lcom/dreamplug/fabrik/ui/control/CardTemplateData;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    return-void
.end method

.method public final setPaymentData(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    return-void
.end method

.method public final setPaymentItem(Lcom/dreamplug/androidapp/payments/model/PaymentItem;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPayment(paymentData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentData:Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->paymentItem:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/ControlPayment;->cardDetails:Lcom/dreamplug/fabrik/ui/control/CardTemplateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
