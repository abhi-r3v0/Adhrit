.class public abstract Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

.field private final extraCallback:Lo/setCurrentControllerInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 2

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1049
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->extraCallback:Lo/setCurrentControllerInfo;

    return-void
.end method

.method private ICustomTabsCallback()Lo/getDrawerToggleDelegate$onNavigationEvent;
    .locals 2

    .line 1064
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->extraCallback:Lo/setCurrentControllerInfo;

    .line 1339
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 1340
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1341
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;
    .locals 3

    .line 3060
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->extraCallback:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2087
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3071
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-nez v0, :cond_0

    .line 3072
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    .line 3074
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    goto :goto_0

    .line 3077
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final onMessageChannelReady(Lo/getDrawerToggleDelegate$onNavigationEvent;)V
    .locals 1

    .line 3096
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne p1, v0, :cond_0

    .line 3097
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method protected abstract onNavigationEvent()Ljava/lang/String;
.end method
