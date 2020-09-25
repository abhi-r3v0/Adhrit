.class final Lo/recordPostLayoutInformation$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recordPostLayoutInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/recordPostLayoutInformation;

.field final synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/recordPostLayoutInformation;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/recordPostLayoutInformation$ICustomTabsCallback;->onMessageChannelReady:Lo/recordPostLayoutInformation;

    iput-object p2, p0, Lo/recordPostLayoutInformation$ICustomTabsCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 31
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    .line 1071
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$loadAnimation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f010041

    .line 2009
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-string v1, "AnimationUtils.loadAnimation(this, id)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xfa

    .line 1072
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1073
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1210
    new-instance v1, Lo/setDrawerListener$onPostMessage;

    invoke-direct {v1}, Lo/setDrawerListener$onPostMessage;-><init>()V

    .line 1075
    new-instance v2, Lo/recordPostLayoutInformation$ICustomTabsCallback$onPostMessage;

    invoke-direct {v2, p1}, Lo/recordPostLayoutInformation$ICustomTabsCallback$onPostMessage;-><init>(Landroid/content/Context;)V

    check-cast v2, Lo/onDisconnectSetValue;

    const-string p1, "func"

    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2039
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->extraCallback:Lo/onDisconnectSetValue;

    .line 1078
    new-instance v2, Lo/recordPostLayoutInformation$ICustomTabsCallback$extraCallback;

    invoke-direct {v2, p0}, Lo/recordPostLayoutInformation$ICustomTabsCallback$extraCallback;-><init>(Lo/recordPostLayoutInformation$ICustomTabsCallback;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3031
    iput-object v2, v1, Lo/setDrawerListener$onPostMessage;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    .line 1212
    check-cast v1, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1082
    iget-object p1, p0, Lo/recordPostLayoutInformation$ICustomTabsCallback;->onMessageChannelReady:Lo/recordPostLayoutInformation;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 1083
    iget-object p1, p0, Lo/recordPostLayoutInformation$ICustomTabsCallback;->onMessageChannelReady:Lo/recordPostLayoutInformation;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
