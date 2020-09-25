.class final Lo/updateAnchorFromChildren$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateAnchorFromChildren;-><init>()V
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
        "list",
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
.field final synthetic onNavigationEvent:Lo/updateAnchorFromChildren;


# direct methods
.method constructor <init>(Lo/updateAnchorFromChildren;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 64
    check-cast p1, Ljava/util/List;

    .line 1144
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Lo/updateAnchorFromChildren;->asInterface()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    .line 1149
    iget-object v2, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v2}, Lo/updateAnchorFromChildren;->onNavigationEvent()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    :cond_0
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Lo/updateAnchorFromChildren;->ICustomTabsCallback()Lo/onViewStateRestored;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    .line 2082
    iget-object v0, v0, Lo/updateAnchorFromChildren;->onPostMessage:Lo/repositionToWrapContentIfNecessary;

    if-nez v0, :cond_2

    const-string v1, "claimedRewardAdapter"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "value"

    .line 1151
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void

    .line 1153
    :cond_3
    iget-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {p1}, Lo/updateAnchorFromChildren;->onNavigationEvent()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    :cond_4
    iget-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {p1}, Lo/updateAnchorFromChildren;->ICustomTabsCallback()Lo/onViewStateRestored;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    :cond_5
    iget-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {p1}, Lo/updateAnchorFromChildren;->ICustomTabsCallback()Lo/onViewStateRestored;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lo/updateAnchorFromChildren$ICustomTabsCallback$1;

    invoke-direct {v0, p0}, Lo/updateAnchorFromChildren$ICustomTabsCallback$1;-><init>(Lo/updateAnchorFromChildren$ICustomTabsCallback;)V

    check-cast v0, Lo/getServerTime;

    invoke-virtual {p1, v0}, Lo/onViewStateRestored;->setOnCtaClick(Lo/getServerTime;)V

    .line 1162
    :cond_6
    iget-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {p1}, Lo/updateAnchorFromChildren;->ICustomTabsCallback()Lo/onViewStateRestored;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Lo/updateAnchorFromChildren;->onMessageChannelReady()Lo/onViewStateRestored$onNavigationEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/onViewStateRestored;->setData(Lo/onViewStateRestored$onNavigationEvent;)V

    :cond_7
    return-void
.end method
