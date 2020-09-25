.class public final Lo/getColorSectionPos;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private extraCallback:J

.field private onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/getColorSectionPos;->onNavigationEvent:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getColorSectionPos;->onMessageChannelReady:Ljava/lang/Object;

    iput-wide p1, p0, Lo/getColorSectionPos;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final onPostMessage()Z
    .locals 7

    iget-object v0, p0, Lo/getColorSectionPos;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    iget-wide v3, p0, Lo/getColorSectionPos;->onNavigationEvent:J

    iget-wide v5, p0, Lo/getColorSectionPos;->extraCallback:J

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    iput-wide v1, p0, Lo/getColorSectionPos;->onNavigationEvent:J

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
