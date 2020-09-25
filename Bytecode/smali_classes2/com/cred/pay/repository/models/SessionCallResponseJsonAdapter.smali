.class public final Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
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
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/SessionCallResponse;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "listOfPaymentMethodAdapter",
        "",
        "Lcom/cred/pay/repository/models/PaymentMethod;",
        "nullablePaymentConfigAdapter",
        "Lcom/cred/pay/repository/models/PaymentConfig;",
        "nullablePaymentOrderAdapter",
        "Lcom/cred/pay/repository/models/PaymentOrder;",
        "nullablePreferredInstrumentsAdapter",
        "Lcom/cred/pay/repository/models/PreferredInstruments;",
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
        "",
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
            "Lcom/cred/pay/repository/models/SessionCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfPaymentMethodAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/PaymentMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullablePaymentConfigAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/PaymentConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final nullablePaymentOrderAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/PaymentOrder;",
            ">;"
        }
    .end annotation
.end field

.field private final nullablePreferredInstrumentsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/PreferredInstruments;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 5

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "payment_methods"

    const-string v1, "suggested_pi"

    const-string v2, "order_details"

    const-string v3, "payment_config"

    const-string v4, "retry_suggested_pi"

    .line 25
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"p\u2026g\", \"retry_suggested_pi\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 28
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/cred/pay/repository/models/PaymentMethod;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "paymentMethods"

    .line 28
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026ySet(), \"paymentMethods\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->listOfPaymentMethodAdapter:Lo/JniNativeApi;

    .line 32
    const-class v0, Lcom/cred/pay/repository/models/PreferredInstruments;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "preferredInstruments"

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(PreferredI\u2026, \"preferredInstruments\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePreferredInstrumentsAdapter:Lo/JniNativeApi;

    .line 35
    const-class v0, Lcom/cred/pay/repository/models/PaymentOrder;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "paymentOrder"

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(PaymentOrd\u2026ptySet(), \"paymentOrder\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePaymentOrderAdapter:Lo/JniNativeApi;

    .line 38
    const-class v0, Lcom/cred/pay/repository/models/PaymentConfig;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "paymentConfig"

    .line 38
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(PaymentCon\u2026tySet(), \"paymentConfig\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePaymentConfigAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 21
    check-cast p2, Lcom/cred/pay/repository/models/SessionCallResponse;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1103
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "payment_methods"

    .line 1104
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1105
    iget-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->listOfPaymentMethodAdapter:Lo/JniNativeApi;

    .line 2013
    iget-object v1, p2, Lcom/cred/pay/repository/models/SessionCallResponse;->extraCallback:Ljava/util/List;

    .line 1105
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "suggested_pi"

    .line 1106
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1107
    iget-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePreferredInstrumentsAdapter:Lo/JniNativeApi;

    .line 2015
    iget-object v1, p2, Lcom/cred/pay/repository/models/SessionCallResponse;->ICustomTabsCallback:Lcom/cred/pay/repository/models/PreferredInstruments;

    .line 1107
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "order_details"

    .line 1108
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1109
    iget-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePaymentOrderAdapter:Lo/JniNativeApi;

    .line 2017
    iget-object v1, p2, Lcom/cred/pay/repository/models/SessionCallResponse;->onPostMessage:Lcom/cred/pay/repository/models/PaymentOrder;

    .line 1109
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_config"

    .line 1110
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1111
    iget-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePaymentConfigAdapter:Lo/JniNativeApi;

    .line 2019
    iget-object v1, p2, Lcom/cred/pay/repository/models/SessionCallResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/PaymentConfig;

    .line 1111
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "retry_suggested_pi"

    .line 1112
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1113
    iget-object v0, p0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePreferredInstrumentsAdapter:Lo/JniNativeApi;

    .line 2021
    iget-object p2, p2, Lcom/cred/pay/repository/models/SessionCallResponse;->onMessageChannelReady:Lcom/cred/pay/repository/models/PreferredInstruments;

    .line 1113
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1114
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1101
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 21
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1054
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v10

    const-string v11, "payment_methods"

    const-string v12, "paymentMethods"

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v3, 0x1

    if-eqz v10, :cond_7

    .line 1055
    iget-object v10, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v10}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v10

    if-eq v10, v2, :cond_6

    if-eqz v10, :cond_4

    if-eq v10, v3, :cond_3

    if-eq v10, v15, :cond_2

    if-eq v10, v14, :cond_1

    if-eq v10, v13, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v3, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePreferredInstrumentsAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/cred/pay/repository/models/PreferredInstruments;

    and-int/lit8 v5, v5, -0x11

    goto :goto_0

    .line 1065
    :cond_1
    iget-object v3, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePaymentConfigAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/cred/pay/repository/models/PaymentConfig;

    and-int/lit8 v5, v5, -0x9

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v3, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePaymentOrderAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/cred/pay/repository/models/PaymentOrder;

    and-int/lit8 v5, v5, -0x5

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v3, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->nullablePreferredInstrumentsAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/cred/pay/repository/models/PreferredInstruments;

    goto :goto_0

    .line 1056
    :cond_4
    iget-object v3, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->listOfPaymentMethodAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    goto :goto_0

    .line 1057
    :cond_5
    invoke-static {v12, v11, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"pay\u2026payment_methods\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1076
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1077
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1081
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1083
    iget-object v2, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/4 v10, 0x7

    if-nez v2, :cond_8

    .line 1084
    const-class v2, Lcom/cred/pay/repository/models/SessionCallResponse;

    new-array v13, v10, [Ljava/lang/Class;

    const-class v20, Ljava/util/List;

    aput-object v20, v13, v17

    .line 1085
    const-class v20, Lcom/cred/pay/repository/models/PreferredInstruments;

    aput-object v20, v13, v3

    const-class v20, Lcom/cred/pay/repository/models/PaymentOrder;

    aput-object v20, v13, v15

    const-class v20, Lcom/cred/pay/repository/models/PaymentConfig;

    aput-object v20, v13, v14

    .line 1086
    const-class v20, Lcom/cred/pay/repository/models/PreferredInstruments;

    const/16 v19, 0x4

    aput-object v20, v13, v19

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v13, v16

    .line 1087
    sget-object v20, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v18, 0x6

    aput-object v20, v13, v18

    .line 1084
    invoke-virtual {v2, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1087
    iput-object v2, v0, Lcom/cred/pay/repository/models/SessionCallResponseJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v13, "SessionCallResponse::cla\u2026his.constructorRef = it }"

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    new-array v10, v10, [Ljava/lang/Object;

    if-eqz v4, :cond_9

    aput-object v4, v10, v17

    aput-object v6, v10, v3

    aput-object v7, v10, v15

    aput-object v8, v10, v14

    const/4 v1, 0x4

    aput-object v9, v10, v1

    .line 1094
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v16

    const/4 v1, 0x6

    const/4 v3, 0x0

    aput-object v3, v10, v1

    .line 1088
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/SessionCallResponse;

    return-object v1

    .line 1089
    :cond_9
    invoke-static {v12, v11, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"pa\u2026payment_methods\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(SessionCallResponse)"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
