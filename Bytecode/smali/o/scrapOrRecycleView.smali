.class public final Lo/scrapOrRecycleView;
.super Lo/getPaddingEnd;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \t*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n \t*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationTemplate2;",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationBaseTemplate;",
        "parent",
        "Landroid/view/ViewGroup;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/ViewGroup;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "cta",
        "Lcom/dreamplug/widget/CredTextView;",
        "kotlin.jvm.PlatformType",
        "ctaIcon",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "image",
        "notificationTime",
        "text",
        "Landroid/widget/TextView;",
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
.field private final ICustomTabsCallback:Lo/setSpeed;

.field private final extraCallback:Lo/createFullSpanItemFromEnd;

.field private final onMessageChannelReady:Lo/setSpeed;

.field private final onNavigationEvent:Landroid/widget/TextView;

.field private final onPostMessage:Lo/createFullSpanItemFromEnd;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$inflate"

    .line 3010
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e015f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026esId, this, attachToRoot)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Lo/getPaddingEnd;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "itemView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/scrapOrRecycleView;->ICustomTabsCallback:Lo/setSpeed;

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lo/scrapOrRecycleView;->onNavigationEvent:Landroid/widget/TextView;

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cta:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrapOrRecycleView;->onPostMessage:Lo/createFullSpanItemFromEnd;

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    iput-object p1, p0, Lo/scrapOrRecycleView;->onMessageChannelReady:Lo/setSpeed;

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->notificationTime:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    iput-object p1, p0, Lo/scrapOrRecycleView;->extraCallback:Lo/createFullSpanItemFromEnd;

    .line 25
    iget-object p1, p0, Lo/scrapOrRecycleView;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string v0, "cta"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/scrapOrRecycleView$3;

    invoke-direct {v0, p0}, Lo/scrapOrRecycleView$3;-><init>(Lo/scrapOrRecycleView;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 28
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lo/scrapOrRecycleView$5;

    invoke-direct {p2, p0}, Lo/scrapOrRecycleView$5;-><init>(Lo/scrapOrRecycleView;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/scrapOrRecycleView;)Landroid/widget/TextView;
    .locals 0

    .line 13
    iget-object p0, p0, Lo/scrapOrRecycleView;->onNavigationEvent:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lo/getPaddingEnd;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V

    .line 35
    instance-of v0, p1, Lo/shouldMeasureChild;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lo/scrapOrRecycleView;->ICustomTabsCallback:Lo/setSpeed;

    const-string v1, "image"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/scrapOrRecycleView;->onPostMessage(Lo/setSpeed;)V

    .line 37
    iget-object v0, p0, Lo/scrapOrRecycleView;->onNavigationEvent:Landroid/widget/TextView;

    const-string/jumbo v1, "text"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lo/scrapOrRecycleView;->onPostMessage(Landroid/widget/TextView;)V

    .line 38
    iget-object v0, p0, Lo/scrapOrRecycleView;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string v1, "notificationTime"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lo/scrapOrRecycleView;->onNavigationEvent(Landroid/widget/TextView;)V

    .line 39
    iget-object v0, p0, Lo/scrapOrRecycleView;->onPostMessage:Lo/createFullSpanItemFromEnd;

    const-string v1, "cta"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lo/scrapOrRecycleView;->onMessageChannelReady:Lo/setSpeed;

    invoke-virtual {p0, v0, v1}, Lo/scrapOrRecycleView;->onMessageChannelReady(Landroid/widget/TextView;Lo/setSpeed;)V

    .line 40
    check-cast p1, Lo/shouldMeasureChild;

    .line 1043
    iget-object p1, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz p1, :cond_0

    .line 2026
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz p1, :cond_0

    .line 2044
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    if-eqz p1, :cond_0

    .line 2060
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p0, Lo/scrapOrRecycleView;->onMessageChannelReady:Lo/setSpeed;

    const-string v1, "ctaIcon"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lo/setInflatedId;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
