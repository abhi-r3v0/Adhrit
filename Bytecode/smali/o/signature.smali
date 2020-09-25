.class public abstract Lo/signature;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onAttributionFailureNative;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/onAttributionFailureNative<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/AFSensorManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AFSensorManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/signature;->onPostMessage:Ljava/util/Set;

    .line 24
    new-instance v0, Lo/AFSensorManager;

    invoke-direct {v0}, Lo/AFSensorManager;-><init>()V

    iput-object v0, p0, Lo/signature;->extraCallback:Lo/AFSensorManager;

    return-void
.end method

.method private onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lo/signature;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/signature;->extraCallback:Lo/AFSensorManager;

    invoke-virtual {v0}, Lo/AFSensorManager;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/signature;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lo/signature;->extraCallback:Lo/AFSensorManager;

    invoke-virtual {v0, p1}, Lo/AFSensorManager;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/signature;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onPostMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lo/signature;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lo/signature;->extraCallback:Lo/AFSensorManager;

    invoke-virtual {p0, p1}, Lo/signature;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lo/AFSensorManager;->onPostMessage(ILjava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    throw p1
.end method
