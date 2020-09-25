.class public Lo/setIsRecyclable$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setIsRecyclable;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/upi/BankSelectionDialog$onCreateView$3$afterTextChanged$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

.field private synthetic onMessageChannelReady:Lo/setIsRecyclable;

.field final synthetic onPostMessage:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lo/setIsRecyclable;Landroidx/recyclerview/widget/RecyclerView;Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;",
            ")V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->onMessageChannelReady:Lo/setIsRecyclable;

    iput-object p2, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->ICustomTabsCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 87
    iget-object v0, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->onMessageChannelReady:Lo/setIsRecyclable;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 88
    sget-object v0, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    invoke-static {}, Lo/onChangeStarting;->ICustomTabsCallback()Lcom/dreamplug/upi/UpiData;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dreamplug/upi/UpiData;->getUpiBankListLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    move-object v2, v0

    .line 88
    :cond_1
    check-cast v2, Ljava/util/List;

    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/setIsRecyclable;->onMessageChannelReady(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->onMessageChannelReady:Lo/setIsRecyclable;

    .line 2000
    iget-object v0, v0, Lo/setIsRecyclable;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/repositionToWrapContentIfNecessary;

    const-string/jumbo v2, "value"

    .line 90
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 2038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    iget-object v0, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->ICustomTabsCallback:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v2, "emptySearch"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 88
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    .line 3093
    iget-object v0, p0, Lo/setIsRecyclable$onRelationshipValidationResult;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
