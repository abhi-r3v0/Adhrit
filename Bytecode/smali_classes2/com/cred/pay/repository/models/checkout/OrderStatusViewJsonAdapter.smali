.class public final Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusView;",
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/checkout/OrderStatusView;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullablePaymentCtaAdapter",
        "Lcom/cred/pay/repository/models/checkout/PaymentCta;",
        "nullableStatusAdapter",
        "Lcom/cred/pay/repository/models/checkout/Status;",
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
.field private final nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lo/getTargetScrollPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final nullablePaymentCtaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/checkout/PaymentCta;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableStatusAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/checkout/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 8

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "status"

    const-string v2, "text1"

    const-string v3, "text2"

    const-string v4, "text3"

    const-string v5, "text4"

    const-string v6, "title"

    const-string v7, "cta"

    .line 20
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"s\u2026 \"text4\", \"title\", \"cta\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 22
    const-class v0, Lcom/cred/pay/repository/models/checkout/Status;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "status"

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Status::cl\u2026    emptySet(), \"status\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 26
    const-class v0, Lo/getTargetScrollPosition;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "text1"

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(EncodedStr\u2026ava, emptySet(), \"text1\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 29
    const-class v0, Lcom/cred/pay/repository/models/checkout/PaymentCta;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "cta"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(PaymentCta\u2026.java, emptySet(), \"cta\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullablePaymentCtaAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 16
    check-cast p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1075
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "status"

    .line 1076
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1077
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 2049
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onPostMessage:Lcom/cred/pay/repository/models/checkout/Status;

    .line 1077
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text1"

    .line 1078
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1079
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2051
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onMessageChannelReady:Lo/getTargetScrollPosition;

    .line 1079
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text2"

    .line 1080
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1081
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2053
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    .line 1081
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text3"

    .line 1082
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1083
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2055
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->extraCallback:Lo/getTargetScrollPosition;

    .line 1083
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text4"

    .line 1084
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1085
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2057
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onNavigationEvent:Lo/getTargetScrollPosition;

    .line 1085
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "title"

    .line 1086
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1087
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2059
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    .line 1087
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cta"

    .line 1088
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1089
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullablePaymentCtaAdapter:Lo/JniNativeApi;

    .line 2061
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/OrderStatusView;->asInterface:Lcom/cred/pay/repository/models/checkout/PaymentCta;

    .line 1089
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1090
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1073
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 9

    const-string v0, "reader"

    .line 16
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 1043
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1051
    :pswitch_0
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullablePaymentCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/cred/pay/repository/models/checkout/PaymentCta;

    goto :goto_0

    .line 1050
    :pswitch_1
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1049
    :pswitch_2
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1048
    :pswitch_3
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1047
    :pswitch_4
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1046
    :pswitch_5
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1045
    :pswitch_6
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/OrderStatusViewJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cred/pay/repository/models/checkout/Status;

    goto :goto_0

    .line 1054
    :pswitch_7
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1055
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1060
    new-instance p1, Lcom/cred/pay/repository/models/checkout/OrderStatusView;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/cred/pay/repository/models/checkout/OrderStatusView;-><init>(Lcom/cred/pay/repository/models/checkout/Status;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lcom/cred/pay/repository/models/checkout/PaymentCta;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(OrderStatusView)"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
