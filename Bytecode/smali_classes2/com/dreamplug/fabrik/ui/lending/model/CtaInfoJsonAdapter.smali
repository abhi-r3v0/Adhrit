.class public final Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;",
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u000cH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullableListOfNullableDisbursementDetailAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/DisbursementDetail;",
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
.field private final nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lo/getTargetScrollPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableListOfNullableDisbursementDetailAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/DisbursementDetail;",
            ">;>;"
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
    .locals 6

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "title"

    const-string v1, "disbursement_details"

    const-string v2, "cta_color"

    .line 22
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v3}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v3

    const-string v4, "JsonReader.Options.of(\"c\u2026sement_details\", \"title\")"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 24
    const-class v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    .line 24
    invoke-virtual {p1, v3, v4, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026 emptySet(), \"cta_color\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 29
    const-class v2, Ljava/util/List;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/dreamplug/fabrik/ui/lending/model/DisbursementDetail;

    check-cast v4, Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 29
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Types.newP\u2026, \"disbursement_details\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableListOfNullableDisbursementDetailAdapter:Lo/JniNativeApi;

    .line 33
    const-class v1, Lo/getTargetScrollPosition;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 33
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(EncodedStr\u2026ava, emptySet(), \"title\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 18
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1067
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "cta_color"

    .line 1068
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1069
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1153
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;->extraCallback:Ljava/lang/String;

    .line 1069
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "disbursement_details"

    .line 1070
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1071
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableListOfNullableDisbursementDetailAdapter:Lo/JniNativeApi;

    .line 1154
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;->ICustomTabsCallback:Ljava/util/List;

    .line 1071
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "title"

    .line 1072
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1073
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 1155
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;->onNavigationEvent:Lo/getTargetScrollPosition;

    .line 1073
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1074
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1065
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 5

    const-string v0, "reader"

    .line 18
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1043
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1044
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v3}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1046
    :cond_1
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableListOfNullableDisbursementDetailAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfoJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 1050
    :cond_3
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1051
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1055
    :cond_4
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1056
    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;

    invoke-direct {p1, v0, v1, v2}, Lcom/dreamplug/fabrik/ui/lending/model/CtaInfo;-><init>(Ljava/lang/String;Ljava/util/List;Lo/getTargetScrollPosition;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(CtaInfo)"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method