.class public final Lo/createSnapScroller$onTransact$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/createSnapScroller$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/holders/ClaimedOutputHolder$stateChange$1$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/animation/ObjectAnimator;

.field final synthetic onNavigationEvent:Lo/createSnapScroller$onTransact;


# direct methods
.method constructor <init>(Lo/createSnapScroller$onTransact;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ObjectAnimator;",
            ")V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iput-object p2, p0, Lo/createSnapScroller$onTransact$4;->extraCallback:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 216
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onNavigationEvent:Lo/getRecycleChildrenOnDetach;

    .line 1097
    iget-boolean p1, p1, Lo/getRecycleChildrenOnDetach;->onPostMessage:Z

    const-string v0, "copyCode"

    const-string v1, "itemView.secondaryCta"

    const-string v2, "itemView.displayCopy"

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "itemView"

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onNavigationEvent:Lo/getRecycleChildrenOnDetach;

    .line 2097
    iput-boolean v4, p1, Lo/getRecycleChildrenOnDetach;->onPostMessage:Z

    .line 218
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onMessageChannelReady:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onMessageChannelReady:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onMessageChannelReady:Lo/createSnapScroller;

    invoke-static {p1}, Lo/createSnapScroller;->onMessageChannelReady(Lo/createSnapScroller;)Lo/getRemainingScrollVertical;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onNavigationEvent:Lo/getRecycleChildrenOnDetach;

    const/4 v6, 0x1

    .line 3097
    iput-boolean v6, p1, Lo/getRecycleChildrenOnDetach;->onPostMessage:Z

    .line 223
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onMessageChannelReady:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->displayCopy:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onMessageChannelReady:Lo/createSnapScroller;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->secondaryCta:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onMessageChannelReady:Lo/createSnapScroller;

    invoke-static {p1}, Lo/createSnapScroller;->onMessageChannelReady(Lo/createSnapScroller;)Lo/getRemainingScrollVertical;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 227
    :goto_0
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->extraCallback:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 232
    iget-object p1, p0, Lo/createSnapScroller$onTransact$4;->onNavigationEvent:Lo/createSnapScroller$onTransact;

    iget-object p1, p1, Lo/createSnapScroller$onTransact;->onNavigationEvent:Lo/getRecycleChildrenOnDetach;

    .line 4097
    iget-boolean p1, p1, Lo/getRecycleChildrenOnDetach;->onPostMessage:Z

    if-eqz p1, :cond_1

    .line 233
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lo/createSnapScroller$onTransact$4$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/createSnapScroller$onTransact$4$onNavigationEvent;-><init>(Lo/createSnapScroller$onTransact$4;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 5018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    :cond_1
    return-void
.end method
