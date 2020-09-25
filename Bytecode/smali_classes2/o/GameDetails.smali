.class final Lo/GameDetails;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final extraCallback:Landroid/app/Application;

.field private final onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/GameDetails;->onPostMessage:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/GameDetails;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lo/GameDetails;->extraCallback:Landroid/app/Application;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/GameOverSheetBlock;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/GameDetails;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lo/GameOverSheetBlock;->onPostMessage(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lo/GameDetails;->onPostMessage:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/GameDetails;->extraCallback:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/GameDetails;->onPostMessage:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lo/GameCtaJsonAdapter;

    invoke-direct {v0, p0, p1, p2}, Lo/GameCtaJsonAdapter;-><init>(Lo/GameDetails;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/LeaderboardAttributesJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/LeaderboardAttributesJsonAdapter;-><init>(Lo/GameDetails;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/GameOverSheetBlockJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/GameOverSheetBlockJsonAdapter;-><init>(Lo/GameDetails;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/GameDetails_LifeDetailsJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/GameDetails_LifeDetailsJsonAdapter;-><init>(Lo/GameDetails;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lo/Rules;

    invoke-direct {v0, p0, p1, p2}, Lo/Rules;-><init>(Lo/GameDetails;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/GameDetails$LifeDetails;

    invoke-direct {v0, p0, p1}, Lo/GameDetails$LifeDetails;-><init>(Lo/GameDetails;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/LeaderboardAttributes;

    invoke-direct {v0, p0, p1}, Lo/LeaderboardAttributes;-><init>(Lo/GameDetails;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/GameDetails;->ICustomTabsCallback(Lo/GameOverSheetBlock;)V

    return-void
.end method
