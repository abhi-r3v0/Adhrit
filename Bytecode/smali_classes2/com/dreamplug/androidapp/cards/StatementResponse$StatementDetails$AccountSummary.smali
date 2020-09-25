.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountSummary"
.end annotation

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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;",
        "",
        "financeCharges",
        "",
        "previousBalance",
        "lastPaymentReceived",
        "currentPurchaseValue",
        "(DDDD)V",
        "getCurrentPurchaseValue",
        "()D",
        "getFinanceCharges",
        "getLastPaymentReceived",
        "getPreviousBalance",
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


# instance fields
.field private final currentPurchaseValue:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "current_purchase_value"
    .end annotation
.end field

.field private final financeCharges:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "finance_charges"
    .end annotation
.end field

.field private final lastPaymentReceived:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "last_payment_received"
    .end annotation
.end field

.field private final previousBalance:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "previous_balance"
    .end annotation
.end field


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    iput-wide p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    iput-wide p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    iput-wide p7, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;DDDDILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->copy(DDDD)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    return-wide v0
.end method

.method public final copy(DDDD)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;
    .locals 10

    new-instance v9, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;-><init>(DDDD)V

    return-object v9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCurrentPurchaseValue()D
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    return-wide v0
.end method

.method public final getFinanceCharges()D
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    return-wide v0
.end method

.method public final getLastPaymentReceived()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    return-wide v0
.end method

.method public final getPreviousBalance()D
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    .line 1025
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    .line 2025
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    .line 3025
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    .line 4025
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountSummary(financeCharges="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->financeCharges:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", previousBalance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->previousBalance:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lastPaymentReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->lastPaymentReceived:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", currentPurchaseValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;->currentPurchaseValue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
