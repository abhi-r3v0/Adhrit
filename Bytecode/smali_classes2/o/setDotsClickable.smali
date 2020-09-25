.class public final Lo/setDotsClickable;
.super Ljava/lang/Object;


# static fields
.field private static ICustomTabsCallback:Lo/setDotsClickable;


# instance fields
.field final onNavigationEvent:Lo/preferLastSpan$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lo/setDotsClickable;

    invoke-direct {v0}, Lo/setDotsClickable;-><init>()V

    .line 11
    const-class v1, Lo/setDotsClickable;

    monitor-enter v1

    .line 12
    :try_start_0
    sput-object v0, Lo/setDotsClickable;->ICustomTabsCallback:Lo/setDotsClickable;

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/preferLastSpan$onNavigationEvent;

    invoke-direct {v0}, Lo/preferLastSpan$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/setDotsClickable;->onNavigationEvent:Lo/preferLastSpan$onNavigationEvent;

    .line 3
    new-instance v0, Lo/PointsServiceCurrency;

    invoke-direct {v0}, Lo/PointsServiceCurrency;-><init>()V

    return-void
.end method

.method static onPostMessage()Lo/setDotsClickable;
    .locals 2

    .line 5
    const-class v0, Lo/setDotsClickable;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lo/setDotsClickable;->ICustomTabsCallback:Lo/setDotsClickable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1
.end method
