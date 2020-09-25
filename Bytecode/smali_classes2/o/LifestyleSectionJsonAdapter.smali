.class final Lo/LifestyleSectionJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private ICustomTabsCallback:Z

.field private final onMessageChannelReady:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/LifestyleSectionJsonAdapter;->ICustomTabsCallback:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/LifestyleSectionJsonAdapter;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lo/LifestyleSectionJsonAdapter;->onPostMessage:Landroid/app/Application;

    return-void
.end method

.method private final extraCallback(Lo/QuickActions;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/LifestyleSectionJsonAdapter;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lo/QuickActions;->onMessageChannelReady(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lo/LifestyleSectionJsonAdapter;->ICustomTabsCallback:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/LifestyleSectionJsonAdapter;->onPostMessage:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/LifestyleSectionJsonAdapter;->ICustomTabsCallback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error while dispatching lifecycle callback."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lo/LifestyleResponseCardJsonAdapter;

    invoke-direct {v0, p0, p1, p2}, Lo/LifestyleResponseCardJsonAdapter;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/QuickActionsJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/QuickActionsJsonAdapter;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/OutputComponent;

    invoke-direct {v0, p0, p1}, Lo/OutputComponent;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/MiniCards;

    invoke-direct {v0, p0, p1}, Lo/MiniCards;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lo/OutputComponentJsonAdapter;

    invoke-direct {v0, p0, p1, p2}, Lo/OutputComponentJsonAdapter;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/LifestyleTemplatePropertiesJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/LifestyleTemplatePropertiesJsonAdapter;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lo/MiniCardsJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/MiniCardsJsonAdapter;-><init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lo/LifestyleSectionJsonAdapter;->extraCallback(Lo/QuickActions;)V

    return-void
.end method
