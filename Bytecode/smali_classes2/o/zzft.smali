.class abstract Lo/zzft;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile onPostMessage:Landroid/os/Handler;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Runnable;

.field private final extraCallback:Lo/setChipStrokeWidthResource;

.field private volatile onNavigationEvent:J


# direct methods
.method constructor <init>(Lo/setChipStrokeWidthResource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo/zzft;->extraCallback:Lo/setChipStrokeWidthResource;

    .line 4
    new-instance v0, Lo/zzcp;

    invoke-direct {v0, p0, p1}, Lo/zzcp;-><init>(Lo/zzft;Lo/setChipStrokeWidthResource;)V

    iput-object v0, p0, Lo/zzft;->ICustomTabsCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/zzft;J)J
    .locals 0

    const-wide/16 p1, 0x0

    .line 27
    iput-wide p1, p0, Lo/zzft;->onNavigationEvent:J

    return-wide p1
.end method

.method private final onPostMessage()Landroid/os/Handler;
    .locals 3

    .line 20
    sget-object v0, Lo/zzft;->onPostMessage:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lo/zzft;->onPostMessage:Landroid/os/Handler;

    return-object v0

    .line 22
    :cond_0
    const-class v0, Lo/zzft;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lo/zzft;->onPostMessage:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lo/setUseController;

    iget-object v2, p0, Lo/zzft;->extraCallback:Lo/setChipStrokeWidthResource;

    invoke-interface {v2}, Lo/setChipStrokeWidthResource;->warmup()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/setUseController;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lo/zzft;->onPostMessage:Landroid/os/Handler;

    .line 25
    :cond_1
    sget-object v1, Lo/zzft;->onPostMessage:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lo/zzft;->onNavigationEvent:J

    .line 18
    invoke-direct {p0}, Lo/zzft;->onPostMessage()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/zzft;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ICustomTabsCallback(J)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Lo/zzft;->ICustomTabsCallback()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 8
    iget-object v0, p0, Lo/zzft;->extraCallback:Lo/setChipStrokeWidthResource;

    invoke-interface {v0}, Lo/setChipStrokeWidthResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    iput-wide v0, p0, Lo/zzft;->onNavigationEvent:J

    .line 9
    invoke-direct {p0}, Lo/zzft;->onPostMessage()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/zzft;->ICustomTabsCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lo/zzft;->extraCallback:Lo/setChipStrokeWidthResource;

    .line 12
    invoke-interface {v0}, Lo/setChipStrokeWidthResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract extraCallback()V
.end method

.method public final onNavigationEvent()Z
    .locals 5

    .line 16
    iget-wide v0, p0, Lo/zzft;->onNavigationEvent:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
