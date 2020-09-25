.class final Lo/isLayoutSuppressed$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutSuppressed;-><init>(Lo/releaseGlows;Lo/pullGlows;Lo/hasGapsToFix$onMessageChannelReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/isLayoutSuppressed;


# direct methods
.method constructor <init>(Lo/isLayoutSuppressed;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 29
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 1088
    iget-object v0, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 2135
    iget-object v1, v0, Lo/isLayoutSuppressed;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2136
    iget-object v1, v0, Lo/isLayoutSuppressed;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 3000
    iget-object v2, v0, Lo/isLayoutSuppressed;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/repositionToWrapContentIfNecessary;

    .line 2136
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4000
    :cond_0
    iget-object v0, v0, Lo/isLayoutSuppressed;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v1, "value"

    .line 2131
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1090
    :cond_1
    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    .line 1091
    iget-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 5029
    iget-object p1, p1, Lo/isLayoutSuppressed;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    .line 1091
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 6029
    iget-object p1, p1, Lo/isLayoutSuppressed;->onPostMessage:Landroid/view/View;

    .line 1092
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    iget-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 7029
    iget-object p1, p1, Lo/isLayoutSuppressed;->getInterfaceDescriptor:Landroid/view/View;

    .line 1093
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1095
    :cond_4
    iget-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 8029
    iget-object p1, p1, Lo/isLayoutSuppressed;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 1095
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 9029
    iget-object p1, p1, Lo/isLayoutSuppressed;->onPostMessage:Landroid/view/View;

    .line 1096
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object p1, p0, Lo/isLayoutSuppressed$3;->onMessageChannelReady:Lo/isLayoutSuppressed;

    .line 10029
    iget-object p1, p1, Lo/isLayoutSuppressed;->getInterfaceDescriptor:Landroid/view/View;

    .line 1097
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
