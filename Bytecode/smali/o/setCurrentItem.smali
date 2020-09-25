.class public final Lo/setCurrentItem;
.super Lo/getRootAlpha;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getRootAlpha<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getRootAlpha;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method protected final finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 43
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-super {p0}, Lo/getRootAlpha;->finalize()V

    return-void

    .line 45
    :cond_0
    :try_start_2
    monitor-exit p0

    const-string v0, "FinalizerCloseableReference"

    const-string v1, "Finalized without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 50
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    .line 51
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    .line 52
    invoke-virtual {v4}, Lcom/facebook/common/references/SharedReference;->onPostMessage()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 47
    invoke-static {v0, v1, v2}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->extraCallback()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    invoke-super {p0}, Lo/getRootAlpha;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 56
    invoke-super {p0}, Lo/getRootAlpha;->finalize()V

    throw v0
.end method

.method public final onPostMessage()Lo/getRootAlpha;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
