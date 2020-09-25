.class public abstract Lo/Worker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ConstraintTrackingWorker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ConstraintTrackingWorker<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/WorkDatabase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    invoke-interface {p1}, Lo/WorkDatabase;->extraCallback()Z

    move-result v0

    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Lo/Worker;->onMessageChannelReady(Lo/WorkDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p1}, Lo/WorkDatabase;->asInterface()Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/WorkDatabase;->asInterface()Z

    :cond_1
    throw v1
.end method

.method protected abstract extraCallback(Lo/WorkDatabase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract onMessageChannelReady(Lo/WorkDatabase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final onNavigationEvent(Lo/WorkDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lo/Worker;->extraCallback(Lo/WorkDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-interface {p1}, Lo/WorkDatabase;->asInterface()Z

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lo/WorkDatabase;->asInterface()Z

    throw v0
.end method

.method public onPostMessage(Lo/WorkDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
