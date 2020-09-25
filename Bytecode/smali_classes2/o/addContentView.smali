.class public final Lo/addContentView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onConfigurationChanged;


# instance fields
.field private final onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/setCurrentControllerInfo;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 23
    new-instance v0, Lo/addContentView$2;

    invoke-direct {v0, p0, p1}, Lo/addContentView$2;-><init>(Lo/addContentView;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/addContentView;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 48
    iget-object v0, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

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
    iget-object v0, p0, Lo/addContentView;->onMessageChannelReady:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object p1, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 54
    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Ljava/util/List;
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

    const-string v1, "SELECT name FROM workname WHERE work_spec_id=?"

    .line 86
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

    .line 93
    :goto_0
    iget-object p1, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 94
    iget-object p1, p0, Lo/addContentView;->onNavigationEvent:Lo/setCurrentControllerInfo;

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

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 99
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 104
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 106
    throw v0
.end method
