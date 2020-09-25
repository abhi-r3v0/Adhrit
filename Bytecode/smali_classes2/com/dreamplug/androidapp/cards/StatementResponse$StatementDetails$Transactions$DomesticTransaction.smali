.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DomesticTransaction"
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
        "",
        "txnDate",
        "",
        "txnType",
        "txnAmount",
        "",
        "billedDate",
        "txnDescription",
        "(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V",
        "getBilledDate",
        "()Ljava/lang/String;",
        "getTxnAmount",
        "()D",
        "getTxnDate",
        "getTxnDescription",
        "getTxnType",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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


# instance fields
.field private final billedDate:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "billed_date"
    .end annotation
.end field

.field private final txnAmount:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "txn_amount"
    .end annotation
.end field

.field private final txnDate:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "txn_date"
    .end annotation
.end field

.field private final txnDescription:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "txn_description"
    .end annotation
.end field

.field private final txnType:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "txn_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "txnDate"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txnType"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billedDate"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txnDescription"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    iput-object p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-wide p5, v0

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->copy(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;
    .locals 8

    const-string v0, "txnDate"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txnType"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billedDate"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txnDescription"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

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

.method public final getBilledDate()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxnAmount()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    return-wide v0
.end method

.method public final getTxnDate()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxnDescription()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxnType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    .line 1025
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DomesticTransaction(txnDate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txnAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnAmount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", billedDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->billedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", txnDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;->txnDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
