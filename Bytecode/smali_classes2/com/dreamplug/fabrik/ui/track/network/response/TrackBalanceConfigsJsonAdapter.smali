.class public final Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "infoAdapter",
        "Lcom/dreamplug/fabrik/ui/track/network/response/Info;",
        "nullableBankBalanceBucketizerAdapter",
        "Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;",
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
.field private final infoAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/track/network/response/Info;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableBankBalanceBucketizerAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;",
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
    .locals 4

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "info"

    const-string v1, "bank_account_bucketizer"

    const-string v2, "faq_deeplink"

    .line 20
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v1

    const-string v2, "JsonReader.Options.of(\"b\u2026o\",\n      \"faq_deeplink\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 23
    const-class v1, Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "bankAccountBucketizer"

    .line 23
    invoke-virtual {p1, v1, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(BankBalanc\u2026 \"bankAccountBucketizer\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->nullableBankBalanceBucketizerAdapter:Lo/JniNativeApi;

    .line 25
    const-class v1, Lcom/dreamplug/fabrik/ui/track/network/response/Info;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 25
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Info::clas\u2026java, emptySet(), \"info\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->infoAdapter:Lo/JniNativeApi;

    .line 27
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "faqDeeplink"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026mptySet(), \"faqDeeplink\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 16
    check-cast p2, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1063
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "bank_account_bucketizer"

    .line 1064
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1065
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->nullableBankBalanceBucketizerAdapter:Lo/JniNativeApi;

    .line 2010
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;

    .line 1065
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "info"

    .line 1066
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1067
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->infoAdapter:Lo/JniNativeApi;

    .line 2012
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/track/network/response/Info;

    .line 1067
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "faq_deeplink"

    .line 1068
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1069
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2014
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;->onNavigationEvent:Ljava/lang/String;

    .line 1069
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1070
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1061
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 6

    const-string v0, "reader"

    .line 16
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1038
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v3

    const-string v4, "info"

    if-eqz v3, :cond_5

    .line 1039
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v3}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1041
    :cond_1
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->infoAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/track/network/response/Info;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v4, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"inf\u2026nfo\",\n            reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigsJsonAdapter;->nullableBankBalanceBucketizerAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;

    goto :goto_0

    .line 1046
    :cond_4
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1047
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1051
    :cond_5
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1052
    new-instance v3, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;

    if-eqz v1, :cond_6

    invoke-direct {v3, v0, v1, v2}, Lcom/dreamplug/fabrik/ui/track/network/response/TrackBalanceConfigs;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/BankBalanceBucketizer;Lcom/dreamplug/fabrik/ui/track/network/response/Info;Ljava/lang/String;)V

    return-object v3

    .line 1054
    :cond_6
    invoke-static {v4, v4, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"info\", \"info\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(TrackBalanceConfigs)"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
