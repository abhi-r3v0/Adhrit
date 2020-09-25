.class public Lcom/dreamplug/androidapp/payments/model/Payment;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private amount:Ljava/lang/Double;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "amount"
    .end annotation
.end field

.field private amountRefunded:Ljava/lang/Double;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "amount_refunded"
    .end annotation
.end field

.field private attributes:Lcom/dreamplug/androidapp/payments/model/Attributes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "attributes"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "created_at"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "currency"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "id"
    .end annotation
.end field

.field private referenceId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "reference_id"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "status"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Double;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getAmountRefunded()Ljava/lang/Double;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->amountRefunded:Ljava/lang/Double;

    return-object v0
.end method

.method public getAttributes()Lcom/dreamplug/androidapp/payments/model/Attributes;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->attributes:Lcom/dreamplug/androidapp/payments/model/Attributes;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->amount:Ljava/lang/Double;

    return-void
.end method

.method public setAmountRefunded(Ljava/lang/Double;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->amountRefunded:Ljava/lang/Double;

    return-void
.end method

.method public setAttributes(Lcom/dreamplug/androidapp/payments/model/Attributes;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->attributes:Lcom/dreamplug/androidapp/payments/model/Attributes;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->currency:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->id:Ljava/lang/String;

    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->referenceId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->status:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Payment;->updatedAt:Ljava/lang/String;

    return-void
.end method
