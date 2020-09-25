.class public final Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;",
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
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableBooleanAdapter",
        "",
        "nullableDoubleAdapter",
        "",
        "nullableListOfCtaAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "nullableListOfStringAdapter",
        "",
        "nullableResetExtraAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;",
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
.field private final nullableBooleanAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
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

.field private final nullableListOfCtaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
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

.field private final nullableResetExtraAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;",
            ">;"
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
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "amount"

    const-string v4, "create_new_order"

    const-string v5, "destination_instrument_id"

    const-string v6, "emi"

    const-string v7, "minimal_disbursal_amount"

    const-string v8, "order_id"

    const-string v9, "request_id"

    const-string v10, "source_instrument_id"

    const-string v11, "stash_balance_value"

    const-string v12, "collapsed"

    const-string v13, "bottom_cta"

    const-string v14, "stash_balance"

    const-string v15, "tenure"

    const-string v16, "user_id"

    const-string v17, "workflow_id"

    const-string v18, "extra"

    .line 25
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"a\u2026, \"workflow_id\", \"extra\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "amount"

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026    emptySet(), \"amount\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "create_new_order"

    .line 31
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Boolean::c\u2026et(), \"create_new_order\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 34
    const-class v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "minimal_disbursal_amount"

    .line 34
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Double::cl\u2026inimal_disbursal_amount\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 37
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

    .line 6036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    const-string v5, "collapsed"

    .line 37
    invoke-virtual {v1, v2, v4, v5}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v4, "moshi.adapter(Types.newP\u2026Set(),\n      \"collapsed\")"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 41
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    check-cast v4, Ljava/lang/reflect/Type;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "bottom_cta"

    .line 41
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Types.newP\u2026et(),\n      \"bottom_cta\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableListOfCtaAdapter:Lo/JniNativeApi;

    .line 45
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 8036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "resetExtra"

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(ResetExtra\u2026emptySet(), \"resetExtra\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableResetExtraAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1118
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "amount"

    .line 1119
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1120
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2118
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->ICustomTabsCallback:Ljava/lang/String;

    .line 1120
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "create_new_order"

    .line 1121
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1122
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 2119
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->onNavigationEvent:Ljava/lang/Boolean;

    .line 1122
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "destination_instrument_id"

    .line 1123
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1124
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2120
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->onMessageChannelReady:Ljava/lang/String;

    .line 1124
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "emi"

    .line 1125
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1126
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2121
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->extraCallback:Ljava/lang/String;

    .line 1126
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "minimal_disbursal_amount"

    .line 1127
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1128
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2122
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->onPostMessage:Ljava/lang/Double;

    .line 1128
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "order_id"

    .line 1129
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1130
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2123
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->asInterface:Ljava/lang/String;

    .line 1130
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "request_id"

    .line 1131
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1132
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2124
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1132
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "source_instrument_id"

    .line 1133
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1134
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2125
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->onTransact:Ljava/lang/String;

    .line 1134
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "stash_balance_value"

    .line 1135
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1136
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2126
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->ICustomTabsCallback$Stub:Ljava/lang/Double;

    .line 1136
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "collapsed"

    .line 1137
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1138
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 2127
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->asBinder:Ljava/util/List;

    .line 1138
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bottom_cta"

    .line 1139
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1140
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableListOfCtaAdapter:Lo/JniNativeApi;

    .line 2128
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->ICustomTabsService:Ljava/util/List;

    .line 1140
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "stash_balance"

    .line 1141
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1142
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2129
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1142
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "tenure"

    .line 1143
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1144
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2130
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1144
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "user_id"

    .line 1145
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1146
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2131
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->newSession:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "workflow_id"

    .line 1147
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1148
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2132
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->warmup:Ljava/lang/String;

    .line 1148
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "extra"

    .line 1149
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1150
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableResetExtraAdapter:Lo/JniNativeApi;

    .line 2134
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;->extraCommand:Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;

    .line 1150
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1151
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1116
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

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
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

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    .line 1068
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1085
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableResetExtraAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;

    goto :goto_0

    .line 1084
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    goto :goto_0

    .line 1083
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    goto :goto_0

    .line 1082
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto :goto_0

    .line 1081
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_0

    .line 1080
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableListOfCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/List;

    goto :goto_0

    .line 1079
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    goto :goto_0

    .line 1078
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/Double;

    goto :goto_0

    .line 1077
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 1076
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1075
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    .line 1074
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Double;

    goto/16 :goto_0

    .line 1073
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 1072
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 1071
    :pswitch_e
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1070
    :pswitch_f
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 1088
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1093
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1094
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    move-object v3, v1

    invoke-direct/range {v3 .. v19}, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/ResetExtra;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
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

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(PrefilledData)"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
