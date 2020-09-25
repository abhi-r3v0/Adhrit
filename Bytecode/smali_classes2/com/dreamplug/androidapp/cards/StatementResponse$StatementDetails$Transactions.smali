.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
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
    name = "Transactions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0002\u0010\u0007J\u000f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u00c6\u0003J)\u0010\r\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;",
        "",
        "domesticTransactions",
        "",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
        "internationalTransactions",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getDomesticTransactions",
        "()Ljava/util/List;",
        "getInternationalTransactions",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "DomesticTransaction",
        "InternationalTransaction",
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
.field private final domesticTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "domestic_transactions"
    .end annotation
.end field

.field private final internationalTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "international_transactions"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "domesticTransactions"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internationalTransactions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->copy(Ljava/util/List;Ljava/util/List;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;",
            ">;)",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;"
        }
    .end annotation

    const-string v0, "domesticTransactions"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internationalTransactions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

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

.method public final getDomesticTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$DomesticTransaction;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    return-object v0
.end method

.method public final getInternationalTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions$InternationalTransaction;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transactions(domesticTransactions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->domesticTransactions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internationalTransactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;->internationalTransactions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
