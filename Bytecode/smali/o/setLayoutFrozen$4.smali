.class final Lo/setLayoutFrozen$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutFrozen;-><init>(Lo/releaseGlows;Lo/pullGlows;Lo/hasGapsToFix$onMessageChannelReady;)V
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
.field private synthetic onNavigationEvent:Lo/setLayoutFrozen;


# direct methods
.method constructor <init>(Lo/setLayoutFrozen;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 29
    check-cast p1, Ljava/util/List;

    const-string/jumbo v0, "sectionRecyclerView"

    if-eqz p1, :cond_1

    .line 1056
    iget-object v1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 3136
    iget-object v2, v1, Lo/setLayoutFrozen;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3137
    iget-object v2, v1, Lo/setLayoutFrozen;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v3, v1, Lo/setLayoutFrozen;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/repositionToWrapContentIfNecessary;

    .line 3137
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5000
    :cond_0
    iget-object v1, v1, Lo/setLayoutFrozen;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v2, "value"

    .line 2142
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 5038
    invoke-virtual {v1, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1058
    :cond_1
    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

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
    const-string/jumbo v2, "scrollShimView"

    const-string v3, "listHeaderDivider"

    if-eqz p1, :cond_4

    .line 1059
    iget-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 6029
    iget-object p1, p1, Lo/setLayoutFrozen;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 1059
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 7029
    iget-object p1, p1, Lo/setLayoutFrozen;->asInterface:Landroid/view/View;

    .line 1060
    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    iget-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 8029
    iget-object p1, p1, Lo/setLayoutFrozen;->onRelationshipValidationResult:Landroid/view/View;

    .line 1061
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1063
    :cond_4
    iget-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 9029
    iget-object p1, p1, Lo/setLayoutFrozen;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    .line 1063
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 10029
    iget-object p1, p1, Lo/setLayoutFrozen;->asInterface:Landroid/view/View;

    .line 1064
    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    iget-object p1, p0, Lo/setLayoutFrozen$4;->onNavigationEvent:Lo/setLayoutFrozen;

    .line 11029
    iget-object p1, p1, Lo/setLayoutFrozen;->onRelationshipValidationResult:Landroid/view/View;

    .line 1065
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
