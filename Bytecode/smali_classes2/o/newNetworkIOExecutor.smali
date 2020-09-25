.class public final Lo/newNetworkIOExecutor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/newIntentHandleExecutor;


# instance fields
.field private final ICustomTabsCallback:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/setCurrentControllerInfo;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 23
    new-instance v0, Lo/newNetworkIOExecutor$3;

    invoke-direct {v0, p0, p1}, Lo/newNetworkIOExecutor$3;-><init>(Lo/newNetworkIOExecutor;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/newNetworkIOExecutor;->ICustomTabsCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 140
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 6234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 6251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 6252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 147
    :goto_0
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 148
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 7323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 7324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 7328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 151
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    .line 160
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return v3

    :catchall_0
    move-exception v0

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 161
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 162
    throw v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 114
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 4234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 4251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 4252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 121
    :goto_0
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 122
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 5323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 5324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 5328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 124
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 132
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 132
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 134
    throw v0
.end method

.method public final onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 48
    iget-object v0, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 1351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 50
    :try_start_0
    iget-object v0, p0, Lo/newNetworkIOExecutor;->ICustomTabsCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 54
    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 60
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 2251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 2252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 67
    :goto_0
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 68
    iget-object p1, p0, Lo/newNetworkIOExecutor;->onMessageChannelReady:Lo/setCurrentControllerInfo;

    .line 3323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 3324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 3328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 71
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 73
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    .line 80
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return v3

    :catchall_0
    move-exception v0

    .line 80
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 82
    throw v0
.end method
