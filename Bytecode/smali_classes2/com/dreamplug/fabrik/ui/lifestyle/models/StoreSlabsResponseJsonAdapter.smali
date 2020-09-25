.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001a\u001a\u00020\u000eH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "doubleAdapter",
        "",
        "listOfStoreSlabAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullableStringAdapter",
        "",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "stringAdapter",
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

.field private final listOfStoreSlabAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
            ">;>;"
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

    .line 22
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "currency_type"

    const-string v2, "values"

    const-string v3, "total_inr_payable"

    const-string v4, "payable_amount_display_text"

    const-string v5, "slider_value_display_text"

    const-string v6, "recommended_slab_display_text"

    const-string v7, "recommended_slab"

    .line 25
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026ext\", \"recommended_slab\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "currencyType"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026(),\n      \"currencyType\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "slabs"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026mptySet(),\n      \"slabs\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->listOfStoreSlabAdapter:Lo/JniNativeApi;

    .line 34
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "totalINRPayable"

    .line 34
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Double::cl\u2026\n      \"totalINRPayable\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    .line 38
    const-class v0, Lo/getTargetScrollPosition;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "payableAmountDisplayText"

    .line 38
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(EncodedStr\u2026ayableAmountDisplayText\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 40
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "recommendedSlab"

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026Set(), \"recommendedSlab\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 20
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1092
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "currency_type"

    .line 1093
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1094
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2013
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    .line 1094
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "values"

    .line 1095
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1096
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->listOfStoreSlabAdapter:Lo/JniNativeApi;

    .line 2015
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    .line 1096
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "total_inr_payable"

    .line 1097
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1098
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    .line 2017
    iget-wide v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    .line 1098
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payable_amount_display_text"

    .line 1099
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1100
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2019
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    .line 1100
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "slider_value_display_text"

    .line 1101
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1102
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2021
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    .line 1102
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "recommended_slab_display_text"

    .line 1103
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1104
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2023
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    .line 1104
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "recommended_slab"

    .line 1105
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1106
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2025
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1106
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1107
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1090
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v8, v5

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 1055
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v3

    const-string v6, "total_inr_payable"

    const-string v7, "totalINRPayable"

    const-string v12, "values"

    const-string v13, "slabs"

    const-string v14, "currency_type"

    const-string v15, "currencyType"

    if-eqz v3, :cond_3

    .line 1056
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v3}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1066
    :pswitch_0
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 1065
    :pswitch_1
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1064
    :pswitch_2
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1063
    :pswitch_3
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1061
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->doubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 1062
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v7, v6, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"tot\u2026tal_inr_payable\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1059
    :pswitch_5
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->listOfStoreSlabAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v13, v12, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"sla\u2026        \"values\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1057
    :pswitch_6
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponseJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    goto/16 :goto_0

    .line 1058
    :cond_2
    invoke-static {v15, v14, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"cur\u2026 \"currency_type\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1069
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1070
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1074
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1075
    new-instance v16, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    if-eqz v4, :cond_6

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    .line 1079
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    move-object/from16 v3, v16

    .line 1075
    invoke-direct/range {v3 .. v11}, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;-><init>(Ljava/lang/String;Ljava/util/List;DLo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;)V

    return-object v16

    .line 1079
    :cond_4
    invoke-static {v7, v6, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"to\u2026tal_inr_payable\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1078
    :cond_5
    invoke-static {v13, v12, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"slabs\", \"values\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1076
    :cond_6
    invoke-static {v15, v14, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"cu\u2026ype\",\n            reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

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

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(StoreSlabsResponse)"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
