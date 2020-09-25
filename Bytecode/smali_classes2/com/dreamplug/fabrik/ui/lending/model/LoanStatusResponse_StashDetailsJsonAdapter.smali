.class public final Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;",
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u0010H\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableCtaAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/Cta;",
        "nullableListOfDetailAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Detail;",
        "nullablePoweredByAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;",
        "nullableScheduleAdapter",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;",
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

.field private final nullableListOfDetailAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Detail;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullablePoweredByAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableScheduleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;",
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
    .locals 8

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "title"

    const-string v1, "schedule"

    const-string v2, "powered_by"

    const-string v3, "details"

    const-string v4, "cta"

    .line 21
    filled-new-array {v4, v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v5}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v5

    const-string v6, "JsonReader.Options.of(\"c\u2026     \"schedule\", \"title\")"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 23
    const-class v5, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    check-cast v5, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v6, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v6, Ljava/util/Set;

    .line 23
    invoke-virtual {p1, v5, v6, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v4

    const-string v5, "moshi.adapter(Cta::class\u2026 emptySet(),\n      \"cta\")"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    .line 27
    const-class v4, Ljava/util/List;

    check-cast v4, Ljava/lang/reflect/Type;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/reflect/Type;

    .line 28
    const-class v6, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Detail;

    check-cast v6, Ljava/lang/reflect/Type;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 27
    invoke-static {v4, v5}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v5, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v5, Ljava/util/Set;

    .line 27
    invoke-virtual {p1, v4, v5, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v3

    const-string v4, "moshi.adapter(Types.newP\u2026), emptySet(), \"details\")"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableListOfDetailAdapter:Lo/JniNativeApi;

    .line 31
    const-class v3, Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;

    check-cast v3, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v4, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v4, Ljava/util/Set;

    .line 31
    invoke-virtual {p1, v3, v4, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(PoweredBy:\u2026emptySet(), \"powered_by\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullablePoweredByAdapter:Lo/JniNativeApi;

    .line 34
    const-class v2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 34
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(LoanStatus\u2026, emptySet(), \"schedule\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableScheduleAdapter:Lo/JniNativeApi;

    .line 36
    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 36
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026     emptySet(), \"title\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1077
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "cta"

    .line 1078
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1079
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    .line 1177
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    .line 1079
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "details"

    .line 1080
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1081
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableListOfDetailAdapter:Lo/JniNativeApi;

    .line 1178
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;->ICustomTabsCallback:Ljava/util/List;

    .line 1081
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "powered_by"

    .line 1082
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1083
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullablePoweredByAdapter:Lo/JniNativeApi;

    .line 1179
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;

    .line 1083
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "schedule"

    .line 1084
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1085
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableScheduleAdapter:Lo/JniNativeApi;

    .line 1180
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;

    .line 1085
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "title"

    .line 1086
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1087
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 1181
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 1087
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1088
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1075
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

    .line 1048
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 1049
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1050
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

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

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableScheduleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;

    goto :goto_0

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullablePoweredByAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;

    goto :goto_0

    .line 1052
    :cond_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableListOfDetailAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    goto :goto_0

    .line 1051
    :cond_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse_StashDetailsJsonAdapter;->nullableCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    goto :goto_0

    .line 1058
    :cond_5
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1059
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1063
    :cond_6
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1064
    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashDetails;-><init>(Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lending/model/PoweredBy;Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$Schedule;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x35

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(LoanStatusResponse.StashDetails)"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
