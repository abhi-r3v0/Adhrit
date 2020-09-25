.class public final Lo/onItemsRemoved$ICustomTabsCallback;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemsRemoved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/DisbursalLottieFragment$endLottie$endAnimationListener$1",
        "Lcom/dreamplug/utils/animation/DefaultAnimatorListener;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field private synthetic extraCallback:Lo/onItemsRemoved;


# direct methods
.method constructor <init>(Lo/onItemsRemoved;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lo/onItemsRemoved$ICustomTabsCallback;->extraCallback:Lo/onItemsRemoved;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 13

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lo/onItemsRemoved$ICustomTabsCallback;->extraCallback:Lo/onItemsRemoved;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Lo/getSpanGroupIndex;

    .line 3000
    iget-object v0, p1, Lo/getSpanGroupIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setRecycleChildrenOnDetach;

    .line 3072
    iget-object v0, v0, Lo/setRecycleChildrenOnDetach;->extraCommand:Lo/onDetach$write;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3131
    iget-object v0, v0, Lo/onDetach$write;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4000
    :goto_0
    iget-object v2, p1, Lo/getSpanGroupIndex;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setRecycleChildrenOnDetach;

    .line 4065
    iget-object v6, v2, Lo/setRecycleChildrenOnDetach;->newSession:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 2071
    iget-object p1, p1, Lo/getSpanGroupIndex;->onMessageChannelReady:Lo/isSubmitAreaEnabled$extraCallback;

    if-nez p1, :cond_1

    const-string/jumbo v2, "router"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lo/computeHorizontalScrollRange$extraCallback;

    new-instance v12, Lo/onDetach$INotificationSideChannel$Stub;

    if-eqz v0, :cond_2

    .line 4158
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->IPostMessageService$Stub$Proxy:Ljava/lang/Double;

    if-nez v3, :cond_3

    :cond_2
    const-wide/16 v3, 0x0

    .line 2072
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_3
    move-object v7, v3

    if-eqz v0, :cond_4

    .line 5156
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    if-eqz v3, :cond_4

    .line 5437
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;->extraCallback:Ljava/lang/String;

    move-object v8, v3

    goto :goto_1

    :cond_4
    move-object v8, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 6156
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$ScreenData;->INotificationSideChannel:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;

    if-eqz v0, :cond_5

    .line 6440
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$AccountDetails;->onPostMessage:Ljava/lang/String;

    :cond_5
    move-object v9, v1

    const/4 v10, 0x0

    const/16 v11, 0x40

    const-string v4, "disbursal"

    const-string v5, "disbursal"

    move-object v3, v12

    .line 2071
    invoke-direct/range {v3 .. v11}, Lo/onDetach$INotificationSideChannel$Stub;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v2, v12}, Lo/computeHorizontalScrollRange$extraCallback;-><init>(Lo/onDetach$INotificationSideChannel$Stub;)V

    check-cast v2, Lo/computeHorizontalScrollRange;

    invoke-virtual {p1, v2}, Lo/isSubmitAreaEnabled$extraCallback;->extraCallback(Lo/computeHorizontalScrollRange;)V

    .line 192
    :cond_6
    iget-object p1, p0, Lo/onItemsRemoved$ICustomTabsCallback;->extraCallback:Lo/onItemsRemoved;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    return-void

    .line 191
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.lending.LendingWithdrawalFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
