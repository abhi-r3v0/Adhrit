.class public final Lo/setAnimator$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setAnimator;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\n\u0002\u0008\u0006\n\u0002\u0008\u0006\n\u0002\u0008\u0006\n\u0002\u0008\u0006\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1",
        "com/dreamplug/fabrik/ui/cm/benefits/BenefitsFragment$$special$$inlined$observe$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setAnimator;


# direct methods
.method public constructor <init>(Lo/setAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/setAnimator$ICustomTabsCallback$Stub;->extraCallback:Lo/setAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Lo/getAllowReturnTransitionOverlap;

    .line 52
    iget-object v0, p0, Lo/setAnimator$ICustomTabsCallback$Stub;->extraCallback:Lo/setAnimator;

    const-string/jumbo v1, "state"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    iget-object v1, v0, Lo/setAnimator;->onNavigationEvent:Lo/onDestroyView;

    if-nez v1, :cond_0

    const-string v2, "loaderView"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1111
    instance-of v1, p1, Lo/getAllowReturnTransitionOverlap$onNavigationEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1112
    invoke-static {v0}, Lo/extraCallback;->extraCallback(Lo/toLegacyStreamType;)Lo/MediaControllerCompatApi23$TransportControls;

    move-result-object v1

    check-cast v1, Lo/isFromUser;

    new-instance v3, Lo/setAnimator$getInterfaceDescriptor;

    invoke-direct {v3, v0, p1, v2}, Lo/setAnimator$getInterfaceDescriptor;-><init>(Lo/setAnimator;Lo/getAllowReturnTransitionOverlap;Lo/setSessionPersistenceKey;)V

    check-cast v3, Lo/nextTransactionOrder;

    const/4 p1, 0x3

    .line 2001
    invoke-static {v1, v2, v2, v3, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void

    .line 1129
    :cond_1
    instance-of v1, p1, Lo/getAllowReturnTransitionOverlap$onPostMessage;

    if-eqz v1, :cond_6

    const-string v1, "cm_benefit_farm_screen_load"

    .line 1130
    invoke-static {v0, v1}, Lo/setAnimator;->onMessageChannelReady(Lo/setAnimator;Ljava/lang/String;)V

    .line 1131
    iget-object v1, v0, Lo/setAnimator;->onMessageChannelReady:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_2

    const-string v3, "recyclerView"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 2017
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-object v1, v0, Lo/setAnimator;->ICustomTabsCallback:Lo/onMultiWindowModeChanged;

    const-string v3, "errorLayout"

    if-nez v1, :cond_3

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroid/view/View;

    const-string v4, "$this$visible"

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 3009
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v1, v0, Lo/setAnimator;->ICustomTabsCallback:Lo/onMultiWindowModeChanged;

    if-nez v1, :cond_4

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    new-instance v3, Lo/onMultiWindowModeChanged$onPostMessage;

    .line 1134
    check-cast p1, Lo/getAllowReturnTransitionOverlap$onPostMessage;

    .line 4007
    iget-object v4, p1, Lo/getAllowReturnTransitionOverlap$onPostMessage;->onPostMessage:Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 4009
    iget v5, v4, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;->onNavigationEvent:I

    .line 5007
    iget-object v4, p1, Lo/getAllowReturnTransitionOverlap$onPostMessage;->onPostMessage:Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 5010
    iget v6, v4, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;->onPostMessage:I

    .line 6007
    iget-object p1, p1, Lo/getAllowReturnTransitionOverlap$onPostMessage;->onPostMessage:Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;

    .line 6011
    iget v7, p1, Lo/getAllowReturnTransitionOverlap$onMessageChannelReady;->onMessageChannelReady:I

    .line 7000
    iget-object p1, v0, Lo/setAnimator;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    .line 1140
    invoke-static {}, Lo/getAnimator;->extraCallback()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v10, v2

    new-instance p1, Lo/setAnimator$newSession;

    invoke-direct {p1, v0}, Lo/setAnimator$newSession;-><init>(Lo/setAnimator;)V

    move-object v11, p1

    check-cast v11, Lo/getServerTime;

    const-string v8, "benefits_farm"

    const-string v9, "API_ERROR"

    move-object v4, v3

    .line 1133
    invoke-direct/range {v4 .. v11}, Lo/onMultiWindowModeChanged$onPostMessage;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getServerTime;)V

    invoke-virtual {v1, v3}, Lo/onMultiWindowModeChanged;->setData(Lo/onMultiWindowModeChanged$onPostMessage;)V

    :cond_6
    return-void
.end method
