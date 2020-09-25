.class public final Lo/supportRequestWindowFeature$5;
.super Lo/supportRequestWindowFeature;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/supportRequestWindowFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Ljava/util/UUID;

.field final synthetic onPostMessage:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method public constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/util/UUID;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/supportRequestWindowFeature$5;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    iput-object p2, p0, Lo/supportRequestWindowFeature$5;->onNavigationEvent:Ljava/util/UUID;

    invoke-direct {p0}, Lo/supportRequestWindowFeature;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 3

    .line 120
    iget-object v0, p0, Lo/supportRequestWindowFeature$5;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 1311
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v2, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v2, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 123
    :try_start_0
    iget-object v1, p0, Lo/supportRequestWindowFeature$5;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    iget-object v2, p0, Lo/supportRequestWindowFeature$5;->onNavigationEvent:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/supportRequestWindowFeature$5;->onMessageChannelReady(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V

    .line 1395
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 128
    iget-object v0, p0, Lo/supportRequestWindowFeature$5;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 2321
    iget-object v1, v0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 3311
    iget-object v2, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 3331
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 2082
    invoke-static {v1, v2, v0}, Lo/getIcon;->onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 126
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 127
    throw v1
.end method
