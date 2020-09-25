.class public Lo/removeBackgroundStateChangeListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/getProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getProjectId<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/getProjectId;

    invoke-direct {v0}, Lo/getProjectId;-><init>()V

    iput-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Exception;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->ICustomTabsCallback(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Exception;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onNavigationEvent()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v0, p1}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
