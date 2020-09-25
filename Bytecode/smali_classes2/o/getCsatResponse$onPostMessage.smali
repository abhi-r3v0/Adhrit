.class final Lo/getCsatResponse$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCsatResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/getCsatResponse;


# direct methods
.method constructor <init>(Lo/getCsatResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v1, Lo/fR;

    invoke-direct {v1, p0, p2, p1}, Lo/fR;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v1, Lo/cy;

    invoke-direct {v1, p0, p1}, Lo/cy;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v1, Lo/cv;

    invoke-direct {v1, p0, p1}, Lo/cv;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v1, Lo/cx;

    invoke-direct {v1, p0, p1}, Lo/cx;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 12
    new-instance v0, Lo/setErrorMessageProvider;

    invoke-direct {v0}, Lo/setErrorMessageProvider;-><init>()V

    .line 13
    iget-object v1, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v2, Lo/gn;

    invoke-direct {v2, p0, p1, v0}, Lo/gn;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;Lo/setErrorMessageProvider;)V

    invoke-static {v1, v2}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    const-wide/16 v1, 0x32

    .line 15
    invoke-virtual {v0, v1, v2}, Lo/setErrorMessageProvider;->onPostMessage(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v1, Lo/cw;

    invoke-direct {v1, p0, p1}, Lo/cw;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lo/getCsatResponse$onPostMessage;->ICustomTabsCallback:Lo/getCsatResponse;

    new-instance v1, Lo/cz;

    invoke-direct {v1, p0, p1}, Lo/cz;-><init>(Lo/getCsatResponse$onPostMessage;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lo/getCsatResponse;->ICustomTabsCallback(Lo/getCsatResponse;Lo/getCsatResponse$ICustomTabsCallback;)V

    return-void
.end method
