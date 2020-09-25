.class public final Lo/getStrokeColor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:I

.field private static final extraCallback:Ljava/lang/Object;

.field private static onNavigationEvent:Lo/getStrokeColor;


# instance fields
.field private onPostMessage:Lo/getStrokeColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getStrokeColor;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage()Lo/getStrokeColor;
    .locals 3
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .line 40
    sget-object v0, Lo/getStrokeColor;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lo/getStrokeColor;->onNavigationEvent:Lo/getStrokeColor;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lo/getStrokeColor;->onNavigationEvent:Lo/getStrokeColor;

    .line 43
    iget-object v2, v1, Lo/getStrokeColor;->onPostMessage:Lo/getStrokeColor;

    sput-object v2, Lo/getStrokeColor;->onNavigationEvent:Lo/getStrokeColor;

    const/4 v2, 0x0

    .line 44
    iput-object v2, v1, Lo/getStrokeColor;->onPostMessage:Lo/getStrokeColor;

    .line 45
    sget v2, Lo/getStrokeColor;->ICustomTabsCallback:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lo/getStrokeColor;->ICustomTabsCallback:I

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 48
    :cond_0
    monitor-exit v0

    .line 50
    new-instance v0, Lo/getStrokeColor;

    invoke-direct {v0}, Lo/getStrokeColor;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 3

    .line 130
    sget-object v0, Lo/getStrokeColor;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget v1, Lo/getStrokeColor;->ICustomTabsCallback:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 133
    sget v1, Lo/getStrokeColor;->ICustomTabsCallback:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lo/getStrokeColor;->ICustomTabsCallback:I

    .line 135
    sget-object v1, Lo/getStrokeColor;->onNavigationEvent:Lo/getStrokeColor;

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lo/getStrokeColor;->onNavigationEvent:Lo/getStrokeColor;

    iput-object v1, p0, Lo/getStrokeColor;->onPostMessage:Lo/getStrokeColor;

    .line 138
    :cond_0
    sput-object p0, Lo/getStrokeColor;->onNavigationEvent:Lo/getStrokeColor;

    .line 140
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
