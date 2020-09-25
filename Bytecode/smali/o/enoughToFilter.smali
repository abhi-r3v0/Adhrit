.class public final Lo/enoughToFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSearchViewTextMinWidthDp;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012JN\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010*0)2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00030,2\u0006\u0010-\u001a\u00020.H\u0002JU\u0010/\u001a\u0002002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010\'2\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010*0)2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00030,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0002\u00101R\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0010\u001a\u00020\u0011X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u00062"
    }
    d2 = {
        "Lcom/datadog/android/log/internal/logger/DatadogLogHandler;",
        "Lcom/datadog/android/log/internal/logger/LogHandler;",
        "serviceName",
        "",
        "loggerName",
        "writer",
        "Lcom/datadog/android/core/internal/data/Writer;",
        "Lcom/datadog/android/log/internal/domain/Log;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "timeProvider",
        "Lcom/datadog/android/core/internal/time/TimeProvider;",
        "userInfoProvider",
        "Lcom/datadog/android/log/internal/user/UserInfoProvider;",
        "bundleWithTraces",
        "",
        "sampler",
        "Lcom/datadog/android/core/internal/sampling/Sampler;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/datadog/android/core/internal/data/Writer;Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;Lcom/datadog/android/core/internal/time/TimeProvider;Lcom/datadog/android/log/internal/user/UserInfoProvider;ZLcom/datadog/android/core/internal/sampling/Sampler;)V",
        "getBundleWithTraces$dd_sdk_android_release",
        "()Z",
        "getLoggerName$dd_sdk_android_release",
        "()Ljava/lang/String;",
        "getNetworkInfoProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "getSampler$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/sampling/Sampler;",
        "getServiceName$dd_sdk_android_release",
        "getTimeProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/time/TimeProvider;",
        "getUserInfoProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/log/internal/user/UserInfoProvider;",
        "getWriter$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/data/Writer;",
        "createLog",
        "level",
        "",
        "message",
        "throwable",
        "",
        "attributes",
        "",
        "",
        "tags",
        "",
        "timestamp",
        "",
        "handleLog",
        "",
        "(ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Set;Ljava/lang/Long;)V",
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
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asBinder:Lo/showSoftInputIfNecessary;

.field private final asInterface:Lo/onActionViewCollapsed;

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/onActionViewExpanded;

.field private final onNavigationEvent:Lo/SearchView$OnCloseListener;

.field private final onPostMessage:Lo/getPreferredWidth;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPreferredWidth<",
            "Lo/onSuggestionClick;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/getPreferredWidth;Lo/onActionViewExpanded;Lo/SearchView$OnCloseListener;Lo/showSoftInputIfNecessary;ZLo/onActionViewCollapsed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/getPreferredWidth<",
            "Lo/onSuggestionClick;",
            ">;",
            "Lo/onActionViewExpanded;",
            "Lo/SearchView$OnCloseListener;",
            "Lo/showSoftInputIfNecessary;",
            "Z",
            "Lo/onActionViewCollapsed;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "serviceName"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerName"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "writer"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "timeProvider"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userInfoProvider"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sampler"

    invoke-static {p8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/enoughToFilter;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/enoughToFilter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/enoughToFilter;->onPostMessage:Lo/getPreferredWidth;

    iput-object p4, p0, Lo/enoughToFilter;->onMessageChannelReady:Lo/onActionViewExpanded;

    iput-object p5, p0, Lo/enoughToFilter;->onNavigationEvent:Lo/SearchView$OnCloseListener;

    iput-object p6, p0, Lo/enoughToFilter;->asBinder:Lo/showSoftInputIfNecessary;

    iput-boolean p7, p0, Lo/enoughToFilter;->onTransact:Z

    iput-object p8, p0, Lo/enoughToFilter;->asInterface:Lo/onActionViewCollapsed;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;Ljava/util/Set;Ljava/lang/Long;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-string v2, "message"

    move-object/from16 v6, p2

    invoke-static {v6, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attributes"

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "tags"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 41
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lo/enoughToFilter;->onNavigationEvent:Lo/SearchView$OnCloseListener;

    invoke-interface {v2}, Lo/SearchView$OnCloseListener;->onNavigationEvent()J

    move-result-wide v2

    :goto_0
    move-wide v7, v2

    .line 42
    iget-object v2, v0, Lo/enoughToFilter;->asInterface:Lo/onActionViewCollapsed;

    invoke-interface {v2}, Lo/onActionViewCollapsed;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1064
    iget-boolean v2, v0, Lo/enoughToFilter;->onTransact:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lo/withMinDelayAfterFailure;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1065
    invoke-static {}, Lo/withMinDelayAfterFailure;->extraCallback()Lo/closeIfNeverConnected;

    move-result-object v2

    const-string/jumbo v4, "tracer"

    .line 1066
    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$traceId"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2008
    invoke-interface {v2}, Lo/closeIfNeverConnected;->ICustomTabsCallback()Lo/retry;

    move-result-object v4

    .line 2009
    instance-of v4, v4, Lo/overwriteServerCache;

    if-eqz v4, :cond_1

    .line 2010
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v5, "$this$spanId"

    .line 1067
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4015
    invoke-interface {v2}, Lo/closeIfNeverConnected;->ICustomTabsCallback()Lo/retry;

    move-result-object v2

    .line 4016
    instance-of v2, v2, Lo/overwriteServerCache;

    if-eqz v2, :cond_2

    .line 4017
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    move-object/from16 v17, v2

    move-object/from16 v16, v4

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v16

    .line 1069
    :goto_3
    new-instance v2, Lo/onSuggestionClick;

    .line 1070
    iget-object v4, v0, Lo/enoughToFilter;->extraCallback:Ljava/lang/String;

    .line 1076
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    .line 1077
    iget-object v1, v0, Lo/enoughToFilter;->onMessageChannelReady:Lo/onActionViewExpanded;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lo/onActionViewExpanded;->onMessageChannelReady()Lo/adjustDropDownSizeAndPosition;

    move-result-object v1

    move-object v12, v1

    goto :goto_4

    :cond_4
    move-object v12, v3

    .line 1078
    :goto_4
    iget-object v1, v0, Lo/enoughToFilter;->asBinder:Lo/showSoftInputIfNecessary;

    invoke-interface {v1}, Lo/showSoftInputIfNecessary;->onNavigationEvent()Lo/ShareActionProvider;

    move-result-object v13

    .line 1079
    iget-object v14, v0, Lo/enoughToFilter;->ICustomTabsCallback:Ljava/lang/String;

    .line 1080
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v3, "Thread.currentThread()"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v1, "Thread.currentThread().name"

    invoke-static {v15, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p3

    .line 1069
    invoke-direct/range {v3 .. v17}, Lo/onSuggestionClick;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/util/List;Ljava/lang/Throwable;Lo/adjustDropDownSizeAndPosition;Lo/ShareActionProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, v0, Lo/enoughToFilter;->onPostMessage:Lo/getPreferredWidth;

    invoke-interface {v1, v2}, Lo/getPreferredWidth;->onPostMessage(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
