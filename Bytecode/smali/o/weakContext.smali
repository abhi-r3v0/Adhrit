.class public final Lo/weakContext;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/concurrent/CancellationException;


# instance fields
.field private final ICustomTabsCallback:Lo/registerConversionListener;

.field private final ICustomTabsCallback$Stub:Lo/context;

.field private asInterface:Ljava/util/concurrent/atomic/AtomicLong;

.field public final onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/endConnection;

.field private final onPostMessage:Lo/ι;

.field private final onRelationshipValidationResult:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/AFLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Prefetching is not enabled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/weakContext;->extraCallback:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method public constructor <init>(Lo/ι;Ljava/util/Set;Ljava/util/Set;Lo/setPivotX;Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/onPostMessage$extraCallback;Lo/context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/\u03b9;",
            "Ljava/util/Set<",
            "Lo/registerConversionListener;",
            ">;",
            "Ljava/util/Set<",
            "Lo/AFLogger;",
            ">;",
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;",
            "Lo/endConnection;",
            "Lo/onPostMessage$extraCallback;",
            "Lo/context;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance p7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p7, p0, Lo/weakContext;->asInterface:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    iput-object p1, p0, Lo/weakContext;->onPostMessage:Lo/ι;

    .line 89
    new-instance p1, Lo/evictionCount$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/evictionCount$onMessageChannelReady;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lo/weakContext;->ICustomTabsCallback:Lo/registerConversionListener;

    .line 90
    new-instance p1, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lcom/dreamplug/androidapp/utils/network/MoshiGradientTypeAdapter$ICustomTabsCallback;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lo/weakContext;->onTransact:Lo/AFLogger;

    .line 91
    iput-object p4, p0, Lo/weakContext;->onRelationshipValidationResult:Lo/setPivotX;

    .line 92
    iput-object p5, p0, Lo/weakContext;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 96
    iput-object p6, p0, Lo/weakContext;->onNavigationEvent:Lo/endConnection;

    .line 101
    iput-object p8, p0, Lo/weakContext;->ICustomTabsCallback$Stub:Lo/context;

    return-void
.end method

.method private onMessageChannelReady(Lo/setDeviceTrackingDisabled;Lo/getHostPrefix;Lo/getHostPrefix$onMessageChannelReady;Ljava/lang/Object;Lo/registerConversionListener;Ljava/lang/String;)Lo/WorkDatabase;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getRootAlpha<",
            "TT;>;>;",
            "Lo/getHostPrefix;",
            "Lo/getHostPrefix$onMessageChannelReady;",
            "Ljava/lang/Object;",
            "Lo/registerConversionListener;",
            "Ljava/lang/String;",
            ")",
            "Lo/WorkDatabase<",
            "Lo/getRootAlpha<",
            "TT;>;>;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    .line 796
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 799
    new-instance v13, Lo/setUserEmails;

    move-object/from16 v2, p5

    .line 801
    invoke-direct {p0, v0, v2}, Lo/weakContext;->onNavigationEvent(Lo/getHostPrefix;Lo/registerConversionListener;)Lo/registerConversionListener;

    move-result-object v2

    iget-object v3, v1, Lo/weakContext;->onTransact:Lo/AFLogger;

    invoke-direct {v13, v2, v3}, Lo/setUserEmails;-><init>(Lo/registerConversionListener;Lo/AFLogger;)V

    .line 12201
    :try_start_0
    iget-object v2, v0, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    move-object/from16 v3, p3

    .line 809
    invoke-static {v2, v3}, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback(Lo/getHostPrefix$onMessageChannelReady;Lo/getHostPrefix$onMessageChannelReady;)Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v8

    .line 811
    new-instance v14, Lo/isPreInstalledApp;

    .line 13110
    iget-object v2, v1, Lo/weakContext;->asInterface:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    .line 13189
    iget-boolean v2, v0, Lo/getHostPrefix;->onPostMessage:Z

    if-nez v2, :cond_1

    .line 14150
    iget-object v2, v0, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 821
    invoke-static {v2}, Lo/setLayoutDirection;->onMessageChannelReady(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v10, 0x1

    .line 14197
    :goto_1
    iget-object v11, v0, Lo/getHostPrefix;->asInterface:Lo/getInstallVersion;

    .line 822
    iget-object v12, v1, Lo/weakContext;->ICustomTabsCallback$Stub:Lo/context;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    move-object v6, v13

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v12}, Lo/isPreInstalledApp;-><init>(Lo/getHostPrefix;Ljava/lang/String;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;ZZLo/getInstallVersion;Lo/context;)V

    .line 15033
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 15036
    new-instance v0, Lo/AFExecutor$1;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v14, v13}, Lo/AFExecutor$1;-><init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V

    .line 15038
    invoke-static {}, Lo/setHostName;->onPostMessage()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17020
    :try_start_1
    new-instance v2, Lo/AggregateException;

    invoke-direct {v2}, Lo/AggregateException;-><init>()V

    .line 16022
    invoke-virtual {v2, v0}, Lo/AggregateException;->onNavigationEvent(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object v2

    :goto_2
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 830
    throw v0
.end method

.method private onNavigationEvent(Lo/setDeviceTrackingDisabled;Lo/getHostPrefix;Lo/getHostPrefix$onMessageChannelReady;Ljava/lang/Object;Lo/getInstallVersion;)Lo/WorkDatabase;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setDeviceTrackingDisabled<",
            "Ljava/lang/Void;",
            ">;",
            "Lo/getHostPrefix;",
            "Lo/getHostPrefix$onMessageChannelReady;",
            "Ljava/lang/Object;",
            "Lo/getInstallVersion;",
            ")",
            "Lo/WorkDatabase<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 867
    new-instance v8, Lo/setUserEmails;

    const/4 v0, 0x0

    .line 869
    invoke-direct {p0, p2, v0}, Lo/weakContext;->onNavigationEvent(Lo/getHostPrefix;Lo/registerConversionListener;)Lo/registerConversionListener;

    move-result-object v0

    iget-object v1, p0, Lo/weakContext;->onTransact:Lo/AFLogger;

    invoke-direct {v8, v0, v1}, Lo/setUserEmails;-><init>(Lo/registerConversionListener;Lo/AFLogger;)V

    .line 17201
    :try_start_0
    iget-object v0, p2, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    .line 876
    invoke-static {v0, p3}, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback(Lo/getHostPrefix$onMessageChannelReady;Lo/getHostPrefix$onMessageChannelReady;)Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v5

    .line 878
    new-instance p3, Lo/isPreInstalledApp;

    .line 18110
    iget-object v0, p0, Lo/weakContext;->asInterface:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 881
    iget-object v7, p0, Lo/weakContext;->ICustomTabsCallback$Stub:Lo/context;

    move-object v0, p3

    move-object v1, p2

    move-object v3, v8

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lo/isPreInstalledApp;-><init>(Lo/getHostPrefix;Ljava/lang/String;Lo/unregisterConversionListener;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;Lo/getInstallVersion;Lo/context;)V

    .line 19028
    new-instance p2, Lo/AFExecutor;

    invoke-direct {p2, p1, p3, v8}, Lo/AFExecutor;-><init>(Lo/setDeviceTrackingDisabled;Lo/isPreInstalledApp;Lo/AFLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 21020
    new-instance p2, Lo/AggregateException;

    invoke-direct {p2}, Lo/AggregateException;-><init>()V

    .line 20022
    invoke-virtual {p2, p1}, Lo/AggregateException;->onNavigationEvent(Ljava/lang/Throwable;)Z

    return-object p2
.end method

.method private onNavigationEvent(Lo/getHostPrefix;Lo/registerConversionListener;)Lo/registerConversionListener;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 21232
    iget-object p2, p1, Lo/getHostPrefix;->postMessage:Lo/registerConversionListener;

    if-nez p2, :cond_0

    .line 900
    iget-object p1, p0, Lo/weakContext;->ICustomTabsCallback:Lo/registerConversionListener;

    return-object p1

    .line 902
    :cond_0
    new-instance p2, Lo/evictionCount$onMessageChannelReady;

    new-array v0, v0, [Lo/registerConversionListener;

    iget-object v3, p0, Lo/weakContext;->ICustomTabsCallback:Lo/registerConversionListener;

    aput-object v3, v0, v2

    .line 22232
    iget-object p1, p1, Lo/getHostPrefix;->postMessage:Lo/registerConversionListener;

    aput-object p1, v0, v1

    .line 902
    invoke-direct {p2, v0}, Lo/evictionCount$onMessageChannelReady;-><init>([Lo/registerConversionListener;)V

    return-object p2

    .line 23232
    :cond_1
    iget-object v3, p1, Lo/getHostPrefix;->postMessage:Lo/registerConversionListener;

    if-nez v3, :cond_2

    .line 905
    new-instance p1, Lo/evictionCount$onMessageChannelReady;

    new-array v0, v0, [Lo/registerConversionListener;

    iget-object v3, p0, Lo/weakContext;->ICustomTabsCallback:Lo/registerConversionListener;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lo/evictionCount$onMessageChannelReady;-><init>([Lo/registerConversionListener;)V

    return-object p1

    .line 907
    :cond_2
    new-instance v3, Lo/evictionCount$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lo/registerConversionListener;

    iget-object v5, p0, Lo/weakContext;->ICustomTabsCallback:Lo/registerConversionListener;

    aput-object v5, v4, v2

    aput-object p2, v4, v1

    .line 24232
    iget-object p1, p1, Lo/getHostPrefix;->postMessage:Lo/registerConversionListener;

    aput-object p1, v4, v0

    .line 908
    invoke-direct {v3, v4}, Lo/evictionCount$onMessageChannelReady;-><init>([Lo/registerConversionListener;)V

    return-object v3
.end method


# virtual methods
.method public final extraCallback(Lo/getHostPrefix;Ljava/lang/Object;Lo/getInstallVersion;)Lo/WorkDatabase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getHostPrefix;",
            "Ljava/lang/Object;",
            "Lo/getInstallVersion;",
            ")",
            "Lo/WorkDatabase<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lo/weakContext;->onRelationshipValidationResult:Lo/setPivotX;

    invoke-interface {v0}, Lo/setPivotX;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    sget-object p1, Lo/weakContext;->extraCallback:Ljava/util/concurrent/CancellationException;

    .line 5020
    new-instance p2, Lo/AggregateException;

    invoke-direct {p2}, Lo/AggregateException;-><init>()V

    .line 4022
    invoke-virtual {p2, p1}, Lo/AggregateException;->onNavigationEvent(Ljava/lang/Throwable;)Z

    return-object p2

    .line 470
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/weakContext;->onPostMessage:Lo/ι;

    if-eqz p1, :cond_6

    .line 7201
    iget-object v1, p1, Lo/getHostPrefix;->getInterfaceDescriptor:Lo/getHostPrefix$onMessageChannelReady;

    .line 7340
    iget v1, v1, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    .line 5294
    sget-object v2, Lo/getHostPrefix$onMessageChannelReady;->onPostMessage:Lo/getHostPrefix$onMessageChannelReady;

    .line 8340
    iget v2, v2, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 9154
    iget v1, p1, Lo/getHostPrefix;->onMessageChannelReady:I

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 10150
    :cond_2
    iget-object p1, p1, Lo/getHostPrefix;->ICustomTabsCallback:Landroid/net/Uri;

    .line 5285
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported uri scheme for encoded image fetch! Uri is: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5287
    invoke-static {p1}, Lo/ι;->onMessageChannelReady(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5282
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lo/ι;->onNavigationEvent()Lo/setDeviceTrackingDisabled;

    move-result-object v0

    goto :goto_2

    .line 5279
    :cond_4
    invoke-virtual {v0}, Lo/ι;->onMessageChannelReady()Lo/setDeviceTrackingDisabled;

    move-result-object v0

    :goto_2
    move-object v2, v0

    .line 472
    sget-object v4, Lo/getHostPrefix$onMessageChannelReady;->extraCallback:Lo/getHostPrefix$onMessageChannelReady;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lo/weakContext;->onNavigationEvent(Lo/setDeviceTrackingDisabled;Lo/getHostPrefix;Lo/getHostPrefix$onMessageChannelReady;Ljava/lang/Object;Lo/getInstallVersion;)Lo/WorkDatabase;

    move-result-object p1

    return-object p1

    .line 9111
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6215
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 12020
    new-instance p2, Lo/AggregateException;

    invoke-direct {p2}, Lo/AggregateException;-><init>()V

    .line 11022
    invoke-virtual {p2, p1}, Lo/AggregateException;->onNavigationEvent(Ljava/lang/Throwable;)Z

    return-object p2
.end method

.method public final onNavigationEvent(Lo/getHostPrefix;Ljava/lang/Object;Lo/getHostPrefix$onMessageChannelReady;Lo/registerConversionListener;Ljava/lang/String;)Lo/WorkDatabase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getHostPrefix;",
            "Ljava/lang/Object;",
            "Lo/getHostPrefix$onMessageChannelReady;",
            "Lo/registerConversionListener;",
            "Ljava/lang/String;",
            ")",
            "Lo/WorkDatabase<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;"
        }
    .end annotation

    .line 326
    :try_start_0
    iget-object v0, p0, Lo/weakContext;->onPostMessage:Lo/ι;

    .line 1306
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1310
    invoke-virtual {v0, p1}, Lo/ι;->onMessageChannelReady(Lo/getHostPrefix;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 2228
    iget-object v2, p1, Lo/getHostPrefix;->newSession:Lo/performOnAppAttribution;

    if-eqz v2, :cond_0

    .line 1313
    invoke-virtual {v0, v1}, Lo/ι;->ICustomTabsCallback(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 1316
    :cond_0
    iget-boolean v2, v0, Lo/ι;->onMessageChannelReady:Z

    if-eqz v2, :cond_1

    .line 1317
    invoke-virtual {v0, v1}, Lo/ι;->onNavigationEvent(Lo/setDeviceTrackingDisabled;)Lo/setDeviceTrackingDisabled;

    move-result-object v1

    .line 1319
    :cond_1
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 328
    invoke-direct/range {v0 .. v6}, Lo/weakContext;->onMessageChannelReady(Lo/setDeviceTrackingDisabled;Lo/getHostPrefix;Lo/getHostPrefix$onMessageChannelReady;Ljava/lang/Object;Lo/registerConversionListener;Ljava/lang/String;)Lo/WorkDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4020
    new-instance p2, Lo/AggregateException;

    invoke-direct {p2}, Lo/AggregateException;-><init>()V

    .line 3022
    invoke-virtual {p2, p1}, Lo/AggregateException;->onNavigationEvent(Ljava/lang/Throwable;)Z

    return-object p2
.end method
