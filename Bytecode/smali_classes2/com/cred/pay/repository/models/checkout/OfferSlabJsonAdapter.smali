.class public final Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/checkout/OfferSlab;",
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/checkout/OfferSlab;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "longAdapter",
        "",
        "nullableDoubleAdapter",
        "",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
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
            "Lcom/cred/pay/repository/models/checkout/OfferSlab;",
            ">;"
        }
    .end annotation
.end field

.field private final longAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Long;",
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

.field private final nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lo/getTargetScrollPosition;",
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

    .line 24
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "currency_amount"

    const-string v2, "display_text"

    const-string v3, "inr_amount"

    const-string v4, "value"

    const-string v5, "cart_amount"

    const-string v6, "surcharge_amount"

    const-string v7, "cart_amount_display_text_template"

    const-string v8, "surcharge_amount_display_text_template"

    const-string v9, "inr_amount_text_template"

    const-string v10, "inr_text"

    const-string v11, "net_payable_display_text"

    const-string v12, "slab_id"

    const-string v13, "offerId"

    .line 28
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026t\", \"slab_id\", \"offerId\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 30
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "currencyAmount"

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Long::clas\u2026,\n      \"currencyAmount\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->longAdapter:Lo/JniNativeApi;

    .line 33
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "displayText"

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026mptySet(), \"displayText\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 37
    const-class v0, Ljava/lang/Double;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "inrAmount"

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Double::cl\u2026 emptySet(), \"inrAmount\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 40
    const-class v0, Lo/getTargetScrollPosition;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "surchargeAmountDisplayTextTemplate"

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(EncodedStr\u2026ountDisplayTextTemplate\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 22
    check-cast p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1125
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "currency_amount"

    .line 1126
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1127
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->longAdapter:Lo/JniNativeApi;

    .line 2080
    iget-wide v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->onNavigationEvent:J

    .line 1127
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "display_text"

    .line 1128
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1129
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2082
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->onPostMessage:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "inr_amount"

    .line 1130
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1131
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2084
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->onMessageChannelReady:Ljava/lang/Double;

    .line 1131
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "value"

    .line 1132
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1133
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2086
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->ICustomTabsCallback:Ljava/lang/Double;

    .line 1133
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cart_amount"

    .line 1134
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1135
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2088
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->extraCallback:Ljava/lang/Double;

    .line 1135
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "surcharge_amount"

    .line 1136
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1137
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2090
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->asInterface:Ljava/lang/Double;

    .line 1137
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cart_amount_display_text_template"

    .line 1138
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1139
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2092
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1139
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "surcharge_amount_display_text_template"

    .line 1140
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1141
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2094
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->onTransact:Lo/getTargetScrollPosition;

    .line 1141
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "inr_amount_text_template"

    .line 1142
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1143
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2096
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1143
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "inr_text"

    .line 1144
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1145
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2098
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->asBinder:Ljava/lang/String;

    .line 1145
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "net_payable_display_text"

    .line 1146
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1147
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2100
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->warmup:Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "slab_id"

    .line 1148
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1149
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2102
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->ICustomTabsService:Ljava/lang/String;

    .line 1149
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "offerId"

    .line 1150
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1151
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2103
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1151
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1152
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1123
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

    .line 22
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 1050
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1064
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

    .line 1065
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1066
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v3}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1085
    :pswitch_0
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    goto :goto_0

    .line 1084
    :pswitch_1
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    goto :goto_0

    .line 1083
    :pswitch_2
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    goto :goto_0

    .line 1082
    :pswitch_3
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    goto :goto_0

    .line 1081
    :pswitch_4
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    goto :goto_0

    .line 1080
    :pswitch_5
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1078
    :pswitch_6
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1077
    :pswitch_7
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/Double;

    goto :goto_0

    .line 1076
    :pswitch_8
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Double;

    goto :goto_0

    .line 1075
    :pswitch_9
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/Double;

    goto :goto_0

    .line 1074
    :pswitch_a
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Double;

    goto :goto_0

    .line 1073
    :pswitch_b
    iget-object v3, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 1068
    :pswitch_c
    iget-object v2, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->longAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1069
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    and-int/lit8 v4, v4, -0x2

    goto/16 :goto_0

    :cond_0
    const-string v2, "currencyAmount"

    const-string v3, "currency_amount"

    invoke-static {v2, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cur\u2026currency_amount\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1088
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1093
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1095
    iget-object v1, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

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

    .line 1096
    const-class v1, Lcom/cred/pay/repository/models/checkout/OfferSlab;

    move/from16 v32, v4

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v33, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v33, v4, v31

    .line 1097
    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v30

    const-class v33, Ljava/lang/Double;

    aput-object v33, v4, v29

    const-class v33, Ljava/lang/Double;

    aput-object v33, v4, v28

    .line 1098
    const-class v33, Ljava/lang/Double;

    aput-object v33, v4, v27

    const-class v33, Ljava/lang/Double;

    aput-object v33, v4, v26

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v25

    .line 1099
    const-class v33, Lo/getTargetScrollPosition;

    aput-object v33, v4, v24

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v23

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v22

    .line 1100
    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v21

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v20

    const-class v33, Ljava/lang/String;

    aput-object v33, v4, v19

    sget-object v33, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v33, v4, v18

    .line 1101
    sget-object v33, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v34, 0xe

    aput-object v33, v4, v34

    .line 1096
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1101
    iput-object v1, v0, Lcom/cred/pay/repository/models/checkout/OfferSlabJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v4, "OfferSlab::class.java.ge\u2026his.constructorRef = it }"

    invoke-static {v1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move/from16 v32, v4

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v31

    aput-object v5, v3, v30

    aput-object v6, v3, v29

    aput-object v7, v3, v28

    aput-object v8, v3, v27

    aput-object v9, v3, v26

    aput-object v10, v3, v25

    aput-object v11, v3, v24

    aput-object v12, v3, v23

    aput-object v13, v3, v22

    aput-object v14, v3, v21

    aput-object v15, v3, v20

    aput-object v16, v3, v19

    .line 1116
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v18

    const/16 v2, 0xe

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1102
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/checkout/OfferSlab;

    return-object v1

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

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(OfferSlab)"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
