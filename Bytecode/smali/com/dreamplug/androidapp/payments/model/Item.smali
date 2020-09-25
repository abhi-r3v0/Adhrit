.class public Lcom/dreamplug/androidapp/payments/model/Item;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private amount:Ljava/lang/Double;

.field private bankCode:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "bank_code"
    .end annotation
.end field

.field private bin:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private instrumentId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "instrument_id"
    .end annotation
.end field

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Double;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Item;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Item;->bankCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBin()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Item;->bin:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Item;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Item;->instrumentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/Item;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Item;->amount:Ljava/lang/Double;

    return-void
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Item;->bankCode:Ljava/lang/String;

    return-void
.end method

.method public setBin(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Item;->bin:Ljava/lang/String;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Item;->brand:Ljava/lang/String;

    return-void
.end method

.method public setInstrumentId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Item;->instrumentId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/Item;->status:Ljava/lang/String;

    return-void
.end method
