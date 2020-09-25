.class final Lo/onMenuOpened;
.super Ljava/lang/Object;
.source ""


# instance fields
.field extraCallback:Lo/getDrawerToggleDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDrawerToggleDelegate<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    :try_start_0
    iget-object v0, p0, Lo/onMenuOpened;->extraCallback:Lo/getDrawerToggleDelegate;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lo/getDrawerToggleDelegate;->ICustomTabsCallback()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Lbolts/UnobservedTaskException;

    invoke-virtual {v0}, Lo/getDrawerToggleDelegate;->onNavigationEvent()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v0}, Lbolts/UnobservedTaskException;-><init>(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
