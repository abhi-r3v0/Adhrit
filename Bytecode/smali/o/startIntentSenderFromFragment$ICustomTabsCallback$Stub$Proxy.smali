.class final Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;
.super Lo/postEvents;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/startIntentSenderFromFragment;
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
.field private synthetic ICustomTabsCallback:Lo/startIntentSenderFromFragment;

.field private onMessageChannelReady:Lo/isFromUser;

.field private onNavigationEvent:I

.field private synthetic onPostMessage:Lo/getAllowReturnTransitionOverlap;


# direct methods
.method constructor <init>(Lo/startIntentSenderFromFragment;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    iput-object p2, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/getAllowReturnTransitionOverlap;

    invoke-direct {p0, p3}, Lo/postEvents;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1054
    sget-object v0, Lo/setOnZombied;->onPostMessage:Lo/setOnZombied;

    .line 151
    iget v1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:I

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

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1126
    :cond_2
    instance-of v1, p1, Lo/emptyWrite$ICustomTabsCallback;

    if-nez v1, :cond_6

    .line 153
    iget-object p1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/getAllowReturnTransitionOverlap;

    check-cast p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 2006
    iget-object p1, p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->onPostMessage:Ljava/util/List;

    .line 153
    iput v2, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:I

    invoke-static {p1, p0}, Lo/startIntentSenderFromFragment;->ICustomTabsCallback(Ljava/util/List;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 151
    :cond_3
    :goto_0
    check-cast p1, Lo/addWrite;

    .line 154
    iget-object v0, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    invoke-static {v0}, Lo/startIntentSenderFromFragment;->ICustomTabsCallback(Lo/startIntentSenderFromFragment;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 3027
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 154
    check-cast v1, Ljava/util/List;

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, v1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 4028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 155
    check-cast v0, Ljava/util/List;

    .line 156
    iget-object v1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    invoke-static {v1}, Lo/startIntentSenderFromFragment;->onNavigationEvent(Lo/startIntentSenderFromFragment;)Lo/markState;

    move-result-object v1

    .line 5026
    iget-object v1, v1, Lo/markState;->onMessageChannelReady:Ljava/util/Map;

    const-string/jumbo v2, "templates_list"

    .line 156
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/getAllowReturnTransitionOverlap;

    check-cast v0, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    .line 6006
    iget-boolean v0, v0, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;->extraCallback:Z

    if-nez v0, :cond_4

    .line 158
    iget-object v0, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    const-string v1, "cm_card_farm_screen_load"

    invoke-static {v0, v1}, Lo/startIntentSenderFromFragment;->onPostMessage(Lo/startIntentSenderFromFragment;Ljava/lang/String;)V

    .line 160
    :cond_4
    iget-object v0, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    invoke-static {v0}, Lo/startIntentSenderFromFragment;->extraCallback(Lo/startIntentSenderFromFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    invoke-static {v0}, Lo/startIntentSenderFromFragment;->onPostMessage(Lo/startIntentSenderFromFragment;)Lo/onMultiWindowModeChanged;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 6017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    .line 6027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 162
    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lo/startIntentSenderFromFragment;->ICustomTabsCallback(Lo/startIntentSenderFromFragment;Ljava/util/List;)V

    .line 166
    iget-object p1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    invoke-static {p1}, Lo/startIntentSenderFromFragment;->onMessageChannelReady(Lo/startIntentSenderFromFragment;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cards_screen_load_for_interstitial"

    .line 167
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 168
    iget-object p1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    invoke-static {p1}, Lo/startIntentSenderFromFragment;->asInterface(Lo/startIntentSenderFromFragment;)V

    .line 170
    :cond_5
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

    check-cast p1, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;

    sget-object p2, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {p1, p2}, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;

    iget-object v1, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Lo/startIntentSenderFromFragment;

    iget-object v2, p0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/getAllowReturnTransitionOverlap;

    invoke-direct {v0, v1, v2, p2}, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;-><init>(Lo/startIntentSenderFromFragment;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V

    check-cast p1, Lo/isFromUser;

    iput-object p1, v0, Lo/startIntentSenderFromFragment$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/isFromUser;

    return-object v0
.end method
