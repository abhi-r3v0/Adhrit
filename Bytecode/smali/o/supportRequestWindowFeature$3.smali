.class public final Lo/supportRequestWindowFeature$3;
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
.field final synthetic ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

.field final synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lo/supportRequestWindowFeature$3;->ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

    iput-object p2, p0, Lo/supportRequestWindowFeature$3;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0}, Lo/supportRequestWindowFeature;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 4

    .line 147
    iget-object v0, p0, Lo/supportRequestWindowFeature$3;->ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

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

    .line 150
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lo/supportRequestWindowFeature$3;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v1, v2}, Lo/onPostResume;->asInterface(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    iget-object v3, p0, Lo/supportRequestWindowFeature$3;->ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

    invoke-static {v3, v2}, Lo/supportRequestWindowFeature$3;->onMessageChannelReady(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    :cond_0
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 159
    iget-object v0, p0, Lo/supportRequestWindowFeature$3;->ICustomTabsCallback:Lo/PlaybackStateCompat$RepeatMode;

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

    .line 157
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 158
    throw v1
.end method
