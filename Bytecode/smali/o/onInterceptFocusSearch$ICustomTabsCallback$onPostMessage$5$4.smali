.class final Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/onboardMachine/OnboardMachineInternalFragment$machineUpdateListener$1$1$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;


# direct methods
.method constructor <init>(Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;)V
    .locals 0

    iput-object p1, p0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;->ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1080
    iget-object v0, p0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;->ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback;->onPostMessage:Lo/onInterceptFocusSearch;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "claimedRewardLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;->ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback;->onPostMessage:Lo/onInterceptFocusSearch;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v0, v3}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1082
    iget-object v3, p0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;->ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;

    iget-object v3, v3, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;

    iget-object v3, v3, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback;

    iget-object v3, v3, Lo/onInterceptFocusSearch$ICustomTabsCallback;->onPostMessage:Lo/onInterceptFocusSearch;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v3, v4}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-static {v3, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1084
    iget-object v3, p0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;->ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;

    iget-object v3, v3, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;

    iget-object v3, v3, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback;

    iget-object v3, v3, Lo/onInterceptFocusSearch$ICustomTabsCallback;->onPostMessage:Lo/onInterceptFocusSearch;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->claimedRewardLayout:I

    invoke-virtual {v3, v4}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "Resources.getSystem()"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    const/high16 v6, 0x43160000    # 150.0f

    .line 2010
    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/4 v5, 0x0

    .line 1083
    invoke-static {v3, v1, v0, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1090
    iget-object v0, p0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5$4;->ICustomTabsCallback:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage$5;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback$onPostMessage;->onPostMessage:Lo/onInterceptFocusSearch$ICustomTabsCallback;

    iget-object v0, v0, Lo/onInterceptFocusSearch$ICustomTabsCallback;->onPostMessage:Lo/onInterceptFocusSearch;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bigRewardParent:I

    invoke-virtual {v0, v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getLayoutInflater;

    invoke-virtual {v0, v2}, Lo/getLayoutInflater;->setEnableDrag(Z)V

    .line 41
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
