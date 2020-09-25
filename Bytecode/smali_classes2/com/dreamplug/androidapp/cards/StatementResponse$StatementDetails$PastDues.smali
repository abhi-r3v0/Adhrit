.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;
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
    name = "PastDues"
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;",
        "",
        "minimumAmountDue",
        "",
        "(D)V",
        "getMinimumAmountDue",
        "()D",
        "component1",
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
.field private final minimumAmountDue:D
    .annotation runtime Lo/computeStringSize;
        extraCallback = "minimum_amount_due"
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;DILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->copy(D)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    return-wide v0
.end method

.method public final copy(D)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;
    .locals 1

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;-><init>(D)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

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

.method public final getMinimumAmountDue()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    .line 1025
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PastDues(minimumAmountDue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;->minimumAmountDue:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
