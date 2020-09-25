.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;",
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\nH\u0016R\u001c\u0010\u0006\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableListOfEmiScheduleAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$EmiSchedule;",
        "nullableListOfStringAdapter",
        "",
        "nullableStringAdapter",
        "nullableSummaryAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;",
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
.field private final nullableListOfEmiScheduleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$EmiSchedule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableListOfStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field private final nullableSummaryAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 9

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "summary"

    const-string v1, "header"

    const-string v2, "emi_schedule_header"

    const-string v3, "emi_schedule"

    const-string v4, "sub_header"

    .line 21
    filled-new-array {v3, v2, v1, v4, v0}, [Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v4

    const-string v5, "JsonReader.Options.of(\"e\u2026 \"sub_header\", \"summary\")"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 24
    const-class v4, Ljava/util/List;

    check-cast v4, Ljava/lang/reflect/Type;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/reflect/Type;

    .line 25
    const-class v7, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$EmiSchedule;

    check-cast v7, Ljava/lang/reflect/Type;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 24
    invoke-static {v4, v6}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v6, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v6, Ljava/util/Set;

    .line 24
    invoke-virtual {p1, v4, v6, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    const-string v4, "moshi.adapter(Types.newP\u2026ptySet(), \"emi_schedule\")"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableListOfEmiScheduleAdapter:Lo/JniNativeApi;

    .line 28
    const-class v3, Ljava/util/List;

    check-cast v3, Ljava/lang/reflect/Type;

    new-array v4, v5, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/String;

    check-cast v5, Ljava/lang/reflect/Type;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    .line 28
    invoke-virtual {p1, v3, v4, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(Types.newP\u2026   \"emi_schedule_header\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 31
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(String::cl\u2026    emptySet(), \"header\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 35
    const-class v1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 35
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(LoanStatus\u2026a, emptySet(), \"summary\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableSummaryAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1075
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "emi_schedule"

    .line 1076
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1077
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableListOfEmiScheduleAdapter:Lo/JniNativeApi;

    .line 1226
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->onNavigationEvent:Ljava/util/List;

    .line 1077
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "emi_schedule_header"

    .line 1078
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1079
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 1227
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->ICustomTabsCallback:Ljava/util/List;

    .line 1079
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "header"

    .line 1080
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1081
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1228
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->extraCallback:Ljava/lang/String;

    .line 1081
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "sub_header"

    .line 1082
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1083
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1229
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->onMessageChannelReady:Ljava/lang/String;

    .line 1083
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "summary"

    .line 1084
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1085
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableSummaryAdapter:Lo/JniNativeApi;

    .line 1230
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;

    .line 1085
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1086
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
    .locals 7

    const-string v0, "reader"

    .line 17
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 1047
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1048
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableSummaryAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 1050
    :cond_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    goto :goto_0

    .line 1049
    :cond_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_ScheduleJsonAdapter;->nullableListOfEmiScheduleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    goto :goto_0

    .line 1056
    :cond_5
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1057
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1061
    :cond_6
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1062
    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Summary;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(LoanStatusResponse.Schedule)"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
