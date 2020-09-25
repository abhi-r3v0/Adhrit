.class public final Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/DraftData;",
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
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/DraftData;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableCtaAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "nullableDoubleAdapter",
        "",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullablePrefilledDataAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;",
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
.field private final nullableCtaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
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

.field private final nullablePrefilledDataAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;",
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
    .locals 13

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "card_bg_color"

    const-string v2, "cta"

    const-string v3, "loan_amount"

    const-string v4, "loan_amount_title"

    const-string v5, "loan_amount_value"

    const-string v6, "loan_tenure"

    const-string v7, "loan_tenure_title"

    const-string v8, "loan_tenure_value"

    const-string v9, "prefilled_data"

    const-string v10, "subtitle"

    const-string v11, "title"

    const-string v12, "workflow_id"

    .line 22
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026, \"title\", \"workflow_id\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 24
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "card_bg_color"

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026tySet(), \"card_bg_color\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 27
    const-class v0, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "cta"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Cta::class\u2026 emptySet(),\n      \"cta\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Lo/getTargetScrollPosition;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "loan_amount"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(EncodedStr\u2026mptySet(), \"loan_amount\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 34
    const-class v0, Ljava/lang/Double;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "loan_amount_value"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Double::cl\u2026t(), \"loan_amount_value\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 37
    const-class v0, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "prefilled_data"

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(PrefilledD\u2026ySet(), \"prefilled_data\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullablePrefilledDataAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1098
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "card_bg_color"

    .line 1099
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1100
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2101
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->onNavigationEvent:Ljava/lang/String;

    .line 1100
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cta"

    .line 1101
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1102
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    .line 2102
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    .line 1102
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_amount"

    .line 1103
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1104
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2103
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->onMessageChannelReady:Lo/getTargetScrollPosition;

    .line 1104
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_amount_title"

    .line 1105
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1106
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2104
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->onPostMessage:Lo/getTargetScrollPosition;

    .line 1106
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_amount_value"

    .line 1107
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1108
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2105
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->ICustomTabsCallback:Ljava/lang/Double;

    .line 1108
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_tenure"

    .line 1109
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1110
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2106
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    .line 1110
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_tenure_title"

    .line 1111
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1112
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2107
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->onTransact:Lo/getTargetScrollPosition;

    .line 1112
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_tenure_value"

    .line 1113
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1114
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2108
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->asBinder:Ljava/lang/Double;

    .line 1114
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "prefilled_data"

    .line 1115
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1116
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullablePrefilledDataAdapter:Lo/JniNativeApi;

    .line 2109
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    .line 1116
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "subtitle"

    .line 1117
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1118
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2110
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->asInterface:Lo/getTargetScrollPosition;

    .line 1118
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "title"

    .line 1119
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1120
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2111
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->warmup:Lo/getTargetScrollPosition;

    .line 1120
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "workflow_id"

    .line 1121
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1122
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2112
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Double;

    .line 1122
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1123
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
    .locals 14

    const-string v0, "reader"

    .line 17
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    .line 1056
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1069
    :pswitch_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/Double;

    goto :goto_0

    .line 1068
    :pswitch_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1067
    :pswitch_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1066
    :pswitch_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullablePrefilledDataAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;

    goto :goto_0

    .line 1065
    :pswitch_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/Double;

    goto :goto_0

    .line 1064
    :pswitch_5
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1063
    :pswitch_6
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1062
    :pswitch_7
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Double;

    goto :goto_0

    .line 1061
    :pswitch_8
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1060
    :pswitch_9
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1059
    :pswitch_a
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    goto :goto_0

    .line 1058
    :pswitch_b
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/DraftDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_0

    .line 1072
    :pswitch_c
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1073
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1078
    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lcom/dreamplug/fabrik/ui/lending/model/DraftData;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/Double;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/Double;Lcom/dreamplug/fabrik/ui/lending/model/PrefilledData;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/Double;)V

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(DraftData)"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
