.class Lo/isConnected$onMessageChannelReady;
.super Lo/isConnected$onPostMessage;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isConnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/isConnected;

.field private onPostMessage:Lo/IMediaControllerCallback$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/isConnected;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lo/isConnected$onMessageChannelReady;->onNavigationEvent:Lo/isConnected;

    .line 464
    invoke-direct {p0, p1, p2, p3}, Lo/isConnected$onPostMessage;-><init>(Lo/isConnected;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 1

    .line 479
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 0

    .line 495
    iget-object p1, p0, Lo/isConnected$onMessageChannelReady;->onPostMessage:Lo/IMediaControllerCallback$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 496
    invoke-interface {p1}, Lo/IMediaControllerCallback$ICustomTabsCallback;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .line 469
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 484
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method

.method public setVisibilityListener(Lo/IMediaControllerCallback$ICustomTabsCallback;)V
    .locals 1

    .line 489
    iput-object p1, p0, Lo/isConnected$onMessageChannelReady;->onPostMessage:Lo/IMediaControllerCallback$ICustomTabsCallback;

    .line 490
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method
