.class public final Lo/onPrepareSubMenu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onSubmitQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPrepareSubMenu$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onSubmitQuery<",
        "Lo/overwriteServerCache;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0018\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0002H\u0002J\u0018\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0002H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0002H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/datadog/android/tracing/internal/domain/SpanSerializer;",
        "Lcom/datadog/android/core/internal/domain/Serializer;",
        "Ldatadog/opentracing/DDSpan;",
        "timeProvider",
        "Lcom/datadog/android/core/internal/time/TimeProvider;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "userInfoProvider",
        "Lcom/datadog/android/log/internal/user/UserInfoProvider;",
        "envName",
        "",
        "(Lcom/datadog/android/core/internal/time/TimeProvider;Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;Lcom/datadog/android/log/internal/user/UserInfoProvider;Ljava/lang/String;)V",
        "addLogNetworkInfo",
        "",
        "networkInfo",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo;",
        "jsonLog",
        "Lcom/google/gson/JsonObject;",
        "addLogUserInfo",
        "userInfo",
        "Lcom/datadog/android/log/internal/user/UserInfo;",
        "addMeta",
        "jsonObject",
        "model",
        "addMetrics",
        "serialize",
        "serializeSpan",
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


# instance fields
.field private final extraCallback:Lo/showSoftInputIfNecessary;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/SearchView$OnCloseListener;

.field private final onPostMessage:Lo/onActionViewExpanded;


