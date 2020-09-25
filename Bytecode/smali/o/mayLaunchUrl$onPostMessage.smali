.class final Lo/mayLaunchUrl$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AudioAttributesImplBaseParcelizer$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mayLaunchUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/mayLaunchUrl;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lo/mayLaunchUrl$onPostMessage;->ICustomTabsCallback:Lo/mayLaunchUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 4

    .line 594
    iget-object v0, p0, Lo/mayLaunchUrl$onPostMessage;->ICustomTabsCallback:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lo/mayLaunchUrl$onPostMessage;->ICustomTabsCallback:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->onNavigationEvent:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lo/mayLaunchUrl$onPostMessage;->ICustomTabsCallback:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lo/mayLaunchUrl$onPostMessage;->ICustomTabsCallback:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lo/mayLaunchUrl$onPostMessage;->ICustomTabsCallback:Lo/mayLaunchUrl;

    iget-object v0, v0, Lo/mayLaunchUrl;->ICustomTabsCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
