.class public final Lo/onAttachedToRecyclerView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u000e"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "top",
        "<anonymous parameter 3>",
        "bottom",
        "<anonymous parameter 5>",
        "<anonymous parameter 6>",
        "<anonymous parameter 7>",
        "<anonymous parameter 8>",
        "onLayoutChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/isSameListener;

.field private final ICustomTabsCallback$Stub:Lo/onSessionEvent;

.field final asInterface:Lo/setFrom;

.field final extraCallback:Lo/isSameListener;

.field final onMessageChannelReady:Lo/isSameListener;

.field onNavigationEvent:Lo/unregisterAdapterDataObserver;

.field onPostMessage:Landroid/animation/Animator;

.field private final onRelationshipValidationResult:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Lo/unregisterAdapterDataObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onSessionEvent;Lo/setFrom;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bottomBar"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onAttachedToRecyclerView;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    iput-object p2, p0, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    .line 15
    check-cast p1, Lo/removeOnActiveChangeListener;

    .line 102
    new-instance p2, Lo/onAttachedToRecyclerView$onMessageChannelReady;

    invoke-direct {p2, p1}, Lo/onAttachedToRecyclerView$onMessageChannelReady;-><init>(Lo/removeOnActiveChangeListener;)V

    check-cast p2, Lo/getServerTime;

    const-string p1, "initializer"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 102
    iput-object v0, p0, Lo/onAttachedToRecyclerView;->ICustomTabsCallback:Lo/isSameListener;

    .line 20
    new-instance p2, Lo/onAttachedToRecyclerView$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/onAttachedToRecyclerView$onNavigationEvent;-><init>(Lo/onAttachedToRecyclerView;)V

    check-cast p2, Lo/setPlaybackToRemote;

    iput-object p2, p0, Lo/onAttachedToRecyclerView;->onRelationshipValidationResult:Lo/setPlaybackToRemote;

    .line 2000
    iget-object p2, p0, Lo/onAttachedToRecyclerView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/hasObservers;

    .line 2012
    iget-object p2, p2, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 29
    iget-object v0, p0, Lo/onAttachedToRecyclerView;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    check-cast v0, Lo/toLegacyStreamType;

    iget-object v1, p0, Lo/onAttachedToRecyclerView;->onRelationshipValidationResult:Lo/setPlaybackToRemote;

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 30
    iget-object p2, p0, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Lo/setFrom;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 42
    new-instance p2, Lo/onAttachedToRecyclerView$onPostMessage;

    invoke-direct {p2, p0}, Lo/onAttachedToRecyclerView$onPostMessage;-><init>(Lo/onAttachedToRecyclerView;)V

    check-cast p2, Lo/getServerTime;

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 42
    iput-object v0, p0, Lo/onAttachedToRecyclerView;->extraCallback:Lo/isSameListener;

    .line 65
    new-instance p2, Lo/onAttachedToRecyclerView$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/onAttachedToRecyclerView$ICustomTabsCallback;-><init>(Lo/onAttachedToRecyclerView;)V

    check-cast p2, Lo/getServerTime;

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance p1, Lo/fromChildMerge;

    invoke-direct {p1, p2}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p1, Lo/isSameListener;

    .line 65
    iput-object p1, p0, Lo/onAttachedToRecyclerView;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    .line 5000
    iget-object p1, p0, Lo/onAttachedToRecyclerView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/hasObservers;

    sub-int/2addr p5, p3

    int-to-float v3, p5

    .line 5065
    iget-object v0, p1, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-static/range {v0 .. v5}, Lo/unregisterAdapterDataObserver;->onNavigationEvent(Lo/unregisterAdapterDataObserver;ZFFLjava/lang/String;I)Lo/unregisterAdapterDataObserver;

    move-result-object p2

    const-string/jumbo p3, "value"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6017
    iput-object p2, p1, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    .line 6018
    iget-object p1, p1, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
