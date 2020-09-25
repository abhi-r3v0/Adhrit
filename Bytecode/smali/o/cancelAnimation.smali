.class public final Lo/cancelAnimation;
.super Lo/setScale;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setScale<",
        "TI;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setScaleType<",
            "TI;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lo/setScale;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "FwdControllerListener2"

    .line 32
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TI;",
            "Lo/setScaleType$extraCallback;",
            ")V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 56
    :try_start_0
    iget-object v2, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setScaleType;

    if-eqz v2, :cond_0

    .line 58
    invoke-interface {v2, p1, p2, p3}, Lo/setScaleType;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onFinalImageSet"

    .line 62
    invoke-direct {p0, v3, v2}, Lo/cancelAnimation;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized extraCallback(Lo/setScaleType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setScaleType<",
            "TI;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;Lo/setScaleType$extraCallback;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    :try_start_0
    iget-object v2, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setScaleType;

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v2, p1, p2, p3}, Lo/setScaleType;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;Lo/setScaleType$extraCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onFailure"

    .line 78
    invoke-direct {p0, v3, v2}, Lo/cancelAnimation;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/setScaleType$extraCallback;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 88
    :try_start_0
    iget-object v2, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setScaleType;

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2, p1, p2}, Lo/setScaleType;->onMessageChannelReady(Ljava/lang/String;Lo/setScaleType$extraCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onRelease"

    .line 94
    invoke-direct {p0, v3, v2}, Lo/cancelAnimation;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 40
    :try_start_0
    iget-object v2, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setScaleType;

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v2, p1, p2, p3}, Lo/setScaleType;->onPostMessage(Ljava/lang/String;Ljava/lang/Object;Lo/setScaleType$extraCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ForwardingControllerListener2 exception in onSubmit"

    .line 46
    invoke-direct {p0, v3, v2}, Lo/cancelAnimation;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized onPostMessage(Lo/setScaleType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setScaleType<",
            "TI;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lo/cancelAnimation;->onMessageChannelReady:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
