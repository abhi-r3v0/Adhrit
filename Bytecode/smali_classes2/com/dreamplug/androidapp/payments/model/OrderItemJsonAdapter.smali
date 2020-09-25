.class public final Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\tH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableDoubleAdapter",
        "",
        "nullableStringAdapter",
        "",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "stringAdapter",
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
.field private final nullableDoubleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
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

.field private final stringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "id"

    const-string v4, "reference_id"

    const-string v5, "card_reference"

    const-string v6, "card_number"

    const-string v7, "payment_instrument_id"

    const-string v8, "type"

    const-string v9, "brand"

    const-string v10, "amount"

    const-string v11, "bank_code"

    const-string v12, "status"

    const-string v13, "issuer"

    const-string v14, "issuer_code"

    const-string v15, "created_at"

    const-string v16, "promise_date"

    .line 22
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"i\u2026ated_at\", \"promise_date\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 24
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "id"

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026, emptySet(),\n      \"id\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 27
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "reference_id"

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026ptySet(), \"reference_id\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "amount"

    .line 31
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Double::cl\u2026pe, emptySet(), \"amount\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/androidapp/payments/model/OrderItem;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1098
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "id"

    .line 1099
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1100
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "reference_id"

    .line 1101
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1102
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getReference_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_reference"

    .line 1103
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1104
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getCard_reference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_number"

    .line 1105
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1106
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getCard_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_instrument_id"

    .line 1107
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1108
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getPayment_instrument_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1109
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1110
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "brand"

    .line 1111
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1112
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "amount"

    .line 1113
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1114
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getAmount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bank_code"

    .line 1115
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1116
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getBank_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "status"

    .line 1117
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1118
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "issuer"

    .line 1119
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1120
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getIssuer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "issuer_code"

    .line 1121
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1122
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "created_at"

    .line 1123
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1124
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getCreated_at()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "promise_date"

    .line 1125
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1126
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {p2}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getPromise_date()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1096
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

    .line 17
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
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

    .line 1052
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    const-string v3, "id"

    if-eqz v2, :cond_1

    .line 1053
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1067
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    goto :goto_0

    .line 1066
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto :goto_0

    .line 1065
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_0

    .line 1064
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto :goto_0

    .line 1063
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto :goto_0

    .line 1062
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    goto :goto_0

    .line 1061
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/Double;

    goto :goto_0

    .line 1060
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1059
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    .line 1058
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    .line 1057
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 1056
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 1055
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 1054
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v3, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"id\", \"id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1070
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1071
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1075
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1076
    new-instance v2, Lcom/dreamplug/androidapp/payments/model/OrderItem;

    if-eqz v4, :cond_2

    move-object v3, v2

    invoke-direct/range {v3 .. v17}, Lcom/dreamplug/androidapp/payments/model/OrderItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 1077
    :cond_2
    invoke-static {v3, v3, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"id\", \"id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    nop

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

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(OrderItem)"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
