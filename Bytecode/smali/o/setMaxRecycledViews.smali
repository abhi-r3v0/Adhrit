.class public final Lo/setMaxRecycledViews;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/bankbalance/manage/CtaItemViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
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
.field private final extraCallback:Lo/hasGapsToFix$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 5010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0153

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p2, p0, Lo/setMaxRecycledViews;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic extraCallback(Lo/setMaxRecycledViews;)Lo/hasGapsToFix$onMessageChannelReady;
    .locals 0

    .line 14
    iget-object p0, p0, Lo/setMaxRecycledViews;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    const-string v1, "itemView"

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/setSpeed;

    const-string v0, "itemView.logo"

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, p1

    check-cast v10, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;

    .line 1086
    iget-object v3, v10, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    .line 19
    invoke-static/range {v2 .. v9}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 20
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->logo:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setSpeed;

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object v0, v2, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object v0, v0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz v0, :cond_0

    check-cast v0, Lo/setMaxFrame;

    .line 20
    check-cast v0, Lo/getComposition;

    .line 2459
    iget-object v2, v0, Lo/getComposition;->ICustomTabsCallback:Landroid/content/res/Resources;

    const v3, 0x7f0803cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    .line 3433
    invoke-virtual {v0, v3, v2}, Lo/getComposition;->extraCallback(ILandroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v2, "itemView.text"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4082
    iget-object v2, v10, Lcom/dreamplug/fabrik/ui/track/network/response/Cta;->extraCallback:Ljava/lang/String;

    .line 21
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lo/setMaxRecycledViews$onMessageChannelReady;

    invoke-direct {v1, p0, p1}, Lo/setMaxRecycledViews$onMessageChannelReady;-><init>(Lo/setMaxRecycledViews;Lo/StaggeredGridLayoutManager;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
