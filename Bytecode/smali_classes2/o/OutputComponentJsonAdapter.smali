.class final Lo/OutputComponentJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/QuickActions;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/app/Activity;

.field private final synthetic onNavigationEvent:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/LifestyleSectionJsonAdapter;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lo/OutputComponentJsonAdapter;->ICustomTabsCallback:Landroid/app/Activity;

    iput-object p3, p0, Lo/OutputComponentJsonAdapter;->onNavigationEvent:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lo/OutputComponentJsonAdapter;->ICustomTabsCallback:Landroid/app/Activity;

    iget-object v1, p0, Lo/OutputComponentJsonAdapter;->onNavigationEvent:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
