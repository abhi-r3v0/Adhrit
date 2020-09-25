.class public final Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/checkout/OfferRequest;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/checkout/OfferRequest;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableBooleanAdapter",
        "",
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
            "Lcom/cred/pay/repository/models/checkout/OfferRequest;",
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
    .locals 9

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "payment_method"

    const-string v2, "card_brand"

    const-string v3, "card_exp_month"

    const-string v4, "expiry_required"

    const-string v5, "expired"

    const-string v6, "card_exp_year"

    const-string v7, "instrument_id"

    const-string v8, "card_number"

    .line 25
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"p\u2026id\",\n      \"card_number\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "paymentMethod"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026tySet(), \"paymentMethod\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "expiryRequired"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Boolean::c\u2026ySet(), \"expiryRequired\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1124
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "payment_method"

    .line 1125
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1126
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2013
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->extraCallback:Ljava/lang/String;

    .line 1126
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_brand"

    .line 1127
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1128
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2015
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->onNavigationEvent:Ljava/lang/String;

    .line 1128
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_month"

    .line 1129
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1130
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2017
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->onMessageChannelReady:Ljava/lang/String;

    .line 1130
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "expiry_required"

    .line 1131
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1132
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 2019
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->onPostMessage:Ljava/lang/Boolean;

    .line 1132
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "expired"

    .line 1133
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1134
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2021
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->ICustomTabsCallback:Ljava/lang/String;

    .line 1134
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_exp_year"

    .line 1135
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1136
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2023
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->onTransact:Ljava/lang/String;

    .line 1136
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "instrument_id"

    .line 1137
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1138
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2025
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->asBinder:Ljava/lang/String;

    .line 1138
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_number"

    .line 1139
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1140
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2027
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/OfferRequest;->asInterface:Ljava/lang/String;

    .line 1140
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1141
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
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

    .line 1050
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1051
    iget-object v12, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v12}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_0

    .line 1088
    :pswitch_0
    iget-object v11, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v11, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    and-int/lit16 v3, v3, -0x81

    goto :goto_0

    .line 1083
    :pswitch_1
    iget-object v10, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v10, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x41

    goto :goto_0

    .line 1078
    :pswitch_2
    iget-object v9, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v9, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x21

    goto :goto_0

    .line 1073
    :pswitch_3
    iget-object v8, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x11

    goto :goto_0

    .line 1068
    :pswitch_4
    iget-object v7, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    and-int/lit8 v3, v3, -0x9

    goto :goto_0

    .line 1063
    :pswitch_5
    iget-object v6, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x5

    goto :goto_0

    .line 1058
    :pswitch_6
    iget-object v5, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x3

    goto :goto_0

    .line 1053
    :pswitch_7
    iget-object v4, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v4, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x2

    goto :goto_0

    .line 1094
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1095
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1101
    iget-object v1, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v2, 0xa

    if-nez v1, :cond_1

    .line 1102
    const-class v1, Lcom/cred/pay/repository/models/checkout/OfferRequest;

    new-array v12, v2, [Ljava/lang/Class;

    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v21

    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v20

    .line 1103
    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v19

    const-class v22, Ljava/lang/Boolean;

    aput-object v22, v12, v18

    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v17

    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v16

    .line 1104
    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v15

    const-class v22, Ljava/lang/String;

    aput-object v22, v12, v14

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v12, v13

    .line 1105
    sget-object v22, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v23, 0x9

    aput-object v22, v12, v23

    .line 1102
    invoke-virtual {v1, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1105
    iput-object v1, v0, Lcom/cred/pay/repository/models/checkout/OfferRequestJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v12, "OfferRequest::class.java\u2026his.constructorRef = it }"

    invoke-static {v1, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v21

    aput-object v5, v2, v20

    aput-object v6, v2, v19

    aput-object v7, v2, v18

    aput-object v8, v2, v17

    aput-object v9, v2, v16

    aput-object v10, v2, v15

    aput-object v11, v2, v14

    .line 1115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1106
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/checkout/OfferRequest;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(OfferRequest)"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
