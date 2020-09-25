.class final Lo/fetchHuawei$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fetchHuawei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/media/AudioTrack;

.field private final extraCallback:Landroid/media/AudioTimestamp;

.field private onMessageChannelReady:J

.field private onNavigationEvent:J

.field private onPostMessage:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lo/fetchHuawei$extraCallback;->ICustomTabsCallback:Landroid/media/AudioTrack;

    .line 277
    new-instance p1, Landroid/media/AudioTimestamp;

    invoke-direct {p1}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object p1, p0, Lo/fetchHuawei$extraCallback;->extraCallback:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 4

    .line 302
    iget-object v0, p0, Lo/fetchHuawei$extraCallback;->extraCallback:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final extraCallback()J
    .locals 2

    .line 306
    iget-wide v0, p0, Lo/fetchHuawei$extraCallback;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onMessageChannelReady()Z
    .locals 7

    .line 287
    iget-object v0, p0, Lo/fetchHuawei$extraCallback;->ICustomTabsCallback:Landroid/media/AudioTrack;

    iget-object v1, p0, Lo/fetchHuawei$extraCallback;->extraCallback:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v1, p0, Lo/fetchHuawei$extraCallback;->extraCallback:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 290
    iget-wide v3, p0, Lo/fetchHuawei$extraCallback;->onMessageChannelReady:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 292
    iget-wide v3, p0, Lo/fetchHuawei$extraCallback;->onPostMessage:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lo/fetchHuawei$extraCallback;->onPostMessage:J

    .line 294
    :cond_0
    iput-wide v1, p0, Lo/fetchHuawei$extraCallback;->onMessageChannelReady:J

    .line 295
    iget-wide v3, p0, Lo/fetchHuawei$extraCallback;->onPostMessage:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/fetchHuawei$extraCallback;->onNavigationEvent:J

    :cond_1
    return v0
.end method
