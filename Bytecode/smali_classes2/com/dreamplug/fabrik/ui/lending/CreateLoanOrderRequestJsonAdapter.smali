.class public final Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;",
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0010H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "doubleAdapter",
        "",
        "listOfItemAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/Item;",
        "listOfPaymentAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/Payment;",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "stringAdapter",
        "",
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
.field private final doubleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfItemAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listOfPaymentAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/Payment;",
            ">;>;"
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
    .locals 8

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "type"

    const-string v1, "payments"

    const-string v2, "items"

    const-string v3, "amount"

    .line 23
    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v4

    const-string v5, "JsonReader.Options.of(\"a\u2026\"payments\",\n      \"type\")"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    check-cast v4, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v5, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v5, Ljava/util/Set;

    .line 25
    invoke-virtual {p1, v4, v5, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    const-string v4, "moshi.adapter(Double::cl\u2026ptySet(),\n      \"amount\")"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    .line 29
    const-class v3, Ljava/util/List;

    check-cast v3, Ljava/lang/reflect/Type;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/reflect/Type;

    const-class v6, Lcom/dreamplug/fabrik/ui/lending/Item;

    check-cast v6, Ljava/lang/reflect/Type;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v5, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v5, Ljava/util/Set;

    .line 29
    invoke-virtual {p1, v3, v5, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Types.newP\u2026mptySet(),\n      \"items\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->listOfItemAdapter:Lo/JniNativeApi;

    .line 33
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    new-array v3, v4, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/dreamplug/fabrik/ui/lending/Payment;

    check-cast v4, Ljava/lang/reflect/Type;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 33
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Types.newP\u2026ySet(),\n      \"payments\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->listOfPaymentAdapter:Lo/JniNativeApi;

    .line 36
    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 36
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026emptySet(),\n      \"type\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 19
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1078
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "amount"

    .line 1079
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1080
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    .line 2008
    iget-wide v1, p2, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;->onPostMessage:D

    .line 1080
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "items"

    .line 1081
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1082
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->listOfItemAdapter:Lo/JniNativeApi;

    .line 2009
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;->onNavigationEvent:Ljava/util/List;

    .line 1082
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payments"

    .line 1083
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1084
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->listOfPaymentAdapter:Lo/JniNativeApi;

    .line 2010
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;->ICustomTabsCallback:Ljava/util/List;

    .line 1084
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1085
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1086
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2011
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;->onMessageChannelReady:Ljava/lang/String;

    .line 1086
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1076
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 12

    const-string v0, "reader"

    .line 19
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    .line 1048
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v1

    const-string v2, "type"

    const-string v3, "payments"

    const-string v7, "items"

    const-string v8, "amount"

    if-eqz v1, :cond_9

    .line 1049
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v1}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_8

    if-eqz v1, :cond_6

    const/4 v8, 0x1

    if-eq v1, v8, :cond_4

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v2, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"typ\u2026ype\",\n            reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1054
    :cond_2
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->listOfPaymentAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    goto :goto_0

    .line 1055
    :cond_3
    invoke-static {v3, v3, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"pay\u2026nts\", \"payments\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1052
    :cond_4
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->listOfItemAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v7, v7, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"ite\u2026         \"items\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1050
    :cond_6
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequestJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-static {v8, v8, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"amo\u2026        \"amount\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1060
    :cond_8
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1061
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1065
    :cond_9
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1066
    new-instance v9, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;

    if-eqz v0, :cond_d

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    if-eqz v4, :cond_c

    if-eqz v5, :cond_b

    if-eqz v6, :cond_a

    move-object v1, v9

    move-wide v2, v10

    .line 1066
    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lending/CreateLoanOrderRequest;-><init>(DLjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v9

    .line 1070
    :cond_a
    invoke-static {v2, v2, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"type\", \"type\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1069
    :cond_b
    invoke-static {v3, v3, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"pa\u2026nts\", \"payments\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1068
    :cond_c
    invoke-static {v7, v7, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"items\", \"items\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1067
    :cond_d
    invoke-static {v8, v8, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"amount\", \"amount\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(CreateLoanOrderRequest)"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