# direct methods
.method public constructor <init>(Lo/SearchView$OnCloseListener;Lo/onActionViewExpanded;Lo/showSoftInputIfNecessary;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "timeProvider"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userInfoProvider"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "envName"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onPrepareSubMenu;->onNavigationEvent:Lo/SearchView$OnCloseListener;

    iput-object p2, p0, Lo/onPrepareSubMenu;->onPostMessage:Lo/onActionViewExpanded;

    iput-object p3, p0, Lo/onPrepareSubMenu;->extraCallback:Lo/showSoftInputIfNecessary;

    iput-object p4, p0, Lo/onPrepareSubMenu;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method private static onPostMessage(Lo/writeSInt32NoTag;Lo/overwriteServerCache;)V
    .locals 5

    .line 77
    new-instance p1, Lo/writeSInt32NoTag;

    invoke-direct {p1}, Lo/writeSInt32NoTag;-><init>()V

    const/4 v0, 0x0

    .line 50063
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 50064
    sget-object v1, Lo/loadUserWrites;->onPostMessage:Ljava/util/Map;

    :cond_0
    const-string v2, "model.metrics"

    .line 78
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 50065
    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1

    :cond_1
    new-instance v4, Lo/writeSFixed32NoTag;

    invoke-direct {v4, v2}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v2, v4

    .line 50067
    :goto_1
    iget-object v4, p1, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v2, :cond_2

    sget-object v2, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_2
    invoke-virtual {v4, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 v0, 0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_4

    .line 50071
    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_2

    :cond_4
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-direct {v1, v0}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v0, v1

    .line 50073
    :goto_2
    iget-object v1, p1, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v0, :cond_5

    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_5
    const-string v2, "_top_level"

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_6
    check-cast p1, Lo/writeEnumNoTag;

    .line 50075
    iget-object p0, p0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string v0, "metrics"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 15
    check-cast p1, Lo/overwriteServerCache;

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lo/onPrepareSubMenu;->onNavigationEvent:Lo/SearchView$OnCloseListener;

    invoke-interface {v0}, Lo/SearchView$OnCloseListener;->onMessageChannelReady()J

    move-result-wide v0

    .line 1043
    new-instance v2, Lo/writeSInt32NoTag;

    invoke-direct {v2}, Lo/writeSInt32NoTag;-><init>()V

    const/4 v3, 0x0

    .line 1045
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v6}, Lo/removeAllEventRegistrations;->onMessageChannelReady(I)I

    move-result v7

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.Long.toString(this, checkRadix(radix))"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_0

    .line 3080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_0

    :cond_0
    new-instance v7, Lo/writeSFixed32NoTag;

    invoke-direct {v7, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 4058
    :goto_0
    iget-object v7, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_1

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1
    const-string/jumbo v8, "trace_id"

    invoke-virtual {v7, v8, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v6}, Lo/removeAllEventRegistrations;->onMessageChannelReady(I)I

    move-result v4

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_2

    .line 6080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1

    :cond_2
    new-instance v7, Lo/writeSFixed32NoTag;

    invoke-direct {v7, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 7058
    :goto_1
    iget-object v7, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_3

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_3
    const-string/jumbo v8, "span_id"

    invoke-virtual {v7, v8, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v6}, Lo/removeAllEventRegistrations;->onMessageChannelReady(I)I

    move-result v4

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_4

    .line 9080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_2

    :cond_4
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 10058
    :goto_2
    iget-object v5, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_5

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_5
    const-string v6, "parent_id"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11169
    iget-object v4, v3, Lo/loadUserWrites;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, v3, Lo/loadUserWrites;->onNavigationEvent:Ljava/lang/String;

    .line 12080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    .line 13058
    iget-object v5, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_6

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_6
    const-string/jumbo v6, "resource"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14177
    iget-object v4, v3, Lo/loadUserWrites;->onNavigationEvent:Ljava/lang/String;

    .line 15080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    .line 16058
    iget-object v5, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_7

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_7
    const-string v6, "name"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17157
    iget-object v4, v3, Lo/loadUserWrites;->onMessageChannelReady:Ljava/lang/String;

    .line 18080
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    .line 19058
    iget-object v5, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_8

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_8
    const-string/jumbo v6, "service"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19374
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 1051
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_9

    .line 20091
    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_3

    :cond_9
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v4}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v4, v5

    .line 21058
    :goto_3
    iget-object v5, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v4, :cond_a

    sget-object v4, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_a
    const-string v6, "duration"

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21369
    iget-wide v4, p1, Lo/overwriteServerCache;->extraCallback:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_b

    iget-wide v4, p1, Lo/overwriteServerCache;->extraCallback:J

    goto :goto_4

    :cond_b
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p1, Lo/overwriteServerCache;->ICustomTabsCallback:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    :goto_4
    add-long/2addr v4, v0

    .line 1052
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_c

    .line 22091
    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_5

    :cond_c
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-direct {v1, v0}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v0, v1

    .line 23058
    :goto_5
    iget-object v1, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v0, :cond_d

    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_d
    const-string/jumbo v4, "start"

    invoke-virtual {v1, v4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24185
    iget-boolean v0, v3, Lo/loadUserWrites;->extraCallback:Z

    .line 23430
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "model.isError"

    .line 1053
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_e

    .line 25091
    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_6

    :cond_e
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-direct {v1, v0}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/Number;)V

    move-object v0, v1

    .line 26058
    :goto_6
    iget-object v1, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v0, :cond_f

    sget-object v0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_f
    const-string v4, "error"

    invoke-virtual {v1, v4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26080
    new-instance v0, Lo/writeSFixed32NoTag;

    const-string v1, "custom"

    invoke-direct {v0, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 27058
    iget-object v1, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27061
    new-instance v0, Lo/writeSInt32NoTag;

    invoke-direct {v0}, Lo/writeSInt32NoTag;-><init>()V

    .line 27348
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 27349
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 27350
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 28421
    :cond_10
    invoke-static {}, Lo/loadUserWrites;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v3

    .line 27352
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 27353
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    const-string v3, "model.meta"

    .line 27062
    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27171
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 27063
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_12

    .line 30080
    sget-object v3, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_a

    :cond_12
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v3}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 31058
    :goto_a
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v3, :cond_13

    sget-object v3, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_13
    invoke-virtual {v5, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 31080
    :cond_14
    new-instance v1, Lo/writeSFixed32NoTag;

    const-string v3, "android"

    invoke-direct {v1, v3}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 32058
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string v4, "_dd.source"

    invoke-virtual {v3, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32080
    new-instance v1, Lo/writeSFixed32NoTag;

    const-string v3, "1.4.3"

    invoke-direct {v1, v3}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    .line 33058
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string v4, "logger.version"

    invoke-virtual {v3, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27068
    sget-object v1, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    .line 33080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_b

    :cond_15
    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 34058
    :goto_b
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_16

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_16
    const-string v4, "application.version"

    invoke-virtual {v3, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27069
    sget-object v1, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    invoke-static {}, Lo/getMaxWidth;->asInterface()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    .line 34080
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_c

    :cond_17
    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 35058
    :goto_c
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_18

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_18
    const-string v4, "application.package"

    invoke-virtual {v3, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27070
    iget-object v1, p0, Lo/onPrepareSubMenu;->onPostMessage:Lo/onActionViewExpanded;

    invoke-interface {v1}, Lo/onActionViewExpanded;->onMessageChannelReady()Lo/adjustDropDownSizeAndPosition;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2b

    .line 36010
    iget-object v5, v1, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    .line 36018
    iget-object v5, v5, Lo/adjustDropDownSizeAndPosition$extraCallback;->getInterfaceDescriptor:Ljava/lang/String;

    if-nez v5, :cond_19

    .line 36080
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_d

    :cond_19
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 37058
    :goto_d
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_1a

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1a
    const-string v7, "network.client.connectivity"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38011
    iget-object v5, v1, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    .line 35094
    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1c

    invoke-static {v5}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v5, 0x0

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v5, 0x1

    :goto_f
    if-nez v5, :cond_1f

    .line 39011
    iget-object v5, v1, Lo/adjustDropDownSizeAndPosition;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_1d

    .line 39080
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_10

    :cond_1d
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 40058
    :goto_10
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_1e

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_1e
    const-string v7, "network.client.sim_carrier.name"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41012
    :cond_1f
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    if-ltz v5, :cond_22

    .line 42012
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->onPostMessage:I

    .line 35098
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_20

    .line 42080
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_11

    :cond_20
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 43058
    :goto_11
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_21

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_21
    const-string v7, "network.client.sim_carrier.id"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44013
    :cond_22
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    if-ltz v5, :cond_25

    .line 45013
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->onMessageChannelReady:I

    .line 35101
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_23

    .line 45080
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_12

    :cond_23
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 46058
    :goto_12
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_24

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_24
    const-string v7, "network.client.uplink_kbps"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47014
    :cond_25
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    if-ltz v5, :cond_28

    .line 48014
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->onNavigationEvent:I

    .line 35104
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_26

    .line 48080
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_13

    :cond_26
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 49058
    :goto_13
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_27

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_27
    const-string v7, "network.client.downlink_kbps"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50015
    :cond_28
    iget v5, v1, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    const/high16 v6, -0x80000000

    if-le v5, v6, :cond_2b

    .line 50016
    iget v1, v1, Lo/adjustDropDownSizeAndPosition;->asInterface:I

    .line 35107
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    .line 50017
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_14

    :cond_29
    new-instance v5, Lo/writeSFixed32NoTag;

    invoke-direct {v5, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 50019
    :goto_14
    iget-object v5, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_2a

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_2a
    const-string v6, "network.client.signal_strength"

    invoke-virtual {v5, v6, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27071
    :cond_2b
    iget-object v1, p0, Lo/onPrepareSubMenu;->extraCallback:Lo/showSoftInputIfNecessary;

    invoke-interface {v1}, Lo/showSoftInputIfNecessary;->onNavigationEvent()Lo/ShareActionProvider;

    move-result-object v1

    .line 50031
    iget-object v5, v1, Lo/ShareActionProvider;->onPostMessage:Ljava/lang/String;

    .line 50021
    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_15

    :cond_2c
    const/4 v5, 0x0

    goto :goto_16

    :cond_2d
    :goto_15
    const/4 v5, 0x1

    :goto_16
    if-nez v5, :cond_30

    .line 50032
    iget-object v5, v1, Lo/ShareActionProvider;->onPostMessage:Ljava/lang/String;

    if-nez v5, :cond_2e

    .line 50033
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_17

    :cond_2e
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 50035
    :goto_17
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_2f

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_2f
    const-string/jumbo v7, "usr.id"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50037
    :cond_30
    iget-object v5, v1, Lo/ShareActionProvider;->onMessageChannelReady:Ljava/lang/String;

    .line 50024
    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_32

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_31

    goto :goto_18

    :cond_31
    const/4 v5, 0x0

    goto :goto_19

    :cond_32
    :goto_18
    const/4 v5, 0x1

    :goto_19
    if-nez v5, :cond_35

    .line 50038
    iget-object v5, v1, Lo/ShareActionProvider;->onMessageChannelReady:Ljava/lang/String;

    if-nez v5, :cond_33

    .line 50039
    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1a

    :cond_33
    new-instance v6, Lo/writeSFixed32NoTag;

    invoke-direct {v6, v5}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 50041
    :goto_1a
    iget-object v6, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v5, :cond_34

    sget-object v5, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_34
    const-string/jumbo v7, "usr.name"

    invoke-virtual {v6, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50043
    :cond_35
    iget-object v5, v1, Lo/ShareActionProvider;->onNavigationEvent:Ljava/lang/String;

    .line 50027
    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_37

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_36

    goto :goto_1b

    :cond_36
    const/4 v3, 0x0

    :cond_37
    :goto_1b
    if-nez v3, :cond_3a

    .line 50044
    iget-object v1, v1, Lo/ShareActionProvider;->onNavigationEvent:Ljava/lang/String;

    if-nez v1, :cond_38

    .line 50045
    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1c

    :cond_38
    new-instance v3, Lo/writeSFixed32NoTag;

    invoke-direct {v3, v1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 50047
    :goto_1c
    iget-object v3, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez v1, :cond_39

    sget-object v1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_39
    const-string/jumbo v5, "usr.email"

    invoke-virtual {v3, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27073
    :cond_3a
    check-cast v0, Lo/writeEnumNoTag;

    .line 50049
    iget-object v1, v2, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string v3, "meta"

    invoke-virtual {v1, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-static {v2, p1}, Lo/onPrepareSubMenu;->onPostMessage(Lo/writeSInt32NoTag;Lo/overwriteServerCache;)V

    .line 1026
    new-instance p1, Lo/writeBoolNoTag;

    invoke-direct {p1, v4}, Lo/writeBoolNoTag;-><init>(B)V

    .line 1027
    check-cast v2, Lo/writeEnumNoTag;

    .line 50054
    iget-object v0, p1, Lo/writeBoolNoTag;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v0, Lo/writeSInt32NoTag;

    invoke-direct {v0}, Lo/writeSInt32NoTag;-><init>()V

    .line 1030
    check-cast p1, Lo/writeEnumNoTag;

    .line 50056
    iget-object v1, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    const-string/jumbo v2, "spans"

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    iget-object p1, p0, Lo/onPrepareSubMenu;->onMessageChannelReady:Ljava/lang/String;

    if-nez p1, :cond_3b

    .line 50058
    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    goto :goto_1d

    :cond_3b
    new-instance v1, Lo/writeSFixed32NoTag;

    invoke-direct {v1, p1}, Lo/writeSFixed32NoTag;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    .line 50060
    :goto_1d
    iget-object v1, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    if-nez p1, :cond_3c

    sget-object p1, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    :cond_3c
    const-string v2, "env"

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonObject.toString()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
