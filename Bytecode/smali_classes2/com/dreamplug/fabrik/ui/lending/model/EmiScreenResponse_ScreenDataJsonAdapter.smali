.class public final Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;",
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
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010 \u001a\u00020\u0014H\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00110\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00110\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableCtaAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "nullableCustomAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;",
        "nullableDoubleAdapter",
        "",
        "nullableExitIntentAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
        "nullableIntAdapter",
        "",
        "nullableListOfDataAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;",
        "nullableListOfStringAdapter",
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
.field private final nullableCtaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableCustomAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableDoubleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableExitIntentAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableIntAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableListOfDataAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableListOfStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "error_message"

    const-string v4, "exit_intent"

    const-string v5, "revised_amount"

    const-string v6, "bgCol"

    const-string v7, "cta"

    const-string v8, "header"

    const-string v9, "id"

    const-string v10, "identifier_name"

    const-string v11, "sub_title"

    const-string v12, "title"

    const-string v13, "collapsed"

    const-string v14, "tenure_information"

    const-string v15, "custom"

    const-string v16, "version"

    .line 24
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"e\u2026on\", \"custom\", \"version\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 26
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "errorMessage"

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026ptySet(), \"errorMessage\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 30
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "exitIntent"

    .line 30
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(ExitIntent\u2026emptySet(), \"exitIntent\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableExitIntentAdapter:Lo/JniNativeApi;

    .line 33
    const-class v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "revisedAmount"

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Double::cl\u2026tySet(), \"revisedAmount\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 35
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "cta"

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Cta::class\u2026 emptySet(),\n      \"cta\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    .line 38
    const-class v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "id"

    .line 38
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Int::class\u2026,\n      emptySet(), \"id\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    .line 42
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 8036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    const-string v5, "collapsed"

    .line 42
    invoke-virtual {v1, v2, v4, v5}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v4, "moshi.adapter(Types.newP\u2026Set(),\n      \"collapsed\")"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 46
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    new-array v3, v3, [Ljava/lang/reflect/Type;

    .line 47
    const-class v4, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    check-cast v4, Ljava/lang/reflect/Type;

    aput-object v4, v3, v6

    .line 46
    invoke-static {v2, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 9036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "tenureInformation"

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Types.newP\u2026t(), \"tenureInformation\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableListOfDataAdapter:Lo/JniNativeApi;

    .line 50
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 10036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "custom"

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(EmiScreenR\u2026va, emptySet(), \"custom\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableCustomAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1117
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "error_message"

    .line 1118
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1119
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2115
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onMessageChannelReady:Ljava/lang/String;

    .line 1119
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "exit_intent"

    .line 1120
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1121
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableExitIntentAdapter:Lo/JniNativeApi;

    .line 2117
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    .line 1121
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "revised_amount"

    .line 1122
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1123
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2119
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/Double;

    .line 1123
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bgCol"

    .line 1124
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1125
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2120
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cta"

    .line 1126
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1127
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    .line 2121
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    .line 1127
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "header"

    .line 1128
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1129
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2122
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asBinder:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "id"

    .line 1130
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1131
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    .line 2123
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onTransact:Ljava/lang/Integer;

    .line 1131
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "identifier_name"

    .line 1132
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1133
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2124
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1133
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "sub_title"

    .line 1134
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1135
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2125
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->asInterface:Ljava/lang/String;

    .line 1135
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "title"

    .line 1136
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1137
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2126
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "collapsed"

    .line 1138
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1139
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 2127
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->warmup:Ljava/util/List;

    .line 1139
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "tenure_information"

    .line 1140
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1141
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableListOfDataAdapter:Lo/JniNativeApi;

    .line 2129
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsService:Ljava/util/List;

    .line 1141
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "custom"

    .line 1142
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1143
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableCustomAdapter:Lo/JniNativeApi;

    .line 2130
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->newSession:Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    .line 1143
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "version"

    .line 1144
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1145
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    .line 2131
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    .line 1145
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1146
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1115
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    .line 1071
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/Integer;

    goto :goto_0

    .line 1085
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableCustomAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;

    goto :goto_0

    .line 1084
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableListOfDataAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    goto :goto_0

    .line 1083
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    goto :goto_0

    .line 1082
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto :goto_0

    .line 1081
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    goto :goto_0

    .line 1080
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 1079
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Integer;

    goto :goto_0

    .line 1078
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    .line 1077
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    goto :goto_0

    .line 1076
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1075
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Double;

    goto/16 :goto_0

    .line 1074
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableExitIntentAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;

    goto/16 :goto_0

    .line 1073
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 1089
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1090
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1094
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1095
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$ScreenData;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ExitIntent;Ljava/lang/Double;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Custom;Ljava/lang/Integer;)V

    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(EmiScreenResponse.ScreenData)"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
