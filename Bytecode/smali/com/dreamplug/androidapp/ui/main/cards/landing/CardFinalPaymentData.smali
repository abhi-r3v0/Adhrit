.class public final Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J>\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\u0012\u0010\n\"\u0004\u0008\u0013\u0010\u000cR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\u0014\u0010\n\"\u0004\u0008\u0015\u0010\u000c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;",
        "",
        "totalDue",
        "",
        "minDue",
        "totalPaid",
        "statementDate",
        "",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V",
        "getMinDue",
        "()Ljava/lang/Double;",
        "setMinDue",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "getStatementDate",
        "()Ljava/lang/String;",
        "setStatementDate",
        "(Ljava/lang/String;)V",
        "getTotalDue",
        "setTotalDue",
        "getTotalPaid",
        "setTotalPaid",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;",
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
.field private minDue:Ljava/lang/Double;

.field private statementDate:Ljava/lang/String;

.field private totalDue:Ljava/lang/Double;

.field private totalPaid:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    iput-object p2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    iput-object p3, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    iput-object p4, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const-wide/16 v0, 0x0

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;ILjava/lang/Object;)Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;
    .locals 1

    new-instance v0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    iget-object v1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

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

.method public final getMinDue()Ljava/lang/Double;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStatementDate()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalDue()Ljava/lang/Double;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTotalPaid()Ljava/lang/Double;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setMinDue(Ljava/lang/Double;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    return-void
.end method

.method public final setStatementDate(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    return-void
.end method

.method public final setTotalDue(Ljava/lang/Double;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    return-void
.end method

.method public final setTotalPaid(Ljava/lang/Double;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardFinalPaymentData(totalDue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalDue:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minDue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->minDue:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalPaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->totalPaid:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/ui/main/cards/landing/CardFinalPaymentData;->statementDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
