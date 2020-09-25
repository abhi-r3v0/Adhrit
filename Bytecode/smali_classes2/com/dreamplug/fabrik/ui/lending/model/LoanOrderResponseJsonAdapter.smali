.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "attributeAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/Attribute;",
        "doubleAdapter",
        "",
        "listOfAnyAdapter",
        "",
        "",
        "listOfPaymentAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/Payment;",
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
.field private final attributeAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final doubleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final listOfAnyAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listOfPaymentAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Payment;",
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
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "amount"

    const-string v4, "attributes"

    const-string v5, "created_at"

    const-string v6, "created_by"

    const-string v7, "currency"

    const-string v8, "id"

    const-string v9, "items"

    const-string v10, "payments"

    const-string v11, "preferred_banks"

    const-string v12, "reference_id"

    const-string v13, "refunds"

    const-string v14, "status"

    const-string v15, "type"

    const-string v16, "updated_at"

    const-string v17, "updated_by"

    const-string v18, "user_id"

    .line 25
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"a\u2026 \"updated_by\", \"user_id\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "amount"

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Double::cl\u2026ptySet(),\n      \"amount\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    .line 30
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/Attribute;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "attributes"

    .line 30
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Attribute:\u2026emptySet(), \"attributes\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->attributeAdapter:Lo/JniNativeApi;

    .line 33
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "created_at"

    .line 33
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026et(),\n      \"created_at\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 37
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/Object;

    check-cast v5, Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    const-string v5, "items"

    .line 37
    invoke-virtual {v1, v2, v4, v5}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v4, "moshi.adapter(Types.newP\u2026mptySet(),\n      \"items\")"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    .line 41
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/dreamplug/fabrik/ui/lending/model/Payment;

    check-cast v4, Ljava/lang/reflect/Type;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "payments"

    .line 41
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Types.newP\u2026ySet(),\n      \"payments\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfPaymentAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 20
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1132
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "amount"

    .line 1133
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1134
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    .line 2009
    iget-wide v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->onNavigationEvent:D

    .line 1134
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "attributes"

    .line 1135
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1136
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->attributeAdapter:Lo/JniNativeApi;

    .line 2010
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/Attribute;

    .line 1136
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "created_at"

    .line 1137
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1138
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2011
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 1138
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "created_by"

    .line 1139
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1140
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2012
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->extraCallback:Ljava/lang/String;

    .line 1140
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "currency"

    .line 1141
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1142
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2013
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 1142
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "id"

    .line 1143
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1144
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2014
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->asInterface:Ljava/lang/String;

    .line 1144
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "items"

    .line 1145
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1146
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    .line 2015
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->onRelationshipValidationResult:Ljava/util/List;

    .line 1146
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payments"

    .line 1147
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1148
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfPaymentAdapter:Lo/JniNativeApi;

    .line 2016
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->asBinder:Ljava/util/List;

    .line 1148
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "preferred_banks"

    .line 1149
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1150
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    .line 2017
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->onTransact:Ljava/util/List;

    .line 1150
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "reference_id"

    .line 1151
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1152
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2018
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1152
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "refunds"

    .line 1153
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1154
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    .line 2019
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->warmup:Ljava/util/List;

    .line 1154
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "status"

    .line 1155
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1156
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2020
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->ICustomTabsService:Ljava/lang/String;

    .line 1156
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1157
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1158
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2021
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->newSession:Ljava/lang/String;

    .line 1158
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "updated_at"

    .line 1159
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1160
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2022
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1160
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "updated_by"

    .line 1161
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1162
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2023
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1162
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "user_id"

    .line 1163
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1164
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2024
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->updateVisuals:Ljava/lang/String;

    .line 1164
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1165
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1130
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

    .line 1064
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, 0x0

    move-object v6, v2

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

    .line 1065
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v3

    const-string v4, "user_id"

    const-string v5, "updated_by"

    move-object/from16 v21, v15

    const-string v15, "updated_at"

    move-object/from16 v22, v14

    const-string v14, "type"

    move-object/from16 v23, v13

    const-string v13, "status"

    move-object/from16 v24, v12

    const-string v12, "refunds"

    move-object/from16 v25, v11

    const-string v11, "reference_id"

    move-object/from16 v26, v10

    const-string v10, "preferred_banks"

    move-object/from16 v27, v9

    const-string v9, "payments"

    move-object/from16 v28, v8

    const-string v8, "items"

    move-object/from16 v29, v7

    const-string v7, "id"

    move-object/from16 v30, v6

    const-string v6, "currency"

    move-object/from16 v31, v2

    const-string v2, "created_by"

    move-object/from16 v32, v2

    const-string v2, "created_at"

    move-object/from16 v33, v2

    const-string v2, "attributes"

    move-object/from16 v34, v2

    const-string v2, "amount"

    if-eqz v3, :cond_10

    .line 1066
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v3}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 1096
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/String;

    if-eqz v20, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v4, v4, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"use\u2026       \"user_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1094
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    if-eqz v19, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {v5, v5, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"upd\u2026    \"updated_by\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1092
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    if-eqz v18, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {v15, v15, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"upd\u2026    \"updated_at\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1090
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    if-eqz v17, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {v14, v14, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"typ\u2026ype\",\n            reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1088
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {v13, v13, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"sta\u2026        \"status\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1086
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/List;

    if-eqz v15, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-static {v12, v12, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ref\u2026       \"refunds\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1084
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_6

    move-object/from16 v15, v21

    goto/16 :goto_3

    .line 1085
    :cond_6
    invoke-static {v11, v11, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ref\u2026, \"reference_id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1082
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_7

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    goto/16 :goto_4

    .line 1083
    :cond_7
    invoke-static {v10, v10, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"pre\u2026preferred_banks\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1080
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfPaymentAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_8

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    goto/16 :goto_5

    .line 1081
    :cond_8
    invoke-static {v9, v9, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"pay\u2026nts\", \"payments\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1078
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->listOfAnyAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_9

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    goto/16 :goto_6

    :cond_9
    invoke-static {v8, v8, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ite\u2026         \"items\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1077
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_a

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    goto/16 :goto_7

    :cond_a
    invoke-static {v7, v7, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"id\", \"id\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1075
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_b

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    goto/16 :goto_8

    :cond_b
    invoke-static {v6, v6, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cur\u2026      \"currency\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1073
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_c

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    goto/16 :goto_9

    :cond_c
    move-object/from16 v3, v32

    invoke-static {v3, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cre\u2026    \"created_by\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1071
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_d

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v8, v28

    goto/16 :goto_a

    :cond_d
    move-object/from16 v2, v33

    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cre\u2026    \"created_at\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1069
    :pswitch_e
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->attributeAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/dreamplug/fabrik/ui/lending/model/Attribute;

    if-eqz v6, :cond_e

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v8, v28

    move-object/from16 v7, v29

    goto :goto_b

    :cond_e
    move-object/from16 v2, v34

    .line 1070
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"att\u2026s\", \"attributes\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1067
    :pswitch_f
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponseJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v15, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v8, v28

    move-object/from16 v7, v29

    move-object/from16 v6, v30

    goto/16 :goto_0

    :cond_f
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"amo\u2026        \"amount\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1100
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1101
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    :goto_1
    move-object/from16 v15, v21

    :goto_2
    move-object/from16 v14, v22

    :goto_3
    move-object/from16 v13, v23

    :goto_4
    move-object/from16 v12, v24

    :goto_5
    move-object/from16 v11, v25

    :goto_6
    move-object/from16 v10, v26

    :goto_7
    move-object/from16 v9, v27

    :goto_8
    move-object/from16 v8, v28

    :goto_9
    move-object/from16 v7, v29

    :goto_a
    move-object/from16 v6, v30

    :goto_b
    move-object/from16 v2, v31

    goto/16 :goto_0

    :cond_10
    move-object/from16 v3, v32

    move-object/from16 v0, v33

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    .line 1105
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1106
    new-instance v33, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;

    if-eqz v31, :cond_20

    .line 1107
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v31

    if-eqz v30, :cond_1f

    if-eqz v29, :cond_1e

    if-eqz v28, :cond_1d

    if-eqz v27, :cond_1c

    if-eqz v26, :cond_1b

    if-eqz v25, :cond_1a

    if-eqz v24, :cond_19

    if-eqz v23, :cond_18

    if-eqz v22, :cond_17

    if-eqz v21, :cond_16

    if-eqz v16, :cond_15

    if-eqz v17, :cond_14

    if-eqz v18, :cond_13

    if-eqz v19, :cond_12

    if-eqz v20, :cond_11

    move-object/from16 v3, v33

    move-wide/from16 v4, v31

    move-object/from16 v6, v30

    move-object/from16 v7, v29

    move-object/from16 v8, v28

    move-object/from16 v9, v27

    move-object/from16 v10, v26

    move-object/from16 v11, v25

    move-object/from16 v12, v24

    move-object/from16 v13, v23

    move-object/from16 v14, v22

    move-object/from16 v15, v21

    .line 1106
    invoke-direct/range {v3 .. v20}, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;-><init>(DLcom/dreamplug/fabrik/ui/lending/model/Attribute;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v33

    .line 1124
    :cond_11
    invoke-static {v4, v4, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"user_id\", \"user_id\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1123
    :cond_12
    invoke-static {v5, v5, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"up\u2026y\", \"updated_by\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1122
    :cond_13
    invoke-static {v15, v15, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"up\u2026t\", \"updated_at\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1121
    :cond_14
    invoke-static {v14, v14, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"type\", \"type\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1120
    :cond_15
    invoke-static {v13, v13, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"status\", \"status\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1119
    :cond_16
    invoke-static {v12, v12, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"refunds\", \"refunds\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1117
    :cond_17
    invoke-static {v11, v11, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"re\u2026_id\",\n            reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1115
    :cond_18
    invoke-static {v10, v10, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"pr\u2026preferred_banks\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1114
    :cond_19
    invoke-static {v9, v9, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"pa\u2026nts\", \"payments\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1113
    :cond_1a
    invoke-static {v8, v8, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"items\", \"items\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1112
    :cond_1b
    invoke-static {v7, v7, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"id\", \"id\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1111
    :cond_1c
    invoke-static {v6, v6, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"cu\u2026ncy\", \"currency\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1110
    :cond_1d
    invoke-static {v3, v3, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"cr\u2026y\", \"created_by\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1109
    :cond_1e
    invoke-static {v0, v0, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"cr\u2026t\", \"created_at\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1108
    :cond_1f
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"at\u2026s\", \"attributes\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_20
    move-object/from16 v0, v32

    .line 1107
    invoke-static {v0, v0, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v0

    const-string v1, "Util.missingProperty(\"amount\", \"amount\", reader)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

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

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(LoanOrderResponse)"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
