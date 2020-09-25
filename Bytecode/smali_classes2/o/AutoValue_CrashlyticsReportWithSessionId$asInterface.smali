.class final Lo/AutoValue_CrashlyticsReportWithSessionId$asInterface;
.super Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asInterface"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReportWithSessionId$asInterface;-><init>()V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V
    .locals 0

    .line 1311
    iput-object p2, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->ICustomTabsCallback:Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    return-void
.end method

.method final extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ")Z"
        }
    .end annotation

    .line 1316
    monitor-enter p1

    .line 1317
    :try_start_0
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;)Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1318
    invoke-static {p1, p3}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;

    const/4 p2, 0x1

    .line 1319
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1321
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1322
    monitor-exit p1

    throw p2
.end method

.method final onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Ljava/lang/Thread;)V
    .locals 0

    .line 1306
    iput-object p2, p1, Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;->onNavigationEvent:Ljava/lang/Thread;

    return-void
.end method

.method final onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1338
    monitor-enter p1

    .line 1339
    :try_start_0
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1340
    invoke-static {p1, p3}, Lo/AutoValue_CrashlyticsReportWithSessionId;->extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 1341
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1343
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1344
    monitor-exit p1

    throw p2
.end method

.method final onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            ")Z"
        }
    .end annotation

    .line 1327
    monitor-enter p1

    .line 1328
    :try_start_0
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onPostMessage(Lo/AutoValue_CrashlyticsReportWithSessionId;)Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1329
    invoke-static {p1, p3}, Lo/AutoValue_CrashlyticsReportWithSessionId;->onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;

    const/4 p2, 0x1

    .line 1330
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p2

    :cond_0
    const/4 p2, 0x0

    .line 1332
    monitor-exit p1

    return p2

    :catchall_0
    move-exception p2

    .line 1333
    monitor-exit p1

    throw p2
.end method
