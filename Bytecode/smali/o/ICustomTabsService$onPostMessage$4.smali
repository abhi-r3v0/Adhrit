.class Lo/ICustomTabsService$onPostMessage$4;
.super Lo/getTag;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService$onPostMessage;->ICustomTabsCallback(Lo/INotificationSideChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/ICustomTabsService$onPostMessage;


# direct methods
.method constructor <init>(Lo/ICustomTabsService$onPostMessage;)V
    .locals 0

    .line 2702
    iput-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    invoke-direct {p0}, Lo/getTag;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 2705
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2706
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->asInterface:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2707
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->asInterface:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2708
    :cond_0
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 2709
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    .line 2711
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2712
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    .line 2713
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iput-object v0, p1, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    .line 2714
    iget-object p1, p0, Lo/ICustomTabsService$onPostMessage$4;->extraCallback:Lo/ICustomTabsService$onPostMessage;

    iget-object p1, p1, Lo/ICustomTabsService$onPostMessage;->onMessageChannelReady:Lo/ICustomTabsService;

    iget-object p1, p1, Lo/ICustomTabsService;->newSession:Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    return-void
.end method
