.class final Lo/mayLaunchUrl$extraCallback;
.super Lo/INotificationSideChannel$Default;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/mayLaunchUrl;


# direct methods
.method public constructor <init>(Lo/mayLaunchUrl;Landroid/view/Window$Callback;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lo/mayLaunchUrl$extraCallback;->onPostMessage:Lo/mayLaunchUrl;

    .line 518
    invoke-direct {p0, p2}, Lo/INotificationSideChannel$Default;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 537
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lo/mayLaunchUrl$extraCallback;->onPostMessage:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 539
    :cond_0
    invoke-super {p0, p1}, Lo/INotificationSideChannel$Default;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 523
    invoke-super {p0, p1, p2, p3}, Lo/INotificationSideChannel$Default;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 524
    iget-object p2, p0, Lo/mayLaunchUrl$extraCallback;->onPostMessage:Lo/mayLaunchUrl;

    iget-boolean p2, p2, Lo/mayLaunchUrl;->extraCallback:Z

    if-nez p2, :cond_0

    .line 525
    iget-object p2, p0, Lo/mayLaunchUrl$extraCallback;->onPostMessage:Lo/mayLaunchUrl;

    iget-object p2, p2, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 526
    iget-object p2, p0, Lo/mayLaunchUrl$extraCallback;->onPostMessage:Lo/mayLaunchUrl;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lo/mayLaunchUrl;->extraCallback:Z

    :cond_0
    return p1
.end method
