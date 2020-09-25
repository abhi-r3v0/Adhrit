.class final Lo/setRecycledViewPool$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


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
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Long;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderboardCardViewHolder$updateTimer$1$1"
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

    iput-object p1, p0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    iput-object p2, p0, Lo/setRecycledViewPool$onNavigationEvent;->onNavigationEvent:Lo/dispatchSaveInstanceState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1083
    iget-object v1, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v1}, Lo/setRecycledViewPool;->onMessageChannelReady(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v1

    const-string v2, "cardCta"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1084
    iget-object v1, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v1}, Lo/setRecycledViewPool;->onNavigationEvent(Lo/setRecycledViewPool;)Lo/onChildrenLoaded;

    move-result-object v1

    const-string v2, "leaderboardCard"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08012b

    invoke-static {v2, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/onChildrenLoaded;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1085
    iget-object v1, v0, Lo/setRecycledViewPool$onNavigationEvent;->onNavigationEvent:Lo/dispatchSaveInstanceState;

    .line 2021
    iget-object v1, v1, Lo/dispatchSaveInstanceState;->onPostMessage:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 1085
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const-string v4, "Calendar.getInstance()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 2063
    div-long v5, v1, v3

    const-wide/16 v7, 0x3c

    .line 3051
    div-long/2addr v5, v7

    .line 4039
    div-long v9, v5, v7

    .line 1089
    iget-object v11, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v11}, Lo/setRecycledViewPool;->ICustomTabsCallback(Lo/setRecycledViewPool;)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string/jumbo v15, "timerNumber"

    cmp-long v16, v9, v11

    if-gtz v16, :cond_2

    mul-long v11, v9, v7

    mul-long v11, v11, v7

    mul-long v11, v11, v3

    sub-long v11, v1, v11

    .line 12063
    div-long/2addr v11, v3

    .line 13051
    div-long/2addr v11, v7

    mul-long v5, v5, v7

    mul-long v5, v5, v3

    sub-long/2addr v1, v5

    .line 19063
    div-long/2addr v1, v3

    .line 1093
    iget-object v3, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v3}, Lo/setRecycledViewPool;->onPostMessage(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v3

    invoke-static {v3, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    .line 20096
    iget-object v4, v4, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    if-eqz v4, :cond_1

    const v5, 0x7f130254

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1093
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v14

    const/4 v7, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    :goto_0
    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x18

    .line 24027
    div-long/2addr v9, v1

    .line 1096
    iget-object v1, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v1}, Lo/setRecycledViewPool;->onPostMessage(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v1

    invoke-static {v1, v15}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    .line 25096
    iget-object v2, v2, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    if-eqz v2, :cond_3

    const v3, 0x7f13014f

    new-array v4, v14, [Ljava/lang/Object;

    .line 1096
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_1
    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :goto_2
    iget-object v1, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v1}, Lo/setRecycledViewPool;->extraCallback(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v1

    const-string v2, "liveStatus"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1302ae

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    iget-object v1, v0, Lo/setRecycledViewPool$onNavigationEvent;->onPostMessage:Lo/setRecycledViewPool;

    invoke-static {v1}, Lo/setRecycledViewPool;->onRelationshipValidationResult(Lo/setRecycledViewPool;)Lo/createFullSpanItemFromEnd;

    move-result-object v1

    const-string/jumbo v2, "timerText"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1302b0

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
