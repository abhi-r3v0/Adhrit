.class public final Lo/setSearchView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onSubmitQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSearchView$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onSubmitQuery<",
        "Lo/onSuggestionClick;",
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0002H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/datadog/android/log/internal/domain/LogSerializer;",
        "Lcom/datadog/android/core/internal/domain/Serializer;",
        "Lcom/datadog/android/log/internal/domain/Log;",
        "logConstraints",
        "Lcom/datadog/android/log/internal/constraints/LogConstraints;",
        "(Lcom/datadog/android/log/internal/constraints/LogConstraints;)V",
        "simpleDateFormat",
        "Ljava/text/SimpleDateFormat;",
        "addLogAttributes",
        "",
        "log",
        "jsonLog",
        "Lcom/google/gson/JsonObject;",
        "addLogNetworkInfo",
        "addLogTags",
        "addLogThrowable",
        "addLogUserInfo",
        "addTraceInfo",
        "serialize",
        "",
        "model",
        "serializeLog",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:[Ljava/lang/String;


# instance fields
.field private final extraCallback:Lo/SearchView$SearchAutoComplete;

.field private final onNavigationEvent:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "host"

    const-string v1, "message"

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "service"

    const-string/jumbo v4, "source"

    const-string v5, "error.kind"

    const-string v6, "error.message"

    const-string v7, "error.stack"

    const-string v8, "ddtags"

    .line 226
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 217
    sput-object v0, Lo/setSearchView;->onMessageChannelReady:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/setSearchView;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 29
    new-instance p1, Lo/onQueryTextSubmit;

    invoke-direct {p1}, Lo/onQueryTextSubmit;-><init>()V

    check-cast p1, Lo/SearchView$SearchAutoComplete;

    invoke-direct {p0, p1}, Lo/setSearchView;-><init>(Lo/SearchView$SearchAutoComplete;)V

    return-void
.end method

.method private constructor <init>(Lo/SearchView$SearchAutoComplete;)V
    .locals 2

    const-string v0, "logConstraints"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSearchView;->extraCallback:Lo/SearchView$SearchAutoComplete;

    .line 32
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v0, "UTC"

    .line 33
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 32
    iput-object p1, p0, Lo/setSearchView;->onNavigationEvent:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/onSuggestionClick;Lo/writeSInt32NoTag;)V
    .locals 5

    .line 142
    iget-object v0, p0, Lo/setSearchView;->extraCallback:Lo/SearchView$SearchAutoComplete;

    .line 50086
    iget-object p1, p1, Lo/onSuggestionClick;->onPostMessage:Ljava/util/Map;

    .line 142
    invoke-interface {v0, p1}, Lo/SearchView$SearchAutoComplete;->onPostMessage(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 244
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 245
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    sget-object v2, Lo/setSearchView;->onMessageChannelReady:[Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lo/isStopped;->ICustomTabsCallback([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 147
    invoke-static {}, Lo/createVoiceAppSearchIntent;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    check-cast v1, Lo/writeEnumNoTag;

    goto/16 :goto_3

    .line 148
    :cond_3
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Boolean;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto/16 :goto_3

    .line 149
    :cond_4
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto/16 :goto_3

    .line 150
    :cond_5
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_6

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 151
    :cond_6
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_7

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 152
    :cond_7
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_8

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 153
    :cond_8
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 154
    :cond_9
    instance-of v2, v1, Ljava/util/Date;

    if-eqz v2, :cond_a

    new-instance v2, Lo/writeSFixed32NoTag;

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 155
    :cond_a
    instance-of v2, v1, Lo/writeSInt32NoTag;

    if-eqz v2, :cond_b

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 156
    :cond_b
    instance-of v2, v1, Lo/writeBoolNoTag;

    if-eqz v2, :cond_c

    check-cast v1, Lo/writeEnumNoTag;

    goto :goto_3

    .line 157
    :cond_c
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Lo/writeEnumNoTag;

    .line 159
    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50087
    iget-object v2, p2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_d

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_d
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_e
    return-void
.end method

.method private final extraCallback(Lo/onSuggestionClick;)Ljava/lang/String;
    .locals 10

    .line 41
    new-instance v0, Lo/writeSInt32NoTag;

    invoke-direct {v0}, Lo/writeSInt32NoTag;-><init>()V

    .line 2018
    iget-object v1, p1, Lo/onSuggestionClick;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_0

    :cond_0
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 3058
    :goto_0
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_1

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1
    const-string v3, "message"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4016
    iget-object v1, p1, Lo/onSuggestionClick;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1

    :cond_2
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 5058
    :goto_1
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_3

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_3
    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6017
    iget v1, p1, Lo/onSuggestionClick;->onMessageChannelReady:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "DEBUG"

    goto :goto_2

    :pswitch_1
    const-string v1, "EMERGENCY"

    goto :goto_2

    :pswitch_2
    const-string v1, "CRITICAL"

    goto :goto_2

    :pswitch_3
    const-string v1, "ERROR"

    goto :goto_2

    :pswitch_4
    const-string v1, "WARN"

    goto :goto_2

    :pswitch_5
    const-string v1, "INFO"

    goto :goto_2

    :pswitch_6
    const-string v1, "DEBUG"

    goto :goto_2

    :pswitch_7
    const-string v1, "TRACE"

    .line 7080
    :goto_2
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 8058
    iget-object v1, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9025
    iget-object v1, p1, Lo/onSuggestionClick;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 9080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_3

    :cond_4
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 10058
    :goto_3
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_5

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_5
    const-string v3, "logger.name"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11026
    iget-object v1, p1, Lo/onSuggestionClick;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 11080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_4

    :cond_6
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 12058
    :goto_4
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_7

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_7
    const-string v3, "logger.thread_name"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12080
    new-instance v1, Lo/writeSFixed32NoTag;

    const-string v2, "1.4.3"

    invoke-direct {v1, v2}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 13058
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string v3, "logger.version"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 13080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_5

    :cond_8
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 14058
    :goto_5
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_9

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_9
    const-string v3, "application.version"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->asInterface()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 14080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_6

    :cond_a
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 15058
    :goto_6
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_b

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_b
    const-string v3, "application.package"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lo/setSearchView;->onNavigationEvent:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lo/setSearchView;->onNavigationEvent:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    .line 16019
    iget-wide v4, p1, Lo/onSuggestionClick;->extraCallback:J

    .line 55
    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    if-nez v2, :cond_c

    .line 16080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_7

    :cond_c
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-direct {v1, v2}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 17058
    :goto_7
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_d

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_d
    const-string v3, "date"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18023
    iget-object v1, p1, Lo/onSuggestionClick;->asBinder:Lo/adjustDropDownSizeAndPosition;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 19010
    iget-object v4, v1, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    .line 19018
    iget-object v4, v4, Lo/adjustDropDownSizeAndPosition$extraCallback;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v4, :cond_e

    .line 19080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_8

    :cond_e
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 20058
    :goto_8
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_f

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_f
    const-string v6, "network.client.connectivity"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21011
    iget-object v4, v1, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    .line 17087
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_11

    invoke-static {v4}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v4, 0x1

    :goto_a
    if-nez v4, :cond_14

    .line 22011
    iget-object v4, v1, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    if-nez v4, :cond_12

    .line 22080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_b

    :cond_12
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 23058
    :goto_b
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_13

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_13
    const-string v6, "network.client.sim_carrier.name"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24012
    :cond_14
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    if-ltz v4, :cond_17

    .line 25012
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    .line 17091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_15

    .line 25091
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_c

    :cond_15
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v4, v5

    .line 26058
    :goto_c
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_16

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_16
    const-string v6, "network.client.sim_carrier.id"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27013
    :cond_17
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    if-ltz v4, :cond_1a

    .line 28013
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    .line 17094
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_18

    .line 28091
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_d

    :cond_18
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v4, v5

    .line 29058
    :goto_d
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_19

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_19
    const-string v6, "network.client.uplink_kbps"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30014
    :cond_1a
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    if-ltz v4, :cond_1d

    .line 31014
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    .line 17097
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_1b

    .line 31091
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_e

    :cond_1b
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v4, v5

    .line 32058
    :goto_e
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_1c

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1c
    const-string v6, "network.client.downlink_kbps"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33015
    :cond_1d
    iget v4, v1, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    const/high16 v5, -0x80000000

    if-le v4, v5, :cond_20

    .line 34015
    iget v1, v1, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    .line 17100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-nez v1, :cond_1e

    .line 34091
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_f

    :cond_1e
    new-instance v4, Lo/writeSFixed32NoTag;

    invoke-direct {v4, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v1, v4

    .line 35058
    :goto_f
    iget-object v4, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_1f

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1f
    const-string v5, "network.client.signal_strength"

    invoke-virtual {v4, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36024
    :cond_20
    iget-object v1, p1, Lo/onSuggestionClick;->onTransact:Lo/ShareActionProvider;

    .line 37010
    iget-object v4, v1, Lo/ShareActionProvider;->onPostMessage:Ljava/lang/String;

    .line 35107
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_22

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_21

    goto :goto_10

    :cond_21
    const/4 v4, 0x0

    goto :goto_11

    :cond_22
    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-nez v4, :cond_25

    .line 38010
    iget-object v4, v1, Lo/ShareActionProvider;->onPostMessage:Ljava/lang/String;

    if-nez v4, :cond_23

    .line 38080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_12

    :cond_23
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 39058
    :goto_12
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_24

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_24
    const-string/jumbo v6, "usr.id"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40011
    :cond_25
    iget-object v4, v1, Lo/ShareActionProvider;->onMessageChannelReady:Ljava/lang/String;

    .line 35110
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_27

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_26

    goto :goto_13

    :cond_26
    const/4 v4, 0x0

    goto :goto_14

    :cond_27
    :goto_13
    const/4 v4, 0x1

    :goto_14
    if-nez v4, :cond_2a

    .line 41011
    iget-object v4, v1, Lo/ShareActionProvider;->onMessageChannelReady:Ljava/lang/String;

    if-nez v4, :cond_28

    .line 41080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_15

    :cond_28
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 42058
    :goto_15
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_29

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_29
    const-string/jumbo v6, "usr.name"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43012
    :cond_2a
    iget-object v4, v1, Lo/ShareActionProvider;->onNavigationEvent:Ljava/lang/String;

    .line 35113
    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2c

    :cond_2b
    const/4 v2, 0x1

    :cond_2c
    if-nez v2, :cond_2f

    .line 44012
    iget-object v1, v1, Lo/ShareActionProvider;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_2d

    .line 44080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_16

    :cond_2d
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 45058
    :goto_16
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_2e

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_2e
    const-string/jumbo v3, "usr.email"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2f
    invoke-direct {p0, p1, v0}, Lo/setSearchView;->ICustomTabsCallback(Lo/onSuggestionClick;Lo/writeSInt32NoTag;)V

    .line 45133
    iget-object v1, p0, Lo/setSearchView;->extraCallback:Lo/SearchView$SearchAutoComplete;

    .line 46021
    iget-object v2, p1, Lo/onSuggestionClick;->asInterface:Ljava/util/List;

    .line 45133
    invoke-interface {v1, v2}, Lo/SearchView$SearchAutoComplete;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, ","

    .line 45134
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    invoke-static/range {v2 .. v9}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/onDisconnectSetValue;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    .line 46080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_17

    :cond_30
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 47058
    :goto_17
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_31

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_31
    const-string v3, "ddtags"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48022
    iget-object v1, p1, Lo/onSuggestionClick;->onRelationshipValidationResult:Ljava/lang/Throwable;

    if-eqz v1, :cond_38

    .line 47123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_32

    .line 48080
    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_18

    :cond_32
    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v2}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 49058
    :goto_18
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v2, :cond_33

    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_33
    const-string v4, "error.kind"

    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47124
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    .line 49080
    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_19

    :cond_34
    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v2}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 50058
    :goto_19
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v2, :cond_35

    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_35
    const-string v4, "error.message"

    invoke-virtual {v3, v4, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "$this$loggableStackTrace"

    .line 47125
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50060
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 50061
    new-instance v3, Ljava/io/PrintWriter;

    move-object v4, v2

    check-cast v4, Ljava/io/Writer;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 50062
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stringWriter.toString()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_36

    .line 50063
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1a

    :cond_36
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 50065
    :goto_1a
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_37

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_37
    const-string v3, "error.stack"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50076
    :cond_38
    iget-object v1, p1, Lo/onSuggestionClick;->getInterfaceDescriptor:Ljava/lang/String;

    .line 50077
    iget-object p1, p1, Lo/onSuggestionClick;->warmup:Ljava/lang/String;

    if-eqz v1, :cond_3b

    if-nez v1, :cond_39

    .line 50078
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1b

    :cond_39
    new-instance v2, Lo/writeSFixed32NoTag;

    invoke-direct {v2, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 50080
    :goto_1b
    iget-object v2, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_3a

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_3a
    const-string v3, "dd.trace_id"

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    if-eqz p1, :cond_3e

    if-nez p1, :cond_3c

    .line 50082
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1c

    :cond_3c
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-direct {v1, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    .line 50084
    :goto_1c
    iget-object v1, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez p1, :cond_3d

    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_3d
    const-string v2, "dd.span_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonLog.toString()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 29
    check-cast p1, Lo/onSuggestionClick;

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    invoke-direct {p0, p1}, Lo/setSearchView;->extraCallback(Lo/onSuggestionClick;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
