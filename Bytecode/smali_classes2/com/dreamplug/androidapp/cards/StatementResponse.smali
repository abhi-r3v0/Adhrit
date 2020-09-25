.class public final Lcom/dreamplug/androidapp/cards/StatementResponse;
.super Lo/StaggeredGridLayoutManager;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;,
        Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
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
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0006012345BW\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010\u00a2\u0006\u0002\u0010\u0013J\u000f\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0008H\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\u000cH\u00c6\u0003J\t\u0010&\u001a\u00020\u000eH\u00c6\u0003J\u0015\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010H\u00c6\u0003Ji\u0010(\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010H\u00c6\u0001J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\t\u0010-\u001a\u00020.H\u00d6\u0001J\t\u0010/\u001a\u00020\u0011H\u00d6\u0001R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\"\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u00108\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0019\u00a8\u00066"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "waivers",
        "",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
        "insights",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
        "cardDetails",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
        "userDetails",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
        "rewardDetails",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
        "statementDetails",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
        "diagnosticsReport",
        "",
        "",
        "",
        "(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;)V",
        "getCardDetails",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
        "getDiagnosticsReport",
        "()Ljava/util/Map;",
        "getInsights",
        "()Ljava/util/List;",
        "getRewardDetails",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
        "getStatementDetails",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
        "getUserDetails",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
        "getWaivers",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "CardDetails",
        "Insights",
        "RewardDetails",
        "StatementDetails",
        "UserDetails",
        "Waiver",
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
.field private final cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "card_details"
    .end annotation
.end field

.field private final diagnosticsReport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "diagnostics_report"
    .end annotation
.end field

.field private final insights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "insights"
    .end annotation
.end field

.field private final rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "reward_details"
    .end annotation
.end field

.field private final statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "statement_details"
    .end annotation
.end field

.field private final userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "user_details"
    .end annotation
.end field

.field private final waivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/computeStringSize;
        extraCallback = "waivers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
            ">;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "waivers"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardDetails"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDetails"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardDetails"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statementDetails"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnosticsReport"

    invoke-static {p7, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    iput-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    iput-object p4, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    iput-object p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    iput-object p6, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    iput-object p7, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/dreamplug/androidapp/cards/StatementResponse;->copy(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;)Lcom/dreamplug/androidapp/cards/StatementResponse;

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
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    return-object v0
.end method

.method public final component4()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    return-object v0
.end method

.method public final component5()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    return-object v0
.end method

.method public final component6()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;)Lcom/dreamplug/androidapp/cards/StatementResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
            ">;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/dreamplug/androidapp/cards/StatementResponse;"
        }
    .end annotation

    const-string v0, "waivers"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardDetails"

    move-object v4, p3

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDetails"

    move-object v5, p4

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardDetails"

    move-object v6, p5

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statementDetails"

    move-object v7, p6

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diagnosticsReport"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse;

    move-object v1, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/dreamplug/androidapp/cards/StatementResponse;-><init>(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

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

.method public final getCardDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    return-object v0
.end method

.method public final getDiagnosticsReport()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    return-object v0
.end method

.method public final getInsights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    return-object v0
.end method

.method public final getRewardDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    return-object v0
.end method

.method public final getStatementDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    return-object v0
.end method

.method public final getUserDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    return-object v0
.end method

.method public final getWaivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatementResponse(waivers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->waivers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", insights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->insights:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cardDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->cardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->userDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->rewardDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statementDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->statementDetails:Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", diagnosticsReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse;->diagnosticsReport:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
