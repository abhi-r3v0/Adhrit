.class public final Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "booleanAdapter",
        "",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableBooleanAdapter",
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
            "Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
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
    .locals 14

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "visa_checkout_enabled"

    const-string v2, "expiry_required"

    const-string v3, "card_exp_month"

    const-string v4, "card_exp_year"

    const-string v5, "card_token"

    const-string v6, "instrument_id"

    const-string v7, "payment_method"

    const-string v8, "payment_sub_method"

    const-string v9, "card_brand"

    const-string v10, "cvv"

    const-string v11, "cardNumber"

    const-string v12, "name"

    const-string v13, "userConsentToEnroll"

    .line 26
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"v\u2026   \"userConsentToEnroll\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 29
    const-class v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "visaCheckoutEnabled"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Boolean::c\u2026), \"visaCheckoutEnabled\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "cardExpMonth"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026ptySet(), \"cardExpMonth\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 34
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "userConsentToEnroll"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Boolean::c\u2026   \"userConsentToEnroll\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1130
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "visa_checkout_enabled"

    .line 1131
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1132
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 1195
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->onNavigationEvent:Ljava/lang/Boolean;

    .line 1132
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "expiry_required"

    .line 1133
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1134
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 1197
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 1134
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_month"

    .line 1135
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1136
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1199
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->onPostMessage:Ljava/lang/String;

    .line 1136
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_year"

    .line 1137
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1138
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1201
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 1138
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_token"

    .line 1139
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1140
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1203
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->extraCallback:Ljava/lang/String;

    .line 1140
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "instrument_id"

    .line 1141
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1142
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1205
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->asInterface:Ljava/lang/String;

    .line 1142
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_method"

    .line 1143
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1144
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1207
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->asBinder:Ljava/lang/String;

    .line 1144
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_sub_method"

    .line 1145
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1146
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1209
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->onTransact:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_brand"

    .line 1147
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1148
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1211
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1148
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cvv"

    .line 1149
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1150
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1213
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1150
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cardNumber"

    .line 1151
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1152
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1214
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1152
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name"

    .line 1153
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1154
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1215
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->ICustomTabsService:Ljava/lang/String;

    .line 1154
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "userConsentToEnroll"

    .line 1155
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1156
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    .line 1216
    iget-boolean p2, p2, Lcom/cred/pay/repository/models/checkout/InstrumentAction;->getInterfaceDescriptor:Z

    .line 1156
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1157
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1128
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1058
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

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

    .line 1059
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1060
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v3}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1086
    :pswitch_0
    iget-object v2, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1087
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    and-int/lit16 v4, v4, -0x1001

    goto :goto_0

    :cond_0
    const-string v2, "userConsentToEnroll"

    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"use\u2026ConsentToEnroll\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1081
    :pswitch_1
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    and-int/lit16 v4, v4, -0x801

    goto :goto_0

    .line 1076
    :pswitch_2
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    and-int/lit16 v4, v4, -0x401

    goto :goto_0

    .line 1071
    :pswitch_3
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    and-int/lit16 v4, v4, -0x201

    goto :goto_0

    .line 1069
    :pswitch_4
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    goto :goto_0

    .line 1068
    :pswitch_5
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    goto :goto_0

    .line 1067
    :pswitch_6
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 1066
    :pswitch_7
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1065
    :pswitch_8
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    .line 1064
    :pswitch_9
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    .line 1063
    :pswitch_a
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 1062
    :pswitch_b
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1061
    :pswitch_c
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1093
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1094
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1098
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1100
    iget-object v1, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v18, 0xd

    const/16 v19, 0xc

    const/16 v20, 0xb

    const/16 v21, 0xa

    const/16 v22, 0x9

    const/16 v23, 0x8

    const/16 v24, 0x7

    const/16 v25, 0x6

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/16 v28, 0x3

    const/16 v29, 0x2

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v3, 0xf

    if-nez v1, :cond_2

    .line 1101
    const-class v1, Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    move/from16 v32, v4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v33, Ljava/lang/Boolean;

    aput-object v33, v4, v31

    .line 1102
    const-class v33, Ljava/lang/Boolean;

    aput-object v33, v4, v30

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v29

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v28

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v27

    .line 1103
    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v26

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v25

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v24

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v23

    .line 1104
    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v22

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v21

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v20

    .line 1105
    sget-object v33, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v33, v4, v19

    sget-object v33, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v33, v4, v18

    .line 1106
    sget-object v33, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v34, 0xe

    aput-object v33, v4, v34

    .line 1101
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1106
    iput-object v1, v0, Lcom/cred/pay/repository/models/checkout/InstrumentActionJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v4, "InstrumentAction::class.\u2026his.constructorRef = it }"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move/from16 v32, v4

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v31

    aput-object v6, v3, v30

    aput-object v7, v3, v29

    aput-object v8, v3, v28

    aput-object v9, v3, v27

    aput-object v10, v3, v26

    aput-object v11, v3, v25

    aput-object v12, v3, v24

    aput-object v13, v3, v23

    aput-object v14, v3, v22

    aput-object v15, v3, v21

    aput-object v16, v3, v20

    aput-object v2, v3, v19

    .line 1121
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    const/16 v2, 0xe

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1107
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(InstrumentAction)"

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
