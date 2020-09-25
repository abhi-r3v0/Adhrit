.class final Lo/createSnapScroller$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createSnapScroller;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic ICustomTabsCallback:Lo/createSnapScroller;

.field private synthetic extraCallback:Landroid/content/ClipboardManager;

.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/createSnapScroller;Landroid/content/ClipboardManager;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    iput-object p2, p0, Lo/createSnapScroller$ICustomTabsCallback;->extraCallback:Landroid/content/ClipboardManager;

    iput-object p3, p0, Lo/createSnapScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 35
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    iget-object p1, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "itemView.context"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    .line 2014
    invoke-static {p1, v2, v3}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 1070
    iget-object p1, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "$this$loadAnimation"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f010041

    .line 3009
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const-string v2, "AnimationUtils.loadAnimation(this, id)"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1072
    iget-object v2, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    invoke-static {v2}, Lo/createSnapScroller;->onMessageChannelReady(Lo/createSnapScroller;)Lo/getRemainingScrollVertical;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string/jumbo p1, "text"

    .line 1073
    check-cast p1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    invoke-static {v2}, Lo/createSnapScroller;->onNavigationEvent(Lo/createSnapScroller;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "voucherCodeText"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1074
    iget-object v2, p0, Lo/createSnapScroller$ICustomTabsCallback;->extraCallback:Landroid/content/ClipboardManager;

    invoke-virtual {v2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1075
    iget-object p1, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Code Copied"

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x50

    const/4 v2, 0x0

    .line 3168
    invoke-static {p1, v0, v1, v2}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 1076
    iget-object p1, p0, Lo/createSnapScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lo/getRecycleChildrenOnDetach;

    .line 4096
    iget-object p1, p1, Lo/getRecycleChildrenOnDetach;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 5076
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    if-eqz p1, :cond_1

    .line 5089
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;->onNavigationEvent:Lo/getTargetScrollPosition;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1077
    iget-object p1, p0, Lo/createSnapScroller$ICustomTabsCallback;->ICustomTabsCallback:Lo/createSnapScroller;

    iget-object v0, p0, Lo/createSnapScroller$ICustomTabsCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lo/getRecycleChildrenOnDetach;

    invoke-static {p1, v0}, Lo/createSnapScroller;->onNavigationEvent(Lo/createSnapScroller;Lo/getRecycleChildrenOnDetach;)V

    .line 35
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
