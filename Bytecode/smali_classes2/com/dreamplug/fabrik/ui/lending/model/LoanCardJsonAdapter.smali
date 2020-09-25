.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
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
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "card_bg_color"

    const-string v4, "footer_selected"

    const-string v5, "footer_unselected"

    const-string v6, "loan_balance_title"

    const-string v7, "loan_id"

    const-string v8, "loan_paid_amount_value"

    const-string v9, "loan_recovered_percentage"

    const-string v10, "loan_recovered_percentage_value"

    const-string v11, "loan_status"

    const-string v12, "loan_status_bg"

    const-string v13, "progress_selected"

    const-string v14, "progress_unselected"

    const-string v15, "loan_status_value"

    const-string v16, "loan_subtitle"

    const-string v17, "loan_time_left"

    const-string v18, "loan_time_left_value"

    const-string v19, "loan_title"

    const-string v20, "total_loan_amount_value"

    .line 25
    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"c\u2026total_loan_amount_value\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "card_bg_color"

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026tySet(), \"card_bg_color\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v2, Lo/getTargetScrollPosition;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "loan_balance_title"

    .line 31
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(EncodedStr\u2026(), \"loan_balance_title\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 34
    const-class v2, Ljava/lang/Double;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "loan_paid_amount_value"

    .line 34
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Double::cl\u2026\"loan_paid_amount_value\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1113
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "card_bg_color"

    .line 1114
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1115
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2079
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->onPostMessage:Ljava/lang/String;

    .line 1115
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "footer_selected"

    .line 1116
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1117
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2080
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->ICustomTabsCallback:Ljava/lang/String;

    .line 1117
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "footer_unselected"

    .line 1118
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1119
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2081
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->onMessageChannelReady:Ljava/lang/String;

    .line 1119
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_balance_title"

    .line 1120
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1121
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2082
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->onNavigationEvent:Lo/getTargetScrollPosition;

    .line 1121
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_id"

    .line 1122
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1123
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2083
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->extraCallback:Ljava/lang/String;

    .line 1123
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_paid_amount_value"

    .line 1124
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1125
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2084
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->asBinder:Ljava/lang/Double;

    .line 1125
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_recovered_percentage"

    .line 1126
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1127
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2085
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1127
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_recovered_percentage_value"

    .line 1128
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1129
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2086
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->onTransact:Ljava/lang/Double;

    .line 1129
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_status"

    .line 1130
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1131
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2087
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->onRelationshipValidationResult:Lo/getTargetScrollPosition;

    .line 1131
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_status_bg"

    .line 1132
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1133
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2088
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->asInterface:Ljava/lang/String;

    .line 1133
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "progress_selected"

    .line 1134
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1135
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2089
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1135
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "progress_unselected"

    .line 1136
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1137
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2090
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->warmup:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_status_value"

    .line 1138
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1139
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2091
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->newSession:Ljava/lang/String;

    .line 1139
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_subtitle"

    .line 1140
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1141
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2092
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->ICustomTabsService:Lo/getTargetScrollPosition;

    .line 1141
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_time_left"

    .line 1142
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1143
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2093
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->getInterfaceDescriptor:Lo/getTargetScrollPosition;

    .line 1143
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_time_left_value"

    .line 1144
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1145
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2094
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->extraCommand:Ljava/lang/Double;

    .line 1145
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loan_title"

    .line 1146
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1147
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2095
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->requestPostMessageChannel:Lo/getTargetScrollPosition;

    .line 1147
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "total_loan_amount_value"

    .line 1148
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1149
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2096
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;->postMessage:Ljava/lang/Double;

    .line 1149
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1150
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1111
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 17
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
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

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    .line 1059
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1060
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1078
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/Double;

    goto :goto_0

    .line 1077
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1076
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/Double;

    goto :goto_0

    .line 1075
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1074
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1073
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto :goto_0

    .line 1072
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_0

    .line 1071
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto :goto_0

    .line 1070
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto :goto_0

    .line 1069
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lo/getTargetScrollPosition;

    goto :goto_0

    .line 1068
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/Double;

    goto/16 :goto_0

    .line 1067
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_0

    .line 1066
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Double;

    goto/16 :goto_0

    .line 1065
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    .line 1064
    :pswitch_e
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lo/getTargetScrollPosition;

    goto/16 :goto_0

    .line 1063
    :pswitch_f
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 1062
    :pswitch_10
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 1061
    :pswitch_11
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanCardJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 1081
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1082
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1086
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1087
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;

    move-object v3, v1

    invoke-direct/range {v3 .. v21}, Lcom/dreamplug/fabrik/ui/lending/model/LoanCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/Double;Lo/getTargetScrollPosition;Ljava/lang/Double;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_12
        :pswitch_11
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

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(LoanCard)"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
