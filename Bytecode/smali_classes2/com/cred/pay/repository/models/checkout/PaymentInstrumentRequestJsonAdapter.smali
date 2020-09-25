.class public final Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\tH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
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
.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;",
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
    .locals 11

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "card_exp_month"

    const-string v2, "card_exp_year"

    const-string v3, "card_token"

    const-string v4, "cvv"

    const-string v5, "instrument_id"

    const-string v6, "payment_sub_method"

    const-string v7, "payment_method"

    const-string v8, "card_number"

    const-string v9, "name_on_card"

    const-string v10, "auth_type"

    .line 24
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026me_on_card\", \"auth_type\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 26
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "cardExpMonth"

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026ptySet(), \"cardExpMonth\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1131
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "card_exp_month"

    .line 1132
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1133
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2046
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onPostMessage:Ljava/lang/String;

    .line 1133
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_year"

    .line 1134
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1135
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2048
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onNavigationEvent:Ljava/lang/String;

    .line 1135
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_token"

    .line 1136
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1137
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2050
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->extraCallback:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cvv"

    .line 1138
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1139
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2052
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->ICustomTabsCallback:Ljava/lang/String;

    .line 1139
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "instrument_id"

    .line 1140
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1141
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2054
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onMessageChannelReady:Ljava/lang/String;

    .line 1141
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_sub_method"

    .line 1142
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1143
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2056
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onTransact:Ljava/lang/String;

    .line 1143
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_method"

    .line 1144
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1145
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2058
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->asInterface:Ljava/lang/String;

    .line 1145
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_number"

    .line 1146
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1147
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2060
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name_on_card"

    .line 1148
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1149
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2062
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->asBinder:Ljava/lang/String;

    .line 1149
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "auth_type"

    .line 1150
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1151
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2064
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1151
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1152
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1129
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1048
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1049
    iget-object v14, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v14}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 1092
    :pswitch_0
    iget-object v13, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v13, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    and-int/lit16 v3, v3, -0x201

    goto :goto_0

    .line 1087
    :pswitch_1
    iget-object v12, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v12, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    and-int/lit16 v3, v3, -0x101

    goto :goto_0

    .line 1082
    :pswitch_2
    iget-object v11, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v11, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    and-int/lit16 v3, v3, -0x81

    goto :goto_0

    .line 1080
    :pswitch_3
    iget-object v10, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v10, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1076
    :pswitch_4
    iget-object v9, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v9, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x21

    goto :goto_0

    .line 1071
    :pswitch_5
    iget-object v8, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x11

    goto :goto_0

    .line 1066
    :pswitch_6
    iget-object v7, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x9

    goto :goto_0

    .line 1061
    :pswitch_7
    iget-object v6, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x5

    goto :goto_0

    .line 1056
    :pswitch_8
    iget-object v5, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x3

    goto :goto_0

    .line 1051
    :pswitch_9
    iget-object v4, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v4, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x2

    goto :goto_0

    .line 1098
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1099
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1103
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1105
    iget-object v1, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v15, 0xa

    const/16 v16, 0x9

    const/16 v17, 0x8

    const/16 v18, 0x7

    const/16 v19, 0x6

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v2, 0xc

    if-nez v1, :cond_1

    .line 1106
    const-class v1, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    new-array v14, v2, [Ljava/lang/Class;

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v25

    .line 1107
    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v24

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v23

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v22

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v21

    .line 1108
    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v20

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v19

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v18

    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v17

    .line 1109
    const-class v26, Ljava/lang/String;

    aput-object v26, v14, v16

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v14, v15

    sget-object v26, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v27, 0xb

    aput-object v26, v14, v27

    .line 1106
    invoke-virtual {v1, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1110
    iput-object v1, v0, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequestJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v14, "PaymentInstrumentRequest\u2026his.constructorRef = it }"

    .line 1109
    invoke-static {v1, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v25

    aput-object v5, v2, v24

    aput-object v6, v2, v23

    aput-object v7, v2, v22

    aput-object v8, v2, v21

    aput-object v9, v2, v20

    aput-object v10, v2, v19

    aput-object v11, v2, v18

    aput-object v12, v2, v17

    aput-object v13, v2, v16

    .line 1122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v15

    const/16 v3, 0xb

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1111
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/checkout/PaymentInstrumentRequest;

    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(PaymentInstrumentRequest)"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
