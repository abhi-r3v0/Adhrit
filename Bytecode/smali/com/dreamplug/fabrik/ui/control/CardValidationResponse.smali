.class public final Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tH\u00c6\u0003J7\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;",
        "",
        "id",
        "",
        "invalidPaymentAmount",
        "Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;",
        "cashback_disabled",
        "Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;",
        "supported",
        "Lcom/dreamplug/fabrik/ui/control/Supported;",
        "(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Lcom/dreamplug/fabrik/ui/control/Supported;)V",
        "getCashback_disabled",
        "()Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;",
        "getId",
        "()Ljava/lang/String;",
        "getInvalidPaymentAmount",
        "()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;",
        "getSupported",
        "()Lcom/dreamplug/fabrik/ui/control/Supported;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

.field private final id:Ljava/lang/String;

.field private final invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

.field private final supported:Lcom/dreamplug/fabrik/ui/control/Supported;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Lcom/dreamplug/fabrik/ui/control/Supported;)V
    .locals 1
    .param p2    # Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "invalid_payment_amount"
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    iput-object p4, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Lcom/dreamplug/fabrik/ui/control/Supported;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->copy(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Lcom/dreamplug/fabrik/ui/control/Supported;)Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    return-object v0
.end method

.method public final component4()Lcom/dreamplug/fabrik/ui/control/Supported;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Lcom/dreamplug/fabrik/ui/control/Supported;)Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;
    .locals 1
    .param p2    # Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "invalid_payment_amount"
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;Lcom/dreamplug/fabrik/ui/control/Supported;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

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

.method public final getCashback_disabled()Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInvalidPaymentAmount()Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    return-object v0
.end method

.method public final getSupported()Lcom/dreamplug/fabrik/ui/control/Supported;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardValidationResponse(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", invalidPaymentAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->invalidPaymentAmount:Lcom/dreamplug/fabrik/ui/control/InvalidPaymentAmount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cashback_disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->cashback_disabled:Lcom/dreamplug/fabrik/ui/control/CashBackDisabled;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/control/CardValidationResponse;->supported:Lcom/dreamplug/fabrik/ui/control/Supported;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
