.class public final Lo/RecyclerView$LayoutManager;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/max/TitleCardViewHolder;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "onItemClickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "icon",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "kotlin.jvm.PlatformType",
        "text1",
        "Lcom/dreamplug/widget/CredTextView;",
        "text2",
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
.field private final ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

.field private final extraCallback:Lo/setSpeed;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClickListener"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 5010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0157

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 17
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/RecyclerView$LayoutManager;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/RecyclerView$LayoutManager;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/RecyclerView$LayoutManager;->extraCallback:Lo/setSpeed;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    if-eqz v0, :cond_5

    .line 23
    check-cast p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    .line 1025
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    if-eqz p1, :cond_5

    .line 1052
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/max/Asset;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/max/Asset;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "image"

    .line 1052
    invoke-static {v0, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v2, p0, Lo/RecyclerView$LayoutManager;->extraCallback:Lo/setSpeed;

    const-string v0, "icon"

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2035
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/max/Asset;

    if-eqz v0, :cond_1

    .line 2059
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/max/Asset;->onNavigationEvent:Ljava/lang/String;

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 25
    sget-object v6, Lo/getInstallVersion;->onPostMessage:Lo/getInstallVersion;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x36

    invoke-static/range {v2 .. v9}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 27
    :cond_2
    iget-object v0, p0, Lo/RecyclerView$LayoutManager;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "text1"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 3047
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->asInterface:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_3

    .line 4000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 27
    :goto_2
    invoke-static {v0, v2}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lo/RecyclerView$LayoutManager;->ICustomTabsCallback:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v2, "text2"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 4049
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_4

    .line 5000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    .line 28
    :cond_4
    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
