.class final Lo/refreshAuthToken$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/refreshAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/refreshAuthToken;


# direct methods
.method constructor <init>(Lo/refreshAuthToken;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lo/refreshAuthToken$1;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lo/refreshAuthToken$1;->ICustomTabsCallback:Lo/refreshAuthToken;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lo/refreshAuthToken$1;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v1}, Lo/refreshAuthToken;->onNavigationEvent(Lo/refreshAuthToken;)Lo/refreshAuthToken$onNavigationEvent;

    move-result-object v1

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->onTransact:Lo/refreshAuthToken$onNavigationEvent;

    if-eq v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lo/refreshAuthToken$1;->ICustomTabsCallback:Lo/refreshAuthToken;

    sget-object v2, Lo/refreshAuthToken$onNavigationEvent;->onTransact:Lo/refreshAuthToken$onNavigationEvent;

    invoke-static {v1, v2}, Lo/refreshAuthToken;->ICustomTabsCallback(Lo/refreshAuthToken;Lo/refreshAuthToken$onNavigationEvent;)Lo/refreshAuthToken$onNavigationEvent;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 62
    iget-object v0, p0, Lo/refreshAuthToken$1;->ICustomTabsCallback:Lo/refreshAuthToken;

    invoke-static {v0}, Lo/refreshAuthToken;->ICustomTabsCallback(Lo/refreshAuthToken;)Lo/refreshAuthToken$onPostMessage;

    move-result-object v0

    invoke-interface {v0}, Lo/refreshAuthToken$onPostMessage;->onNavigationEvent()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0

    throw v1
.end method
