.class public final Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
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
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u0010H\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000e\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "intAdapter",
        "",
        "nullableCardLimitsAdapter",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
        "nullableDuesAdapter",
        "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;",
        "nullableMapOfStringStringAdapter",
        "",
        "",
        "nullableStringAdapter",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
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
.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;",
            ">;"
        }
    .end annotation
.end field

.field private final intAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableCardLimitsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableDuesAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableMapOfStringStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 7

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "instrument_id"

    const-string v2, "statement_date"

    const-string v3, "card_limits"

    const-string v4, "diagnostics_report"

    const-string v5, "dues"

    const-string v6, "insights_count"

    .line 25
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"i\u2026\"dues\", \"insights_count\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "instrument_id"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026tySet(), \"instrument_id\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "card_limits"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(CardAmount\u2026mptySet(), \"card_limits\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableCardLimitsAdapter:Lo/JniNativeApi;

    .line 34
    const-class v0, Ljava/util/Map;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 35
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 34
    invoke-static {v0, v1}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "diagnosticsReport"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026t(), \"diagnosticsReport\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableMapOfStringStringAdapter:Lo/JniNativeApi;

    .line 38
    const-class v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "dues"

    .line 38
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(CardAmount\u2026java, emptySet(), \"dues\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableDuesAdapter:Lo/JniNativeApi;

    .line 40
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "insightsCount"

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Int::class\u2026),\n      \"insightsCount\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->intAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 21
    check-cast p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1121
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "instrument_id"

    .line 1122
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1123
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2008
    iget-object v1, p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback:Ljava/lang/String;

    .line 1123
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "statement_date"

    .line 1124
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1125
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2009
    iget-object v1, p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onMessageChannelReady:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_limits"

    .line 1126
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1127
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableCardLimitsAdapter:Lo/JniNativeApi;

    .line 2010
    iget-object v1, p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onNavigationEvent:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    .line 1127
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "diagnostics_report"

    .line 1128
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1129
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableMapOfStringStringAdapter:Lo/JniNativeApi;

    .line 2012
    iget-object v1, p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->onPostMessage:Ljava/util/Map;

    .line 1129
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "dues"

    .line 1130
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1131
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableDuesAdapter:Lo/JniNativeApi;

    .line 2013
    iget-object v1, p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->extraCallback:Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    .line 1131
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "insights_count"

    .line 1132
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1133
    iget-object v0, p0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->intAdapter:Lo/JniNativeApi;

    .line 2014
    iget p2, p2, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;->ICustomTabsCallback$Stub:I

    .line 1133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1134
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1119
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 21
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1055
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1057
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1058
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1059
    iget-object v11, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v11}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-object v3, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->intAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    and-int/lit8 v5, v5, -0x21

    goto :goto_0

    :cond_0
    const-string v2, "insightsCount"

    const-string v3, "insights_count"

    invoke-static {v2, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ins\u2026\"insights_count\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1081
    :pswitch_1
    iget-object v10, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableDuesAdapter:Lo/JniNativeApi;

    invoke-virtual {v10, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    and-int/lit8 v5, v5, -0x11

    goto :goto_0

    .line 1076
    :pswitch_2
    iget-object v9, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableMapOfStringStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v9, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    and-int/lit8 v5, v5, -0x9

    goto :goto_0

    .line 1071
    :pswitch_3
    iget-object v8, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableCardLimitsAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    and-int/lit8 v5, v5, -0x5

    goto :goto_0

    .line 1066
    :pswitch_4
    iget-object v7, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    and-int/lit8 v5, v5, -0x3

    goto :goto_0

    .line 1061
    :pswitch_5
    iget-object v6, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    and-int/lit8 v5, v5, -0x2

    goto :goto_0

    .line 1093
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1094
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1098
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1100
    iget-object v1, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v4, 0x8

    if-nez v1, :cond_2

    .line 1101
    const-class v1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    new-array v11, v4, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    aput-object v18, v11, v2

    const-class v18, Ljava/lang/String;

    aput-object v18, v11, v17

    .line 1102
    const-class v18, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$CardLimits;

    aput-object v18, v11, v16

    const-class v18, Ljava/util/Map;

    aput-object v18, v11, v15

    const-class v18, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit$Dues;

    aput-object v18, v11, v14

    .line 1103
    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v11, v13

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v11, v12

    .line 1104
    sget-object v18, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v19, 0x7

    aput-object v18, v11, v19

    .line 1101
    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1104
    iput-object v1, v0, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimitJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v11, "CardAmountLimit::class.j\u2026his.constructorRef = it }"

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v7, v4, v17

    aput-object v8, v4, v16

    aput-object v9, v4, v15

    aput-object v10, v4, v14

    aput-object v3, v4, v13

    .line 1112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v12

    const/4 v2, 0x7

    const/4 v3, 0x0

    aput-object v3, v4, v2

    .line 1105
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/androidapp/onboarding/viewmodel/CardAmountLimit;

    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(CardAmountLimit)"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
