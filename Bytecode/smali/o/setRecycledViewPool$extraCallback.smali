.class final Lo/setRecycledViewPool$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setRecycledViewPool;
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
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardCardViewHolder$updateTimer$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/dispatchSaveInstanceState;

.field private synthetic onPostMessage:Lo/setRecycledViewPool;


# direct methods
.method constructor <init>(Lo/setRecycledViewPool;Lo/dispatchSaveInstanceState;)V
    .locals 0

    iput-object p1, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    iput-object p2, p0, Lo/setRecycledViewPool$extraCallback;->onNavigationEvent:Lo/dispatchSaveInstanceState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1103
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v0}, Lo/setRecycledViewPool;->extraCallback(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1104
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lo/setRecycledViewPool;->onPostMessage(Lo/setRecycledViewPool;Lo/endBatchedUpdates;)V

    .line 1105
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v0}, Lo/setRecycledViewPool;->onNavigationEvent(Lo/setRecycledViewPool;)Lo/onChildrenLoaded;

    move-result-object v0

    const-string v2, "leaderboardCard"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080128

    invoke-static {v2, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v0}, Lo/setRecycledViewPool;->onMessageChannelReady(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    const-string v2, "cardCta"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v0}, Lo/setRecycledViewPool;->onPostMessage(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    const-string/jumbo v1, "timerNumber"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/setRecycledViewPool$extraCallback;->onNavigationEvent:Lo/dispatchSaveInstanceState;

    .line 2023
    iget v1, v1, Lo/dispatchSaveInstanceState;->onMessageChannelReady:I

    .line 1107
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v0}, Lo/setRecycledViewPool;->extraCallback(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    const-string v1, "liveStatus"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1302af

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v0}, Lo/setRecycledViewPool;->onRelationshipValidationResult(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    const-string/jumbo v1, "timerText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f1302b1

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v0, p0, Lo/setRecycledViewPool$extraCallback;->onPostMessage:Lo/setRecycledViewPool;

    const-string/jumbo v1, "time_up_event"

    invoke-virtual {v0, v1}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
