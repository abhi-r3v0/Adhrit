.class public final Lo/onPostCreate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/attachBaseContext;


# instance fields
.field private final onNavigationEvent:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/setHasDecor;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setCurrentControllerInfo;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 25
    new-instance v0, Lo/onPostCreate$1;

    invoke-direct {v0, p0, p1}, Lo/onPostCreate$1;-><init>(Lo/onPostCreate;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onPostCreate;->onNavigationEvent:Lo/MediaSessionCompat$Callback$StubApi23;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT long_value FROM Preference where `key`=?"

    .line 62
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

    .line 69
    :goto_0
    iget-object p1, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 70
    iget-object p1, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

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

    .line 73
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 74
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 86
    throw v0
.end method

.method public final onMessageChannelReady(Lo/setHasDecor;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 50
    iget-object v0, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

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

    .line 52
    :try_start_0
    iget-object v0, p0, Lo/onPostCreate;->onNavigationEvent:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object p1, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/onPostCreate;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 56
    throw p1
.end method
