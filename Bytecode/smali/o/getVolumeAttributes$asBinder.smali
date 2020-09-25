.class Lo/getVolumeAttributes$asBinder;
.super Lo/getVolumeAttributes$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asBinder"
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/getLong;

.field final onNavigationEvent:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V
    .locals 0

    .line 670
    invoke-direct {p0, p1}, Lo/getVolumeAttributes$onPostMessage;-><init>(Lo/getVolumeAttributes;)V

    const/4 p1, 0x0

    .line 667
    iput-object p1, p0, Lo/getVolumeAttributes$asBinder;->onMessageChannelReady:Lo/getLong;

    .line 671
    iput-object p2, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$asBinder;)V
    .locals 1

    .line 675
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Lo/getVolumeAttributes$asBinder;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback$Stub()Lo/getLong;
    .locals 4

    .line 686
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onMessageChannelReady:Lo/getLong;

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 688
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 689
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 690
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 691
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 687
    invoke-static {v0, v1, v2, v3}, Lo/getLong;->ICustomTabsCallback(IIII)Lo/getLong;

    move-result-object v0

    iput-object v0, p0, Lo/getVolumeAttributes$asBinder;->onMessageChannelReady:Lo/getLong;

    .line 693
    :cond_0
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onMessageChannelReady:Lo/getLong;

    return-object v0
.end method

.method extraCallback(IIII)Lo/getVolumeAttributes;
    .locals 2

    .line 699
    new-instance v0, Lo/getVolumeAttributes$onMessageChannelReady;

    iget-object v1, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-static {v1}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getVolumeAttributes$onMessageChannelReady;-><init>(Lo/getVolumeAttributes;)V

    .line 700
    invoke-virtual {p0}, Lo/getVolumeAttributes$asBinder;->ICustomTabsCallback$Stub()Lo/getLong;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lo/getVolumeAttributes;->ICustomTabsCallback(Lo/getLong;IIII)Lo/getLong;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getVolumeAttributes$onMessageChannelReady;->onPostMessage(Lo/getLong;)Lo/getVolumeAttributes$onMessageChannelReady;

    .line 701
    invoke-virtual {p0}, Lo/getVolumeAttributes$asBinder;->asBinder()Lo/getLong;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lo/getVolumeAttributes;->ICustomTabsCallback(Lo/getLong;IIII)Lo/getLong;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback(Lo/getLong;)Lo/getVolumeAttributes$onMessageChannelReady;

    .line 702
    invoke-virtual {v0}, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback()Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method

.method onMessageChannelReady()Z
    .locals 1

    .line 680
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
