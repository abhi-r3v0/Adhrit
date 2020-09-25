.class public final Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/androidapp/cards/StatementResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010!\u001a\u00020\rH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/androidapp/cards/StatementResponse;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "cardDetailsAdapter",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
        "listOfWaiverAdapter",
        "",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
        "mapOfStringDoubleAdapter",
        "",
        "",
        "",
        "nullableListOfInsightsAdapter",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "rewardDetailsAdapter",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
        "statementDetailsAdapter",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
        "userDetailsAdapter",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
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
.field private final cardDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfWaiverAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mapOfStringDoubleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableListOfInsightsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;",
            ">;>;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;

.field private final rewardDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final statementDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final userDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 8

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "waivers"

    const-string v2, "insights"

    const-string v3, "cardDetails"

    const-string v4, "userDetails"

    const-string v5, "rewardDetails"

    const-string v6, "statementDetails"

    const-string v7, "diagnosticsReport"

    .line 24
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"w\u2026ls\", \"diagnosticsReport\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 28
    const-class v3, Lcom/dreamplug/androidapp/cards/StatementResponse$Waiver;

    check-cast v3, Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 27
    invoke-static {v0, v2}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "waivers"

    .line 27
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(Types.newP\u2026), emptySet(), \"waivers\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->listOfWaiverAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 32
    const-class v3, Lcom/dreamplug/androidapp/cards/StatementResponse$Insights;

    check-cast v3, Ljava/lang/reflect/Type;

    aput-object v3, v2, v4

    .line 31
    invoke-static {v0, v2}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "insights"

    .line 31
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(Types.newP\u2026, emptySet(), \"insights\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->nullableListOfInsightsAdapter:Lo/JniNativeApi;

    .line 35
    const-class v0, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "cardDetails"

    .line 35
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(StatementR\u2026mptySet(), \"cardDetails\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->cardDetailsAdapter:Lo/JniNativeApi;

    .line 38
    const-class v0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "userDetails"

    .line 38
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(StatementR\u2026mptySet(), \"userDetails\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->userDetailsAdapter:Lo/JniNativeApi;

    .line 41
    const-class v0, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "rewardDetails"

    .line 41
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(StatementR\u2026tySet(), \"rewardDetails\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->rewardDetailsAdapter:Lo/JniNativeApi;

    .line 44
    const-class v0, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "statementDetails"

    .line 44
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(StatementR\u2026et(), \"statementDetails\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->statementDetailsAdapter:Lo/JniNativeApi;

    .line 47
    const-class v0, Ljava/util/Map;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/reflect/Type;

    aput-object v3, v2, v4

    .line 48
    const-class v3, Ljava/lang/Double;

    check-cast v3, Ljava/lang/reflect/Type;

    aput-object v3, v2, v1

    .line 47
    invoke-static {v0, v2}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 8036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "diagnosticsReport"

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Types.newP\u2026t(), \"diagnosticsReport\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->mapOfStringDoubleAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/dreamplug/androidapp/cards/StatementResponse;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1105
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "waivers"

    .line 1106
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1107
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->listOfWaiverAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getWaivers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "insights"

    .line 1108
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1109
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->nullableListOfInsightsAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getInsights()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cardDetails"

    .line 1110
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1111
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->cardDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getCardDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "userDetails"

    .line 1112
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1113
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->userDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getUserDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "rewardDetails"

    .line 1114
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1115
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->rewardDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getRewardDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "statementDetails"

    .line 1116
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1117
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->statementDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getStatementDetails()Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "diagnosticsReport"

    .line 1118
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1119
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->mapOfStringDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/cards/StatementResponse;->getDiagnosticsReport()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1120
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1103
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 14

    const-string v0, "reader"

    .line 20
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 1062
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    const-string v1, "diagnosticsReport"

    const-string v9, "statementDetails"

    const-string v10, "rewardDetails"

    const-string v11, "userDetails"

    const-string v12, "cardDetails"

    const-string v13, "waivers"

    if-eqz v0, :cond_6

    .line 1063
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1075
    :pswitch_0
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->mapOfStringDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    if-eqz v8, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    invoke-static {v1, v1, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"dia\u2026agnosticsReport\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1073
    :pswitch_1
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->statementDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1074
    :cond_1
    invoke-static {v9, v9, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"sta\u2026tatementDetails\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1071
    :pswitch_2
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->rewardDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1072
    :cond_2
    invoke-static {v10, v10, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"rew\u2026 \"rewardDetails\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1069
    :pswitch_3
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->userDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    if-eqz v5, :cond_3

    goto :goto_0

    .line 1070
    :cond_3
    invoke-static {v11, v11, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"use\u2026\", \"userDetails\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1067
    :pswitch_4
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->cardDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 1068
    :cond_4
    invoke-static {v12, v12, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"car\u2026\", \"cardDetails\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1066
    :pswitch_5
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->nullableListOfInsightsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    goto/16 :goto_0

    .line 1064
    :pswitch_6
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponseJsonAdapter;->listOfWaiverAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-static {v13, v13, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"wai\u2026       \"waivers\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1079
    :pswitch_7
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1080
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1084
    :cond_6
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1085
    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse;

    if-eqz v2, :cond_c

    if-eqz v4, :cond_b

    if-eqz v5, :cond_a

    if-eqz v6, :cond_9

    if-eqz v7, :cond_8

    if-eqz v8, :cond_7

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/dreamplug/androidapp/cards/StatementResponse;-><init>(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/cards/StatementResponse$CardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$RewardDetails;Lcom/dreamplug/androidapp/cards/StatementResponse$StatementDetails;Ljava/util/Map;)V

    return-object v0

    .line 1096
    :cond_7
    invoke-static {v1, v1, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"di\u2026agnosticsReport\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1094
    :cond_8
    invoke-static {v9, v9, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"st\u2026tatementDetails\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1092
    :cond_9
    invoke-static {v10, v10, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"re\u2026 \"rewardDetails\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1090
    :cond_a
    invoke-static {v11, v11, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"us\u2026ils\",\n            reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1088
    :cond_b
    invoke-static {v12, v12, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"ca\u2026ils\",\n            reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1086
    :cond_c
    invoke-static {v13, v13, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"waivers\", \"waivers\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(StatementResponse)"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
