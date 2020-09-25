.class Lo/ICustomTabsService$7;
.super Lo/getTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService;->onNavigationEvent(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    invoke-direct {p0}, Lo/getTag;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1345
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1346
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    .line 1347
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iput-object v0, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1335
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1338
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1339
    iget-object p1, p0, Lo/ICustomTabsService$7;->onPostMessage:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    :cond_0
    return-void
.end method
