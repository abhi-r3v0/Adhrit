.class final Lo/onPlayFromSearch$4;
.super Lo/onSessionDestroyed;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPlayFromSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/onPlayFromSearch;


# direct methods
.method constructor <init>(Lo/onPlayFromSearch;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lo/onPlayFromSearch$4;->onMessageChannelReady:Lo/onPlayFromSearch;

    invoke-direct {p0}, Lo/onSessionDestroyed;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lo/onPlayFromSearch$4;->onMessageChannelReady:Lo/onPlayFromSearch;

    iget-object v0, v0, Lo/onPlayFromSearch;->onNavigationEvent:Lo/onSessionDestroyed;

    invoke-virtual {v0, p1, p2}, Lo/onSessionDestroyed;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lo/getPlaybackState;)V

    .line 55
    iget-object v0, p0, Lo/onPlayFromSearch$4;->onMessageChannelReady:Lo/onPlayFromSearch;

    iget-object v0, v0, Lo/onPlayFromSearch;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 57
    iget-object v0, p0, Lo/onPlayFromSearch$4;->onMessageChannelReady:Lo/onPlayFromSearch;

    iget-object v0, v0, Lo/onPlayFromSearch;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 58
    instance-of v1, v0, Lo/onSkipToQueueItem;

    if-nez v1, :cond_0

    return-void

    .line 62
    :cond_0
    check-cast v0, Lo/onSkipToQueueItem;

    if-ltz p1, :cond_2

    .line 1258
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 1259
    :cond_1
    iget-object v0, v0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    return-void

    .line 68
    :cond_3
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->ICustomTabsCallback(Lo/getPlaybackState;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lo/onPlayFromSearch$4;->onMessageChannelReady:Lo/onPlayFromSearch;

    iget-object v0, v0, Lo/onPlayFromSearch;->onNavigationEvent:Lo/onSessionDestroyed;

    invoke-virtual {v0, p1, p2, p3}, Lo/onSessionDestroyed;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
