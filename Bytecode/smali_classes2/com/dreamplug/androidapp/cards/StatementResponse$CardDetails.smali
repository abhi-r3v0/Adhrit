.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/cards/StatementResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;
    }
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001aB\'\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
        "",
        "cardType",
        "",
        "cardExpiry",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;",
        "cardNumber",
        "cardCurrency",
        "(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;Ljava/lang/String;Ljava/lang/String;)V",
        "getCardCurrency",
        "()Ljava/lang/String;",
        "getCardExpiry",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;",
        "getCardNumber",
        "getCardType",
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
        "CardExpiry",
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
.field private final cardCurrency:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "card_currency"
    .end annotation
.end field

.field private final cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "card_expiry"
    .end annotation
.end field

.field private final cardNumber:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "card_number"
    .end annotation
.end field

.field private final cardType:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "card_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardExpiry"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumber"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardCurrency"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    iput-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->copy(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;Ljava/lang/String;Ljava/lang/String;)Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;Ljava/lang/String;Ljava/lang/String;)Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;
    .locals 1

    const-string v0, "cardExpiry"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardNumber"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardCurrency"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;-><init>(Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

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

.method public final getCardCurrency()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardExpiry()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    return-object v0
.end method

.method public final getCardNumber()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getCardType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

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

    const-string v1, "CardDetails(cardType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardExpiry:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails$CardExpiry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cardCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;->cardCurrency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
