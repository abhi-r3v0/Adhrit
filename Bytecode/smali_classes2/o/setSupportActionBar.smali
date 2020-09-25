.class public final Lo/setSupportActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTheme;


# instance fields
.field private final ICustomTabsCallback:Lo/setCurrentControllerInfo;

.field private final extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/getSupportActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 25
    new-instance v0, Lo/setSupportActionBar$3;

    invoke-direct {v0, p0, p1}, Lo/setSupportActionBar$3;-><init>(Lo/setSupportActionBar;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/setSupportActionBar;->extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 41
    new-instance v0, Lo/setSupportActionBar$4;

    invoke-direct {v0, p0, p1}, Lo/setSupportActionBar$4;-><init>(Lo/setSupportActionBar;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/setSupportActionBar;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/getSupportActionBar;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

    .line 85
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

    .line 92
    :goto_0
    iget-object p1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 93
    iget-object p1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

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

    :try_start_0
    const-string v0, "work_spec_id"

    .line 95
    invoke-static {p1, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "system_id"

    .line 96
    invoke-static {p1, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 103
    new-instance v3, Lo/getSupportActionBar;

    invoke-direct {v3, v0, v2}, Lo/getSupportActionBar;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 109
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 111
    throw v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 65
    iget-object v0, p0, Lo/setSupportActionBar;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 68
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 72
    :goto_0
    iget-object p1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 2353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 2354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 74
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 75
    iget-object v1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 2395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 78
    iget-object v1, p0, Lo/setSupportActionBar;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 3096
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v2, :cond_1

    .line 3097
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 77
    iget-object v2, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 78
    iget-object v2, p0, Lo/setSupportActionBar;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 4096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_2

    .line 4097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    :cond_2
    throw v1
.end method

.method public final onPostMessage(Lo/getSupportActionBar;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 53
    iget-object v0, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

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

    .line 55
    :try_start_0
    iget-object v0, p0, Lo/setSupportActionBar;->extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 56
    iget-object p1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p1, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/setSupportActionBar;->ICustomTabsCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 59
    throw p1
.end method
