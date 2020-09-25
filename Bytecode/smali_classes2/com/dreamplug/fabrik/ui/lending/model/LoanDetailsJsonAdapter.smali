.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableDoubleAdapter",
        "",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullableStashSummaryDataAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;",
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

.field private final nullableStashSummaryDataAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;",
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
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "bg_color"

    const-string v4, "extra_details"

    const-string v5, "loan_disbursal_date"

    const-string v6, "loan_disbursal_date_text"

    const-string v7, "emi"

    const-string v8, "emi_number"

    const-string v9, "loan_disbursal_title"

    const-string v10, "loan_subtitle"

    const-string v11, "loan_title"

    const-string v12, "loan_total"

    const-string v13, "card_bg_color"

    const-string v14, "card_bg_primary_color"

    const-string v15, "card_bg_secondary_color"

    const-string v16, "loan_total_value"

    .line 23
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"b\u2026lor\", \"loan_total_value\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "bg_color"

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026  emptySet(), \"bg_color\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 29
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "extra_details"

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(LoanStatus\u2026tySet(), \"extra_details\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStashSummaryDataAdapter:Lo/JniNativeApi;

    .line 32
    const-class v2, Lo/getTargetScrollPosition;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "loan_disbursal_date_text"

    .line 32
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(EncodedStr\u2026oan_disbursal_date_text\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 35
    const-class v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "loan_total_value"

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Double::cl\u2026et(), \"loan_total_value\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1102
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "bg_color"

    .line 1103
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1104
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2117
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 1104
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "extra_details"

    .line 1105
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1106
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStashSummaryDataAdapter:Lo/JniNativeApi;

    .line 2118
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    .line 1106
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_disbursal_date"

    .line 1107
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1108
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2119
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->onPostMessage:Ljava/lang/String;

    .line 1108
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_disbursal_date_text"

    .line 1109
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1110
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2120
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->onNavigationEvent:Lo/getTargetScrollPosition;

    .line 1110
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "emi"

    .line 1111
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1112
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2121
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    .line 1112
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "emi_number"

    .line 1113
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1114
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2122
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->asBinder:Lo/getTargetScrollPosition;

    .line 1114
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_disbursal_title"

    .line 1115
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1116
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2123
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->onTransact:Lo/getTargetScrollPosition;

    .line 1116
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_subtitle"

    .line 1117
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1118
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2124
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    .line 1118
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_title"

    .line 1119
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1120
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2125
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->asInterface:Lo/getTargetScrollPosition;

    .line 1120
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_total"

    .line 1121
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1122
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2126
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    .line 1122
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_bg_color"

    .line 1123
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1124
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2127
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->ICustomTabsService:Ljava/lang/String;

    .line 1124
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_bg_primary_color"

    .line 1125
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1126
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2128
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1126
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_bg_secondary_color"

    .line 1127
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1128
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2129
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1128
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_total_value"

    .line 1129
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1130
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2130
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;->warmup:Ljava/lang/Double;

    .line 1130
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1131
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1100
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 17
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

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

    .line 1056
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1071
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/Double;

    goto :goto_0

    .line 1070
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto :goto_0

    .line 1069
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_0

    .line 1068
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto :goto_0

    .line 1067
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1066
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1065
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1064
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1063
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1062
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1061
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1060
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 1059
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStashSummaryDataAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    goto/16 :goto_0

    .line 1058
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 1074
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1075
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1079
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1080
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/dreamplug/fabrik/ui/lending/model/LoanDetails;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v1

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(LoanDetails)"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
