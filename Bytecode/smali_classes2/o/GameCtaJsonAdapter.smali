.class final Lo/GameCtaJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/GameOverSheetBlock;


# instance fields
.field private final synthetic ICustomTabsCallback:Landroid/os/Bundle;

.field private final synthetic onNavigationEvent:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lo/GameDetails;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lo/GameCtaJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iput-object p3, p0, Lo/GameCtaJsonAdapter;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lo/GameCtaJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v1, p0, Lo/GameCtaJsonAdapter;->ICustomTabsCallback:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
