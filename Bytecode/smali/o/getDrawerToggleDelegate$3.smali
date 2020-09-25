.class final Lo/getDrawerToggleDelegate$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDrawerToggleDelegate;->extraCallback(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/getDrawerToggleDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/dispatchKeyEvent;

.field private synthetic onNavigationEvent:Lo/extraCallback$onMessageChannelReady;

.field private synthetic onPostMessage:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lo/extraCallback$onMessageChannelReady;Lo/dispatchKeyEvent;Ljava/util/concurrent/Callable;)V
    .locals 0

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lo/getDrawerToggleDelegate$3;->onNavigationEvent:Lo/extraCallback$onMessageChannelReady;

    iput-object p2, p0, Lo/getDrawerToggleDelegate$3;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    iput-object p3, p0, Lo/getDrawerToggleDelegate$3;->onPostMessage:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 351
    iget-object v0, p0, Lo/getDrawerToggleDelegate$3;->onNavigationEvent:Lo/extraCallback$onMessageChannelReady;

    const-string v1, "Cannot cancel a completed task."

    if-eqz v0, :cond_1

    invoke-static {}, Lo/extraCallback$onMessageChannelReady;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lo/getDrawerToggleDelegate$3;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    .line 2032
    iget-object v0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {v0}, Lo/getDrawerToggleDelegate;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1054
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/getDrawerToggleDelegate$3;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    iget-object v2, p0, Lo/getDrawerToggleDelegate$3;->onPostMessage:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    .line 3039
    iget-object v0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {v0, v2}, Lo/getDrawerToggleDelegate;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 2063
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set the result of a completed task."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 361
    iget-object v1, p0, Lo/getDrawerToggleDelegate$3;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    .line 5046
    iget-object v1, v1, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {v1, v0}, Lo/getDrawerToggleDelegate;->onPostMessage(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 4072
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    nop

    .line 359
    iget-object v0, p0, Lo/getDrawerToggleDelegate$3;->ICustomTabsCallback:Lo/dispatchKeyEvent;

    .line 4032
    iget-object v0, v0, Lo/dispatchKeyEvent;->ICustomTabsCallback:Lo/getDrawerToggleDelegate;

    invoke-virtual {v0}, Lo/getDrawerToggleDelegate;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 3054
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
