.class public final Lo/ToolbarWidgetWrapper;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Lo/createScroller;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J&\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/blocker/maintenance/UnderMaintenanceFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/dreamplug/androidapp/helper/BackKeyHandler;",
        "()V",
        "backToExit",
        "",
        "onBackPressed",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
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
.field private extraCallback:Z

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/ToolbarWidgetWrapper;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lo/ToolbarWidgetWrapper;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 5

    .line 65
    iget-boolean v0, p0, Lo/ToolbarWidgetWrapper;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please click BACK again to exit"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lo/ToolbarWidgetWrapper;->extraCallback:Z

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lo/ToolbarWidgetWrapper$onPostMessage;

    invoke-direct {v2, p0}, Lo/ToolbarWidgetWrapper$onPostMessage;-><init>(Lo/ToolbarWidgetWrapper;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e0331

    .line 30
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 3000
    iget-object v0, p0, Lo/ToolbarWidgetWrapper;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/ToolbarWidgetWrapper;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/ToolbarWidgetWrapper;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/ToolbarWidgetWrapper;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/ToolbarWidgetWrapper;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->underMaintTitleTv:I

    invoke-virtual {p0, p1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "underMaintTitleTv"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object p2, Lo/isInLayout;->onRelationshipValidationResult:Lo/isDetached;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 35
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->underMaintSubtitleTv:I

    invoke-virtual {p0, p1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo p2, "underMaintSubtitleTv"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object p2, Lo/isInLayout;->ICustomTabsCallback$Stub:Lo/isDetached;

    sget-object v0, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 36
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget-object p1, Lo/animateThumbToCheckedState;->extraCallback:Lo/animateThumbToCheckedState;

    invoke-static {}, Lo/animateThumbToCheckedState;->onNavigationEvent()Lo/setActive;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lo/toLegacyStreamType;

    new-instance v0, Lo/ToolbarWidgetWrapper$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/ToolbarWidgetWrapper$onMessageChannelReady;-><init>(Lo/ToolbarWidgetWrapper;)V

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 52
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->lottieView:I

    invoke-virtual {p0, p1}, Lo/ToolbarWidgetWrapper;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lo/ToolbarWidgetWrapper$extraCallback;

    invoke-direct {p2, p0}, Lo/ToolbarWidgetWrapper$extraCallback;-><init>(Lo/ToolbarWidgetWrapper;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
