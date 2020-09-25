.class Lo/getVolumeAttributes$ICustomTabsCallback$Stub;
.super Lo/getVolumeAttributes$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# instance fields
.field private onPostMessage:Lo/getLong;


# direct methods
.method constructor <init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V
    .locals 0

    .line 711
    invoke-direct {p0, p1, p2}, Lo/getVolumeAttributes$asBinder;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;->onPostMessage:Lo/getLong;

    return-void
.end method

.method constructor <init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$ICustomTabsCallback$Stub;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1, p2}, Lo/getVolumeAttributes$asBinder;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$asBinder;)V

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;->onPostMessage:Lo/getLong;

    return-void
.end method


# virtual methods
.method ICustomTabsCallback()Lo/getVolumeAttributes;
    .locals 1

    .line 732
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method

.method final asBinder()Lo/getLong;
    .locals 4

    .line 738
    iget-object v0, p0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;->onPostMessage:Lo/getLong;

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 740
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 741
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 742
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    .line 743
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 739
    invoke-static {v0, v1, v2, v3}, Lo/getLong;->ICustomTabsCallback(IIII)Lo/getLong;

    move-result-object v0

    iput-object v0, p0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;->onPostMessage:Lo/getLong;

    .line 745
    :cond_0
    iget-object v0, p0, Lo/getVolumeAttributes$ICustomTabsCallback$Stub;->onPostMessage:Lo/getLong;

    return-object v0
.end method

.method onNavigationEvent()Z
    .locals 1

    .line 720
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method onPostMessage()Lo/getVolumeAttributes;
    .locals 1

    .line 726
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method
