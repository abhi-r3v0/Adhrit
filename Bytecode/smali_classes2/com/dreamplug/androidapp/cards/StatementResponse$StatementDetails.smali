.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
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
    name = "StatementDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
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
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0005()*+,B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u000bH\u00c6\u0003J\t\u0010 \u001a\u00020\rH\u00c6\u0003JE\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020&H\u00d6\u0001J\t\u0010\'\u001a\u00020\u000bH\u00d6\u0001R\u0016\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006-"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
        "",
        "dues",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;",
        "pastDues",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;",
        "cardLimits",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;",
        "transactions",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;",
        "statementDate",
        "",
        "accountSummary",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;",
        "(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;)V",
        "getAccountSummary",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;",
        "getCardLimits",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;",
        "getDues",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;",
        "getPastDues",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;",
        "getStatementDate",
        "()Ljava/lang/String;",
        "getTransactions",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "AccountSummary",
        "CardLimits",
        "Dues",
        "PastDues",
        "Transactions",
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
.field private final accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "account_summary"
    .end annotation
.end field

.field private final cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "card_limits"
    .end annotation
.end field

.field private final dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "dues"
    .end annotation
.end field

.field private final pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "past_dues"
    .end annotation
.end field

.field private final statementDate:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "statement_date"
    .end annotation
.end field

.field private final transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "transactions"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;)V
    .locals 1

    const-string v0, "dues"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pastDues"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLimits"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactions"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statementDate"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSummary"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    iput-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    iput-object p4, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    iput-object p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->copy(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    return-object v0
.end method

.method public final component2()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    return-object v0
.end method

.method public final component4()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    return-object v0
.end method

.method public final copy(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;)Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
    .locals 8

    const-string v0, "dues"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pastDues"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLimits"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactions"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statementDate"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSummary"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;-><init>(Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

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

.method public final getAccountSummary()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    return-object v0
.end method

.method public final getCardLimits()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    return-object v0
.end method

.method public final getDues()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    return-object v0
.end method

.method public final getPastDues()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    return-object v0
.end method

.method public final getStatementDate()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransactions()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatementDetails(dues="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->dues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Dues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pastDues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->pastDues:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$PastDues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardLimits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->cardLimits:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$CardLimits;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->transactions:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$Transactions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->statementDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;->accountSummary:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails$AccountSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
