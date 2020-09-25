.class public Lcom/dreamplug/androidapp/payments/model/DPBillResponse;
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

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "created_at"
    .end annotation
.end field

.field private endUrl:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "end_url"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "id"
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/Item;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "items"
    .end annotation
.end field

.field private netInrPayableAmount:Ljava/lang/Double;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "net_inr_payable_amount"
    .end annotation
.end field

.field public paymentBlocked:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "payment_blocked"
    .end annotation
.end field

.field private payments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/Payment;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "payments"
    .end annotation
.end field

.field private preferredBanks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "preferred_banks"
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
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->items:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->payments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Double;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getEndUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->endUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/Item;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public getNetInrPayableAmount()Ljava/lang/Double;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->netInrPayableAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/Payment;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->payments:Ljava/util/List;

    return-object v0
.end method

.method public getPreferredBanks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->preferredBanks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->amount:Ljava/lang/Double;

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->items:Ljava/util/List;

    return-void
.end method

.method public setNetInrPayableAmount(Ljava/lang/Double;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->netInrPayableAmount:Ljava/lang/Double;

    return-void
.end method

.method public setPayments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/Payment;",
            ">;)V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->payments:Ljava/util/List;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->updatedAt:Ljava/lang/String;

    return-void
.end method
