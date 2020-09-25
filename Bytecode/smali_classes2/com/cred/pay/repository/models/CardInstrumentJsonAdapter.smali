.class public final Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/CardInstrument;",
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u000eH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/CardInstrument;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "booleanAdapter",
        "",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableBooleanAdapter",
        "nullableStatusAdapter",
        "Lcom/cred/pay/repository/models/Status;",
        "nullableStringAdapter",
        "",
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
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final booleanAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/cred/pay/repository/models/CardInstrument;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableBooleanAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableStatusAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/Status;",
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
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "bank_logo_url"

    const-string v4, "card_brand"

    const-string v5, "card_exp_month"

    const-string v6, "card_exp_year"

    const-string v7, "card_isin"

    const-string v8, "card_issuer_name"

    const-string v9, "card_token"

    const-string v10, "card_type"

    const-string v11, "expired"

    const-string v12, "masked_card_number"

    const-string v13, "name_on_card"

    const-string v14, "network_logo_url"

    const-string v15, "nickname"

    const-string v16, "payment_sub_method"

    const-string v17, "status"

    const-string v18, "visa_checkout_enabled"

    const-string v19, "cvv"

    const-string v20, "card_number"

    const-string v21, "showConfirmation"

    const-string v22, "expiry_required"

    const-string v23, "status"

    .line 27
    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"b\u2026piry_required\", \"status\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 29
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "bankLogoUrl"

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026mptySet(), \"bankLogoUrl\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 33
    const-class v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "expired"

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Boolean::c\u2026e, emptySet(), \"expired\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 35
    const-class v2, Lcom/cred/pay/repository/models/Status;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "instrumentStatus"

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Status::cl\u2026et(), \"instrumentStatus\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 38
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 8036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "showConfirmation"

    .line 38
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Boolean::c\u2026      \"showConfirmation\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 20
    check-cast p2, Lcom/cred/pay/repository/models/CardInstrument;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3229
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "bank_logo_url"

    .line 3230
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3231
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4096
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 3231
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_brand"

    .line 3232
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3233
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4098
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 3233
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_month"

    .line 3234
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3235
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4100
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 3235
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_year"

    .line 3236
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3237
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4102
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->onPostMessage:Ljava/lang/String;

    .line 3237
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_isin"

    .line 3238
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3239
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4104
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->extraCallback:Ljava/lang/String;

    .line 3239
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_issuer_name"

    .line 3240
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3241
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4106
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 3241
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_token"

    .line 3242
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3243
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4108
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->asInterface:Ljava/lang/String;

    .line 3243
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_type"

    .line 3244
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3245
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4110
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->onRelationshipValidationResult:Ljava/lang/String;

    .line 3245
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "expired"

    .line 3246
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3247
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 4111
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->onTransact:Ljava/lang/Boolean;

    .line 3247
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "masked_card_number"

    .line 3248
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3249
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4113
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->asBinder:Ljava/lang/String;

    .line 3249
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name_on_card"

    .line 3250
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3251
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4115
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->newSession:Ljava/lang/String;

    .line 3251
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "network_logo_url"

    .line 3252
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3253
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4117
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 3253
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "nickname"

    .line 3254
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3255
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4118
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->warmup:Ljava/lang/String;

    .line 3255
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_sub_method"

    .line 3256
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3257
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4120
    iget-object v1, p2, Lcom/cred/pay/repository/models/CardInstrument;->getInterfaceDescriptor:Ljava/lang/String;

    .line 3257
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "status"

    .line 3258
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3259
    iget-object v1, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 4122
    iget-object v2, p2, Lcom/cred/pay/repository/models/CardInstrument;->ICustomTabsService:Lcom/cred/pay/repository/models/Status;

    .line 3259
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v1, "visa_checkout_enabled"

    .line 3260
    invoke-virtual {p1, v1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3261
    iget-object v1, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 4124
    iget-object v2, p2, Lcom/cred/pay/repository/models/CardInstrument;->requestPostMessageChannel:Ljava/lang/Boolean;

    .line 3261
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v1, "cvv"

    .line 3262
    invoke-virtual {p1, v1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3263
    iget-object v1, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4126
    iget-object v2, p2, Lcom/cred/pay/repository/models/CardInstrument;->updateVisuals:Ljava/lang/String;

    .line 3263
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v1, "card_number"

    .line 3264
    invoke-virtual {p1, v1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3265
    iget-object v1, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4128
    iget-object v2, p2, Lcom/cred/pay/repository/models/CardInstrument;->postMessage:Ljava/lang/String;

    .line 3265
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v1, "showConfirmation"

    .line 3266
    invoke-virtual {p1, v1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3267
    iget-object v1, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    .line 4129
    iget-boolean v2, p2, Lcom/cred/pay/repository/models/CardInstrument;->extraCommand:Z

    .line 3267
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v1, "expiry_required"

    .line 3268
    invoke-virtual {p1, v1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3269
    iget-object v1, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 4131
    iget-object v2, p2, Lcom/cred/pay/repository/models/CardInstrument;->mayLaunchUrl:Ljava/lang/Boolean;

    .line 3269
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 3270
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3271
    iget-object v0, p0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 5008
    iget-object p2, p2, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 3271
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 3272
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 3227
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1066
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1071
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 1072
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1073
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v5}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1176
    :pswitch_0
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, Lcom/cred/pay/repository/models/Status;

    const/16 v26, 0x1

    goto :goto_0

    .line 1171
    :pswitch_1
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Ljava/lang/Boolean;

    const v5, -0x80001

    goto :goto_1

    .line 1165
    :pswitch_2
    iget-object v2, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1166
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const v5, -0x40001

    goto :goto_1

    :cond_0
    const-string v2, "showConfirmation"

    const-string v3, "showConfirmation"

    invoke-static {v2, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"sho\u2026howConfirmation\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1160
    :pswitch_3
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Ljava/lang/String;

    const v5, -0x20001

    goto :goto_1

    .line 1155
    :pswitch_4
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Ljava/lang/String;

    const v5, -0x10001

    goto :goto_1

    .line 1150
    :pswitch_5
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Ljava/lang/Boolean;

    const v5, -0x8001

    :goto_1
    and-int/2addr v6, v5

    goto :goto_0

    .line 1145
    :pswitch_6
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Lcom/cred/pay/repository/models/Status;

    and-int/lit16 v6, v6, -0x4001

    goto/16 :goto_0

    .line 1140
    :pswitch_7
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Ljava/lang/String;

    and-int/lit16 v6, v6, -0x2001

    goto/16 :goto_0

    .line 1135
    :pswitch_8
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    and-int/lit16 v6, v6, -0x1001

    goto/16 :goto_0

    .line 1130
    :pswitch_9
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    and-int/lit16 v6, v6, -0x801

    goto/16 :goto_0

    .line 1125
    :pswitch_a
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    and-int/lit16 v6, v6, -0x401

    goto/16 :goto_0

    .line 1120
    :pswitch_b
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    and-int/lit16 v6, v6, -0x201

    goto/16 :goto_0

    .line 1115
    :pswitch_c
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/Boolean;

    and-int/lit16 v6, v6, -0x101

    goto/16 :goto_0

    .line 1110
    :pswitch_d
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    and-int/lit16 v6, v6, -0x81

    goto/16 :goto_0

    .line 1105
    :pswitch_e
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x41

    goto/16 :goto_0

    .line 1100
    :pswitch_f
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x21

    goto/16 :goto_0

    .line 1095
    :pswitch_10
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x11

    goto/16 :goto_0

    .line 1090
    :pswitch_11
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x9

    goto/16 :goto_0

    .line 1085
    :pswitch_12
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x5

    goto/16 :goto_0

    .line 1080
    :pswitch_13
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x3

    goto/16 :goto_0

    .line 1075
    :pswitch_14
    iget-object v5, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    and-int/lit8 v6, v6, -0x2

    goto/16 :goto_0

    .line 1181
    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1182
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1186
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1188
    iget-object v1, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v29, 0x12

    const/16 v30, 0x11

    const/16 v31, 0x10

    const/16 v32, 0xf

    const/16 v33, 0xe

    const/16 v34, 0xd

    const/16 v35, 0xc

    const/16 v36, 0xb

    const/16 v37, 0xa

    const/16 v38, 0x9

    const/16 v39, 0x8

    const/16 v40, 0x7

    const/16 v41, 0x6

    const/16 v42, 0x5

    const/16 v43, 0x4

    const/16 v44, 0x3

    const/16 v45, 0x2

    const/16 v5, 0x16

    if-nez v1, :cond_2

    .line 1189
    const-class v1, Lcom/cred/pay/repository/models/CardInstrument;

    new-array v3, v5, [Ljava/lang/Class;

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v4

    const-class v47, Ljava/lang/String;

    const/16 v46, 0x1

    aput-object v47, v3, v46

    .line 1190
    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v45

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v44

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v43

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v42

    .line 1191
    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v41

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v40

    const-class v47, Ljava/lang/Boolean;

    aput-object v47, v3, v39

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v38

    .line 1192
    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v37

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v36

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v35

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v34

    .line 1193
    const-class v47, Lcom/cred/pay/repository/models/Status;

    aput-object v47, v3, v33

    const-class v47, Ljava/lang/Boolean;

    aput-object v47, v3, v32

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v31

    const-class v47, Ljava/lang/String;

    aput-object v47, v3, v30

    .line 1194
    sget-object v47, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v47, v3, v29

    const-class v47, Ljava/lang/Boolean;

    const/16 v48, 0x13

    aput-object v47, v3, v48

    const/16 v47, 0x14

    .line 1195
    sget-object v48, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v48, v3, v47

    const/16 v47, 0x15

    sget-object v48, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    aput-object v48, v3, v47

    .line 1189
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1196
    iput-object v1, v0, Lcom/cred/pay/repository/models/CardInstrumentJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v3, "CardInstrument::class.ja\u2026tructorRef =\n        it }"

    .line 1195
    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    aput-object v9, v3, v45

    aput-object v10, v3, v44

    aput-object v11, v3, v43

    aput-object v12, v3, v42

    aput-object v13, v3, v41

    aput-object v14, v3, v40

    aput-object v15, v3, v39

    aput-object v16, v3, v38

    aput-object v17, v3, v37

    aput-object v18, v3, v36

    aput-object v19, v3, v35

    aput-object v20, v3, v34

    aput-object v21, v3, v33

    aput-object v22, v3, v32

    aput-object v23, v3, v31

    aput-object v24, v3, v30

    aput-object v2, v3, v29

    const/16 v2, 0x13

    aput-object v25, v3, v2

    const/16 v2, 0x14

    .line 1218
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/16 v2, 0x15

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1197
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/CardInstrument;

    if-eqz v26, :cond_3

    move-object/from16 v2, v27

    goto :goto_2

    .line 2008
    :cond_3
    iget-object v2, v1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 3008
    :goto_2
    iput-object v2, v1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(CardInstrument)"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
