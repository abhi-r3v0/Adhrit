.class public final Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/checkout/InstrumentData;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/checkout/InstrumentData;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableCardDetailsAdapter",
        "Lcom/cred/pay/repository/models/checkout/CardDetails;",
        "nullableSurchargeDetailsAdapter",
        "Lcom/cred/pay/repository/models/SurchargeDetails;",
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
.field private final nullableCardDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/checkout/CardDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableSurchargeDetailsAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/SurchargeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 3

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "surcharge_details"

    const-string v1, "card_details"

    .line 20
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"s\u2026s\",\n      \"card_details\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 23
    const-class v0, Lcom/cred/pay/repository/models/SurchargeDetails;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "surchargeDetails"

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(SurchargeD\u2026et(), \"surchargeDetails\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->nullableSurchargeDetailsAdapter:Lo/JniNativeApi;

    .line 26
    const-class v0, Lcom/cred/pay/repository/models/checkout/CardDetails;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "cardDetails"

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(CardDetail\u2026mptySet(), \"cardDetails\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->nullableCardDetailsAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 16
    check-cast p2, Lcom/cred/pay/repository/models/checkout/InstrumentData;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1057
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "surcharge_details"

    .line 1058
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1059
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->nullableSurchargeDetailsAdapter:Lo/JniNativeApi;

    .line 1224
    iget-object v1, p2, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onMessageChannelReady:Lcom/cred/pay/repository/models/SurchargeDetails;

    .line 1059
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_details"

    .line 1060
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1061
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->nullableCardDetailsAdapter:Lo/JniNativeApi;

    .line 1226
    iget-object p2, p2, Lcom/cred/pay/repository/models/checkout/InstrumentData;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/CardDetails;

    .line 1061
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1062
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1055
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 4

    const-string v0, "reader"

    .line 16
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v1, v0

    .line 1035
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1036
    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 1038
    :cond_0
    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->nullableCardDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cred/pay/repository/models/checkout/CardDetails;

    goto :goto_0

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/InstrumentDataJsonAdapter;->nullableSurchargeDetailsAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cred/pay/repository/models/SurchargeDetails;

    goto :goto_0

    .line 1041
    :cond_2
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1042
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1046
    :cond_3
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1047
    new-instance p1, Lcom/cred/pay/repository/models/checkout/InstrumentData;

    invoke-direct {p1, v0, v1}, Lcom/cred/pay/repository/models/checkout/InstrumentData;-><init>(Lcom/cred/pay/repository/models/SurchargeDetails;Lcom/cred/pay/repository/models/checkout/CardDetails;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(InstrumentData)"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method