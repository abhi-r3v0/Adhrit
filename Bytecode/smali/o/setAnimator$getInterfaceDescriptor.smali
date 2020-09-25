.class final Lo/setAnimator$getInterfaceDescriptor;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/postEvents;",
        "Lo/nextTransactionOrder<",
        "Lo/isFromUser;",
        "Lo/setSessionPersistenceKey<",
        "-",
        "Lo/addWrites;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

.field private extraCallback:Lo/isFromUser;

.field private onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/setAnimator;


# direct methods
.method constructor <init>(Lo/setAnimator;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/setAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/setAnimator;

    iput-object p2, p0, Lo/setAnimator$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 112
    iget v1, p0, Lo/setAnimator$getInterfaceDescriptor;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 2126
    instance-of v0, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_6

    .line 114
    iget-object p1, p0, Lo/setAnimator$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    check-cast p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 2006
    iget-object p1, p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->onPostMessage:Ljava/util/List;

    .line 114
    iput v2, p0, Lo/setAnimator$getInterfaceDescriptor;->onMessageChannelReady:I

    invoke-static {p1, p0}, Lo/setAnimator;->onNavigationEvent(Ljava/util/List;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 112
    :cond_3
    :goto_0
    check-cast p1, Lo/addWrite;

    .line 3027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 115
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lo/setAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/setAnimator;

    invoke-static {v0}, Lo/setAnimator;->ICustomTabsCallback(Lo/setAnimator;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 4027
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 116
    check-cast v1, Ljava/util/List;

    const-string/jumbo v3, "value"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 5028
    :cond_4
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 118
    check-cast p1, Ljava/util/List;

    .line 119
    iget-object v0, p0, Lo/setAnimator$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    check-cast v0, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 6006
    iget-boolean v0, v0, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->extraCallback:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 120
    iget-object v0, p0, Lo/setAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/setAnimator;

    invoke-static {v0}, Lo/setAnimator;->extraCallback(Lo/setAnimator;)Lo/getDimensionPixelOffset;

    new-array v0, v2, [Lo/addWrite;

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "templates_list"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string p1, "pairs"

    .line 122
    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const/4 v0, 0x0

    const/16 v2, 0xc

    const-string v3, "cm_benefit_farm_screen_load"

    .line 120
    invoke-static {v3, p1, v0, v2}, Lo/getDimensionPixelOffset;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/fabrik/ui/cm/models/Template;I)V

    .line 125
    :cond_5
    iget-object p1, p0, Lo/setAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/setAnimator;

    invoke-static {p1}, Lo/setAnimator;->onPostMessage(Lo/setAnimator;)Lo/onMultiWindowModeChanged;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 7017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lo/setAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/setAnimator;

    invoke-static {p1}, Lo/setAnimator;->onMessageChannelReady(Lo/setAnimator;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1126
    :cond_6
    check-cast p1, Lo/emptyWrite$ICustomTabsCallback;

    iget-object p1, p1, Lo/emptyWrite$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lo/setSessionPersistenceKey;

    invoke-virtual {p0, p1, p2}, Lo/getRelative;->onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;

    move-result-object p1

    check-cast p1, Lo/setAnimator$getInterfaceDescriptor;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/setAnimator$getInterfaceDescriptor;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setSessionPersistenceKey;)Lo/setSessionPersistenceKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/setSessionPersistenceKey<",
            "*>;)",
            "Lo/setSessionPersistenceKey<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/setAnimator$getInterfaceDescriptor;

    iget-object v1, p0, Lo/setAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/setAnimator;

    iget-object v2, p0, Lo/setAnimator$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getAllowReturnTransitionOverlap;

    invoke-direct {v0, v1, v2, p2}, Lo/setAnimator$getInterfaceDescriptor;-><init>(Lo/setAnimator;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/setAnimator$getInterfaceDescriptor;->extraCallback:Lo/isFromUser;

    return-object v0
.end method
