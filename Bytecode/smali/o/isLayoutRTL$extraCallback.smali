.class final Lo/isLayoutRTL$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;-><init>()V
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/setRemoveDuration;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "commandEvent",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
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
.field private synthetic onMessageChannelReady:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 75
    check-cast p1, Lo/getThumbTintList;

    .line 1177
    iget-object v0, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v0}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v0

    .line 2191
    iget-object v0, v0, Lo/setSmoothScrollbarEnabled;->extraCallback:Lo/updateLayoutStateToFillEnd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3009
    iget-object v0, v0, Lo/updateLayoutStateToFillEnd;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_f

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 3016
    :cond_2
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1178
    :goto_2
    check-cast v0, Lo/setRemoveDuration;

    .line 1179
    instance-of v4, v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    if-eqz v4, :cond_d

    .line 1180
    iget-object v4, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v4}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v4

    check-cast v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    .line 3055
    iget-object v5, v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 4034
    iput-object v5, v4, Lo/setSmoothScrollbarEnabled;->onNavigationEvent:Ljava/lang/String;

    .line 4055
    iget-object v0, v0, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;->extraCallback:Lo/removeItemDecoration;

    if-eqz v0, :cond_7

    .line 1183
    iget-object v4, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v4}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v4

    .line 5053
    iget-object v4, v4, Lo/setSmoothScrollbarEnabled;->onTransact:Lo/setSmoothScrollbarEnabled$ICustomTabsCallback;

    check-cast v4, Landroidx/lifecycle/LiveData;

    .line 5320
    iget-object v4, v4, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v1

    .line 1183
    :goto_3
    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/Iterable;

    .line 1878
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/StaggeredGridLayoutManager;

    .line 1184
    instance-of v7, v6, Lo/ensureLayoutState;

    if-eqz v7, :cond_5

    check-cast v6, Lo/ensureLayoutState;

    .line 6012
    iget-object v6, v6, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 7000
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeItemDecoration;

    .line 1184
    invoke-static {v6, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_4

    goto :goto_5

    :cond_6
    move-object v5, v1

    .line 1879
    :goto_5
    check-cast v5, Lo/StaggeredGridLayoutManager;

    goto :goto_6

    :cond_7
    move-object v5, v1

    :goto_6
    if-eqz v5, :cond_b

    .line 1191
    iget-object v4, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v4}, Lo/isLayoutRTL;->ICustomTabsCallback$Stub$Proxy(Lo/isLayoutRTL;)Lo/isSmoothScrollbarEnabled;

    move-result-object v4

    .line 7009
    iget-object v4, v4, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 8000
    iget-object v4, v4, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v4}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/checkSpanForGap;

    .line 8151
    iget-object v4, v4, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1191
    check-cast v4, Ljava/lang/Iterable;

    .line 1880
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/StaggeredGridLayoutManager;

    .line 1192
    instance-of v7, v6, Lo/ensureLayoutState;

    if-eqz v7, :cond_9

    check-cast v6, Lo/ensureLayoutState;

    .line 9012
    iget-object v6, v6, Lo/ensureLayoutState;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 10000
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/removeItemDecoration;

    .line 1192
    invoke-static {v6, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_8

    move-object v1, v5

    .line 1881
    :cond_a
    check-cast v1, Lo/StaggeredGridLayoutManager;

    :cond_b
    if-eqz v1, :cond_c

    .line 1198
    iget-object v0, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->lifestyleRecyclerView:I

    invoke-virtual {v0, v3}, Lo/isLayoutRTL;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/startActivity;

    iget-object v3, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v3}, Lo/isLayoutRTL;->ICustomTabsCallback$Stub$Proxy(Lo/isLayoutRTL;)Lo/isSmoothScrollbarEnabled;

    move-result-object v3

    .line 10009
    iget-object v3, v3, Lo/isSmoothScrollbarEnabled;->onMessageChannelReady:Lo/hasGapsToFix;

    .line 11000
    iget-object v3, v3, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/checkSpanForGap;

    .line 11151
    iget-object v3, v3, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 1198
    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_8

    .line 1200
    :cond_c
    iget-object v1, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v1}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/setSmoothScrollbarEnabled;->onMessageChannelReady(Lo/removeItemDecoration;)V

    .line 1201
    iget-object v0, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v0}, Lo/isLayoutRTL;->postMessage(Lo/isLayoutRTL;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    iget-object v1, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v1}, Lo/isLayoutRTL;->updateVisuals(Lo/isLayoutRTL;)Lo/getServerTime;

    move-result-object v1

    const-string v3, "listUpdateCallback"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12075
    iget-object v0, v0, Lo/hasGapsToFix;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13005
    :goto_8
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    return-void

    .line 1205
    :cond_d
    instance-of v1, v0, Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;

    if-eqz v1, :cond_e

    .line 1206
    iget-object v0, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-static {v0}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v0

    invoke-virtual {v0}, Lo/setSmoothScrollbarEnabled;->extraCallback()V

    .line 14005
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    return-void

    :cond_e
    if-eqz v0, :cond_17

    return-void

    .line 1215
    :cond_f
    iget-object v0, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v4, v0, Lo/getViewPosition;

    if-nez v4, :cond_10

    move-object v0, v1

    :cond_10
    check-cast v0, Lo/getViewPosition;

    const-string v4, "LIFESTYLE_PRIMARY_FARM_TAG"

    if-eqz v0, :cond_12

    const-string/jumbo v5, "tag"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14669
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1215
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    .line 15011
    :goto_a
    iget-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_13

    goto :goto_b

    .line 15016
    :cond_13
    iget-object v1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1217
    :goto_b
    check-cast v1, Lo/setRemoveDuration;

    .line 1218
    instance-of p1, v1, Lo/setRemoveDuration$onNavigationEvent$onPostMessage;

    const/4 v2, 0x6

    const-string v5, "lifestyle"

    if-eqz p1, :cond_15

    iget-object p1, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    .line 16000
    iget-object p1, p1, Lo/isLayoutRTL;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    move-object v4, v5

    .line 1218
    :goto_c
    invoke-static {p1, v4, v3, v3, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    .line 1219
    :cond_15
    instance-of p1, v1, Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lo/isLayoutRTL$extraCallback;->onMessageChannelReady:Lo/isLayoutRTL;

    .line 17000
    iget-object p1, p1, Lo/isLayoutRTL;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    move-object v4, v5

    .line 1219
    :goto_d
    invoke-static {p1, v4, v3, v3, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    :cond_17
    return-void
.end method
