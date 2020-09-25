.class final Lo/getItemRangeInto$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getItemRangeInto;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic ICustomTabsCallback:Lo/getItemRangeInto;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/getItemRangeInto;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemRangeInto;

    iput-object p2, p0, Lo/getItemRangeInto$ICustomTabsCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 17
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    .line 1026
    iget-object v1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getAmount()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1043
    new-instance v2, Lo/addWrite;

    const-string v3, "amount"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1027
    iget-object v1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemRangeInto;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "position"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 1028
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v1, Lo/isInLayout;->connect:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "amount_list"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1025
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "pay_custom_recommended_amt_click"

    .line 1025
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1030
    iget-object p1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemRangeInto;

    const-string v0, "click"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    .line 1031
    iget-object p1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemRangeInto;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->ICustomTabsCallback:Lo/getItemRangeInto;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lo/getItemRangeInto$ICustomTabsCallback;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;

    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/control/SuggestedAmount;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080121

    goto :goto_0

    :cond_0
    const v1, 0x7f080122

    :goto_0
    invoke-static {v0, v1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
