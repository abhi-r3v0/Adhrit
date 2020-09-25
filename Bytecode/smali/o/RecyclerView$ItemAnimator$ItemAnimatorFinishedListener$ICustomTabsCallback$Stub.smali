.class final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;
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
        "Lo/setMeasureSpecs$onNavigationEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/max/MaxLandingViewModel$State;",
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
.field final synthetic ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 12

    .line 44
    check-cast p1, Lo/setMeasureSpecs$onNavigationEvent;

    .line 1121
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    if-eqz p1, :cond_1

    .line 1124
    instance-of v0, p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    check-cast p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;

    .line 2043
    iget-object v1, p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;->extraCallback:Ljava/util/List;

    .line 1125
    invoke-static {v0, v1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onMessageChannelReady(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;Ljava/util/List;)V

    .line 1126
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .line 3043
    iget-object v1, p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    .line 1126
    invoke-static {v0, v1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onPostMessage(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;Lo/StaggeredGridLayoutManager;)V

    .line 1127
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .line 4043
    iget-object v1, p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;->extraCallback:Ljava/util/List;

    .line 5043
    iget-object p1, p1, Lo/setMeasureSpecs$onNavigationEvent$onNavigationEvent;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    .line 1127
    invoke-static {v0, v1, p1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->ICustomTabsCallback(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;Ljava/util/List;Lo/StaggeredGridLayoutManager;)V

    return-void

    .line 1129
    :cond_0
    instance-of p1, p1, Lo/setMeasureSpecs$onNavigationEvent$onPostMessage;

    if-eqz p1, :cond_1

    .line 1130
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1131
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->lockScreen:I

    invoke-virtual {p1, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "lockScreen"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->lottie:I

    invoke-virtual {p1, v2}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    const-string v2, "lottie"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v2, "$this$invisible"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 6013
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->image:I

    invoke-virtual {p1, v2}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string v2, "image"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v2, "$this$gone"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 6017
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->imageView2:I

    invoke-virtual {p1, v2}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageView2"

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->titleOnboarding:I

    invoke-virtual {p1, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "titleOnboarding"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130183

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1136
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->contentOnboarding:I

    invoke-virtual {p1, v1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string v1, "contentOnboarding"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1137
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaPrimary2:I

    invoke-virtual {p1, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 1138
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130181

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lo/setInflatedId;->onPostMessage(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1139
    new-instance v0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub$ICustomTabsCallback;-><init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    new-instance v0, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;

    .line 1145
    new-instance v11, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "error_card"

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/dreamplug/fabrik/ui/max/TemplateProperties;-><init>(Lcom/dreamplug/fabrik/ui/max/Asset;Lcom/dreamplug/fabrik/ui/max/Background;Lcom/dreamplug/fabrik/ui/max/Background;Lcom/dreamplug/fabrik/ui/max/Cta;Ljava/util/List;Ljava/lang/String;Lo/getTargetScrollPosition;Lo/getTargetScrollPosition;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1144
    invoke-direct {v0, v1, v11}, Lcom/dreamplug/fabrik/ui/max/MaxLandingItem;-><init>(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/max/TemplateProperties;)V

    check-cast v0, Lo/StaggeredGridLayoutManager;

    invoke-static {p1, v1, v0}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->ICustomTabsCallback(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;Ljava/util/List;Lo/StaggeredGridLayoutManager;)V

    :cond_1
    return-void
.end method
