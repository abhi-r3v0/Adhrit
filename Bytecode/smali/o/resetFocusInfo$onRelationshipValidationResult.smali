.class final Lo/resetFocusInfo$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/resetFocusInfo;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005 \u0006*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic ICustomTabsCallback:Lo/resetFocusInfo;

.field private synthetic extraCallback:Lo/repositionToWrapContentIfNecessary;

.field private synthetic onMessageChannelReady:Lo/onCreateView;


# direct methods
.method constructor <init>(Lo/resetFocusInfo;Lo/onCreateView;Lo/repositionToWrapContentIfNecessary;)V
    .locals 0

    iput-object p1, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->ICustomTabsCallback:Lo/resetFocusInfo;

    iput-object p2, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateView;

    iput-object p3, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 42
    check-cast p1, Lo/addWrite;

    .line 2103
    iget-object v0, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->ICustomTabsCallback:Lo/resetFocusInfo;

    invoke-static {v0}, Lo/resetFocusInfo;->ICustomTabsCallback(Lo/resetFocusInfo;)Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2104
    iget-object v0, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->ICustomTabsCallback:Lo/resetFocusInfo;

    invoke-static {v0}, Lo/resetFocusInfo;->onMessageChannelReady(Lo/resetFocusInfo;)Lo/onDestroyView;

    move-result-object v0

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 3028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 2106
    new-instance v1, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v1}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iget-object v0, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->ICustomTabsCallback:Lo/resetFocusInfo;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 2106
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2107
    :cond_1
    iget-object p1, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->ICustomTabsCallback:Lo/resetFocusInfo;

    const v0, 0x7f130412

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.something_went_wrong)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    .line 2106
    invoke-static/range {v1 .. v7}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 2108
    iget-object p1, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->ICustomTabsCallback:Lo/resetFocusInfo;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void

    .line 5027
    :cond_3
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 2112
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;

    if-eqz p1, :cond_6

    .line 6012
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/WinTncResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 2112
    check-cast p1, Ljava/lang/Iterable;

    .line 2154
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    .line 2154
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 2155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2156
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;

    .line 2111
    new-instance v2, Lo/setItemAnimator;

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v2, v1, v3, v4}, Lo/setItemAnimator;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/details/Component;ZI)V

    check-cast v2, Lo/StaggeredGridLayoutManager;

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2157
    :cond_5
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const-string p1, "$this$toMutableList"

    .line 2112
    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6246
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Ljava/util/List;

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_7

    .line 2114
    iget-object v0, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->onMessageChannelReady:Lo/onCreateView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2115
    iget-object v0, p0, Lo/resetFocusInfo$onRelationshipValidationResult;->extraCallback:Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 7038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    :cond_7
    return-void
.end method
