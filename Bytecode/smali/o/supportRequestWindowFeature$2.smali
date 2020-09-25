.class public final Lo/supportRequestWindowFeature$2;
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
.field final synthetic ICustomTabsCallback:Ljava/lang/String;

.field final synthetic onMessageChannelReady:Z

.field final synthetic onPostMessage:Lo/PlaybackStateCompat$RepeatMode;


# direct methods
.method public constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Z)V
    .locals 0

    .line 176
    iput-object p1, p0, Lo/supportRequestWindowFeature$2;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    iput-object p2, p0, Lo/supportRequestWindowFeature$2;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p3, p0, Lo/supportRequestWindowFeature$2;->onMessageChannelReady:Z

    invoke-direct {p0}, Lo/supportRequestWindowFeature;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 4

    .line 180
    iget-object v0, p0, Lo/supportRequestWindowFeature$2;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

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

    .line 183
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lo/supportRequestWindowFeature$2;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/onPostResume;->asBinder(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lo/supportRequestWindowFeature$2;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    invoke-static {v3, v2}, Lo/supportRequestWindowFeature$2;->onMessageChannelReady(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    :cond_0
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 193
    iget-boolean v0, p0, Lo/supportRequestWindowFeature$2;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lo/supportRequestWindowFeature$2;->onPostMessage:Lo/PlaybackStateCompat$RepeatMode;

    .line 2321
    iget-object v1, v0, Lo/PlaybackStateCompat$RepeatMode;->ICustomTabsCallback:Lo/getActions;

    .line 3311
    iget-object v2, v0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 3331
    iget-object v0, v0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 2082
    invoke-static {v1, v2, v0}, Lo/getIcon;->onMessageChannelReady(Lo/getActions;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 190
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 191
    throw v1
.end method
