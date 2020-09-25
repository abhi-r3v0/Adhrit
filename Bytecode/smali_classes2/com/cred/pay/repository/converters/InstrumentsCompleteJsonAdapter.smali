.class public final Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/converters/InstrumentsComplete;",
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u000eH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/converters/InstrumentsComplete;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableBooleanAdapter",
        "",
        "nullableListOfCredUpiInstrumentBankStatusAdapter",
        "",
        "Lcom/cred/pay/repository/models/CredUpiInstrumentBankStatus;",
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
.field private final nullableBooleanAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableListOfCredUpiInstrumentBankStatusAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/CredUpiInstrumentBankStatus;",
            ">;>;"
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
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "logo_url"

    const-string v4, "name"

    const-string v5, "package_name"

    const-string v6, "payment_sub_method"

    const-string v7, "status"

    const-string v8, "bank_logo_url"

    const-string v9, "card_brand"

    const-string v10, "card_exp_month"

    const-string v11, "card_exp_year"

    const-string v12, "card_isin"

    const-string v13, "card_issuer_name"

    const-string v14, "card_token"

    const-string v15, "card_type"

    const-string v16, "expired"

    const-string v17, "masked_card_number"

    const-string v18, "name_on_card"

    const-string v19, "network_logo_url"

    const-string v20, "nickname"

    const-string v21, "visa_checkout_enabled"

    const-string v22, "bank_code"

    const-string v23, "short_code"

    const-string v24, "user_authentication_required"

    const-string v25, "cvv"

    const-string v26, "card_number"

    const-string v27, "payer_vpa"

    const-string v28, "account_reference_id"

    const-string v29, "masked_account_number"

    const-string v30, "type"

    const-string v31, "ifsc"

    const-string v32, "bank_account_unique_id"

    const-string v33, "bank_name"

    const-string v34, "expiry_required"

    const-string v35, "text1"

    const-string v36, "text2"

    const-string v37, "image1"

    const-string v38, "last_pi_status"

    .line 30
    filled-new-array/range {v3 .. v38}, [Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"l\u2026,\n      \"last_pi_status\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 32
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "logoUrl"

    .line 32
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026   emptySet(), \"logoUrl\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 35
    const-class v2, Lcom/cred/pay/repository/models/Status;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "status"

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Status::cl\u2026    emptySet(), \"status\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 39
    const-class v2, Ljava/lang/Boolean;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "expired"

    .line 39
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Boolean::c\u2026e, emptySet(), \"expired\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 43
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    .line 44
    const-class v4, Lcom/cred/pay/repository/models/CredUpiInstrumentBankStatus;

    check-cast v4, Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 43
    invoke-static {v2, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "lastPiStatus"

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Types.newP\u2026ptySet(), \"lastPiStatus\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableListOfCredUpiInstrumentBankStatusAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1177
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "logo_url"

    .line 1178
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1179
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2042
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->onNavigationEvent:Ljava/lang/String;

    .line 1179
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name"

    .line 1180
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1181
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2044
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->onMessageChannelReady:Ljava/lang/String;

    .line 1181
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "package_name"

    .line 1182
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1183
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2046
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->ICustomTabsCallback:Ljava/lang/String;

    .line 1183
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_sub_method"

    .line 1184
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1185
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2048
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->extraCallback:Ljava/lang/String;

    .line 1185
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "status"

    .line 1186
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1187
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 2049
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->onPostMessage:Lcom/cred/pay/repository/models/Status;

    .line 1187
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bank_logo_url"

    .line 1188
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1189
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2051
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1189
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_brand"

    .line 1190
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1191
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2053
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->asInterface:Ljava/lang/String;

    .line 1191
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_month"

    .line 1192
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1193
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2055
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->onTransact:Ljava/lang/String;

    .line 1193
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_year"

    .line 1194
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1195
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2057
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->asBinder:Ljava/lang/String;

    .line 1195
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_isin"

    .line 1196
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1197
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2059
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1197
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_issuer_name"

    .line 1198
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1199
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2061
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->warmup:Ljava/lang/String;

    .line 1199
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_token"

    .line 1200
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1201
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2063
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1201
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_type"

    .line 1202
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1203
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2065
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1203
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "expired"

    .line 1204
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1205
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 2066
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->newSession:Ljava/lang/Boolean;

    .line 1205
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "masked_card_number"

    .line 1206
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1207
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2068
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->ICustomTabsService:Ljava/lang/String;

    .line 1207
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name_on_card"

    .line 1208
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1209
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2070
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->requestPostMessageChannel:Ljava/lang/String;

    .line 1209
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "network_logo_url"

    .line 1210
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1211
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2072
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->extraCommand:Ljava/lang/String;

    .line 1211
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "nickname"

    .line 1212
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1213
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2073
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->updateVisuals:Ljava/lang/String;

    .line 1213
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "visa_checkout_enabled"

    .line 1214
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1215
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 2075
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->mayLaunchUrl:Ljava/lang/Boolean;

    .line 1215
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bank_code"

    .line 1216
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1217
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2077
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->postMessage:Ljava/lang/String;

    .line 1217
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "short_code"

    .line 1218
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1219
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2079
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    .line 1219
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "user_authentication_required"

    .line 1220
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1221
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 2081
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->validateRelationship:Ljava/lang/Boolean;

    .line 1221
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cvv"

    .line 1222
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1223
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2083
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->IPostMessageService$Stub:Ljava/lang/String;

    .line 1223
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_number"

    .line 1224
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1225
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2085
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->IPostMessageService:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payer_vpa"

    .line 1226
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1227
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2087
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->ICustomTabsService$Stub:Ljava/lang/String;

    .line 1227
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "account_reference_id"

    .line 1228
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1229
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2089
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->notify:Ljava/lang/String;

    .line 1229
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "masked_account_number"

    .line 1230
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1231
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2091
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->cancelAll:Ljava/lang/String;

    .line 1231
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1232
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1233
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2093
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->INotificationSideChannel:Ljava/lang/String;

    .line 1233
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "ifsc"

    .line 1234
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1235
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2095
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->cancel:Ljava/lang/String;

    .line 1235
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bank_account_unique_id"

    .line 1236
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1237
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2097
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    .line 1237
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bank_name"

    .line 1238
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1239
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2099
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->getDefaultImpl:Ljava/lang/String;

    .line 1239
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "expiry_required"

    .line 1240
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1241
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 2101
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->INotificationSideChannel$Default:Ljava/lang/Boolean;

    .line 1241
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text1"

    .line 1242
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1243
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2103
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->INotificationSideChannel$Stub$Proxy:Ljava/lang/String;

    .line 1243
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text2"

    .line 1244
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1245
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2105
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->INotificationSideChannel$Stub:Ljava/lang/String;

    .line 1245
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "image1"

    .line 1246
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1247
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2107
    iget-object v1, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->setDefaultImpl:Ljava/lang/String;

    .line 1247
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "last_pi_status"

    .line 1248
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1249
    iget-object v0, p0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableListOfCredUpiInstrumentBankStatusAdapter:Lo/JniNativeApi;

    .line 2109
    iget-object p2, p2, Lcom/cred/pay/repository/converters/InstrumentsComplete;->read:Ljava/util/List;

    .line 1249
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1250
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1175
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
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

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v33, v32

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move-object/from16 v39, v38

    .line 1087
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1088
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1124
    :pswitch_0
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableListOfCredUpiInstrumentBankStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Ljava/util/List;

    goto :goto_0

    .line 1123
    :pswitch_1
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Ljava/lang/String;

    goto :goto_0

    .line 1122
    :pswitch_2
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Ljava/lang/String;

    goto :goto_0

    .line 1121
    :pswitch_3
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Ljava/lang/String;

    goto :goto_0

    .line 1120
    :pswitch_4
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Ljava/lang/Boolean;

    goto :goto_0

    .line 1119
    :pswitch_5
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Ljava/lang/String;

    goto :goto_0

    .line 1118
    :pswitch_6
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Ljava/lang/String;

    goto :goto_0

    .line 1117
    :pswitch_7
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Ljava/lang/String;

    goto :goto_0

    .line 1116
    :pswitch_8
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Ljava/lang/String;

    goto :goto_0

    .line 1115
    :pswitch_9
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Ljava/lang/String;

    goto :goto_0

    .line 1114
    :pswitch_a
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Ljava/lang/String;

    goto/16 :goto_0

    .line 1113
    :pswitch_b
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Ljava/lang/String;

    goto/16 :goto_0

    .line 1112
    :pswitch_c
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/String;

    goto/16 :goto_0

    .line 1111
    :pswitch_d
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    goto/16 :goto_0

    .line 1110
    :pswitch_e
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1109
    :pswitch_f
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    goto/16 :goto_0

    .line 1108
    :pswitch_10
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    goto/16 :goto_0

    .line 1107
    :pswitch_11
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1106
    :pswitch_12
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    goto/16 :goto_0

    .line 1105
    :pswitch_13
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/String;

    goto/16 :goto_0

    .line 1104
    :pswitch_14
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    goto/16 :goto_0

    .line 1103
    :pswitch_15
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    goto/16 :goto_0

    .line 1102
    :pswitch_16
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1101
    :pswitch_17
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto/16 :goto_0

    .line 1100
    :pswitch_18
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto/16 :goto_0

    .line 1099
    :pswitch_19
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto/16 :goto_0

    .line 1098
    :pswitch_1a
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto/16 :goto_0

    .line 1097
    :pswitch_1b
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    goto/16 :goto_0

    .line 1096
    :pswitch_1c
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_0

    .line 1095
    :pswitch_1d
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_0

    .line 1094
    :pswitch_1e
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    .line 1093
    :pswitch_1f
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/cred/pay/repository/models/Status;

    goto/16 :goto_0

    .line 1092
    :pswitch_20
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 1091
    :pswitch_21
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 1090
    :pswitch_22
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 1089
    :pswitch_23
    iget-object v2, v0, Lcom/cred/pay/repository/converters/InstrumentsCompleteJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 1127
    :pswitch_24
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1128
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1132
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1133
    new-instance v1, Lcom/cred/pay/repository/converters/InstrumentsComplete;

    move-object v3, v1

    invoke-direct/range {v3 .. v39}, Lcom/cred/pay/repository/converters/InstrumentsComplete;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(InstrumentsComplete)"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
