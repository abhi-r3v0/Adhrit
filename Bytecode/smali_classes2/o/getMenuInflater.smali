.class public final Lo/getMenuInflater;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setContentView;


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/extraCallback$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onNavigationEvent:Lo/setCurrentControllerInfo;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 31
    new-instance v0, Lo/getMenuInflater$2;

    invoke-direct {v0, p0, p1}, Lo/getMenuInflater$2;-><init>(Lo/getMenuInflater;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getMenuInflater;->extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 53
    new-instance v0, Lo/getMenuInflater$5;

    invoke-direct {v0, p0, p1}, Lo/getMenuInflater$5;-><init>(Lo/getMenuInflater;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getMenuInflater;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 60
    new-instance v0, Lo/getMenuInflater$3;

    invoke-direct {v0, p0, p1}, Lo/getMenuInflater$3;-><init>(Lo/getMenuInflater;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/getMenuInflater;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 4

    .line 83
    iget-object v0, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 84
    iget-object v0, p0, Lo/getMenuInflater;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 87
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 91
    :goto_0
    iget-object p1, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 1351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 1353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 1354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 93
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 94
    iget-object v1, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 1395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v1, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 97
    iget-object v1, p0, Lo/getMenuInflater;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 2096
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v2, :cond_1

    .line 2097
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 96
    iget-object v2, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 97
    iget-object v2, p0, Lo/getMenuInflater;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 3096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_2

    .line 3097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    :cond_2
    throw v1
.end method

.method public final onPostMessage()V
    .locals 5

    .line 103
    iget-object v0, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 104
    iget-object v0, p0, Lo/getMenuInflater;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 3351
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 3352
    iget-object v2, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    .line 3353
    iget-object v1, v1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 3354
    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v1, 0x0

    .line 107
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 108
    iget-object v2, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    .line 3395
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v2, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 111
    iget-object v2, p0, Lo/getMenuInflater;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 4096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_0

    .line 4097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    .line 110
    iget-object v3, p0, Lo/getMenuInflater;->onNavigationEvent:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 111
    iget-object v3, p0, Lo/getMenuInflater;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 5096
    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v4, :cond_1

    .line 5097
    iget-object v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    :cond_1
    throw v2
.end method
