.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
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
    name = "CardLimits"
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;",
        "",
        "totalCreditLimit",
        "",
        "availableCashLimit",
        "availableCreditLimit",
        "(DDD)V",
        "getAvailableCashLimit",
        "()D",
        "getAvailableCreditLimit",
        "getTotalCreditLimit",
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


# instance fields
.field private final availableCashLimit:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "available_cash_limit"
    .end annotation
.end field

.field private final availableCreditLimit:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "available_credit_limit"
    .end annotation
.end field

.field private final totalCreditLimit:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "total_credit_limit"
    .end annotation
.end field


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    iput-wide p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    iput-wide p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;DDDILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-wide p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    :cond_2
    move-wide v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->copy(DDD)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    return-wide v0
.end method

.method public final copy(DDD)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
    .locals 8

    new-instance v7, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;-><init>(DDD)V

    return-object v7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

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

.method public final getAvailableCashLimit()D
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    return-wide v0
.end method

.method public final getAvailableCreditLimit()D
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    return-wide v0
.end method

.method public final getTotalCreditLimit()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    .line 1025
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    .line 2025
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    .line 3025
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

    const-string v1, "CardLimits(totalCreditLimit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->totalCreditLimit:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", availableCashLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCashLimit:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", availableCreditLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;->availableCreditLimit:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
