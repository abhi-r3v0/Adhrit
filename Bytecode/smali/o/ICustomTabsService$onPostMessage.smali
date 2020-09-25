.class Lo/ICustomTabsService$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/INotificationSideChannel$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ICustomTabsService;

.field private onNavigationEvent:Lo/INotificationSideChannel$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/ICustomTabsService;Lo/INotificationSideChannel$ICustomTabsCallback;)V
    .locals 0

    .line 2672
    iput-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2673
    iput-object p2, p0, Lo/ICustomTabsService$onPostMessage;->onNavigationEvent:Lo/INotificationSideChannel$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/INotificationSideChannel;)V
    .locals 2

    .line 2694
    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onNavigationEvent:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {v0, p1}, Lo/INotificationSideChannel$ICustomTabsCallback;->ICustomTabsCallback(Lo/INotificationSideChannel;)V

    .line 2695
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->asInterface:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2696
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2699
    :cond_0
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_1

    .line 2700
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    invoke-virtual {p1}, Lo/ICustomTabsService;->postMessage()V

    .line 2701
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object v0, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getLaunchPendingIntent;->onNavigationEvent(F)Lo/getLaunchPendingIntent;

    move-result-object v0

    iput-object v0, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    .line 2702
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    new-instance v0, Lo/ICustomTabsService$onPostMessage$4;

    invoke-direct {v0, p0}, Lo/ICustomTabsService$onPostMessage$4;-><init>(Lo/ICustomTabsService$onPostMessage;)V

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    .line 2718
    :cond_1
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->onNavigationEvent:Lo/asInterface;

    if-eqz p1, :cond_2

    .line 2719
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->onNavigationEvent:Lo/asInterface;

    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->onTransact:Lo/INotificationSideChannel;

    invoke-interface {p1, v0}, Lo/asInterface;->onSupportActionModeFinished(Lo/INotificationSideChannel;)V

    .line 2721
    :cond_2
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    const/4 v0, 0x0

    iput-object v0, p1, Lo/ICustomTabsService;->onTransact:Lo/INotificationSideChannel;

    .line 2722
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->newSession:Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    return-void
.end method

.method public extraCallback(Lo/INotificationSideChannel;Landroid/view/MenuItem;)Z
    .locals 1

    .line 2689
    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onNavigationEvent:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {v0, p1, p2}, Lo/INotificationSideChannel$ICustomTabsCallback;->extraCallback(Lo/INotificationSideChannel;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
    .locals 1

    .line 2683
    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->newSession:Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    .line 2684
    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onNavigationEvent:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {v0, p1, p2}, Lo/INotificationSideChannel$ICustomTabsCallback;->onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPostMessage(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
    .locals 1

    .line 2678
    iget-object v0, p0, Lo/ICustomTabsService$onPostMessage;->onNavigationEvent:Lo/INotificationSideChannel$ICustomTabsCallback;

    invoke-interface {v0, p1, p2}, Lo/INotificationSideChannel$ICustomTabsCallback;->onPostMessage(Lo/INotificationSideChannel;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
