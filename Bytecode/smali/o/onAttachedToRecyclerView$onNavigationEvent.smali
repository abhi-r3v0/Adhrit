.class final Lo/onAttachedToRecyclerView$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onAttachedToRecyclerView;-><init>(Lo/onSessionEvent;Lo/setFrom;)V
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
        "Lo/unregisterAdapterDataObserver;",
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
        "bottomBarState",
        "Lcom/dreamplug/fabrik/ui/main/BottomBarState;",
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
.field private synthetic onMessageChannelReady:Lo/onAttachedToRecyclerView;


# direct methods
.method constructor <init>(Lo/onAttachedToRecyclerView;)V
    .locals 0

    iput-object p1, p0, Lo/onAttachedToRecyclerView$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 13
    check-cast p1, Lo/unregisterAdapterDataObserver;

    if-eqz p1, :cond_8

    .line 1022
    iget-object v0, p0, Lo/onAttachedToRecyclerView$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    .line 2090
    iget-object v1, v0, Lo/onAttachedToRecyclerView;->onNavigationEvent:Lo/unregisterAdapterDataObserver;

    if-nez v1, :cond_1

    .line 2091
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    .line 3081
    iget-boolean v1, p1, Lo/unregisterAdapterDataObserver;->extraCallback:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2091
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2092
    :cond_1
    iget-object v1, v0, Lo/onAttachedToRecyclerView;->onNavigationEvent:Lo/unregisterAdapterDataObserver;

    if-eqz v1, :cond_2

    .line 4081
    iget-boolean v1, v1, Lo/unregisterAdapterDataObserver;->extraCallback:Z

    .line 5081
    iget-boolean v2, p1, Lo/unregisterAdapterDataObserver;->extraCallback:Z

    if-eq v1, v2, :cond_5

    .line 2093
    :cond_2
    iget-object v1, v0, Lo/onAttachedToRecyclerView;->onPostMessage:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 6081
    :cond_3
    iget-boolean v1, p1, Lo/unregisterAdapterDataObserver;->extraCallback:Z

    if-eqz v1, :cond_4

    .line 7000
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2095
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 8000
    :cond_4
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 2097
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1023
    :cond_5
    :goto_1
    iget-object v0, p0, Lo/onAttachedToRecyclerView$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    .line 8036
    iget-object v1, v0, Lo/onAttachedToRecyclerView;->onNavigationEvent:Lo/unregisterAdapterDataObserver;

    if-eqz v1, :cond_6

    .line 8084
    iget-object v1, v1, Lo/unregisterAdapterDataObserver;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 9084
    :goto_2
    iget-object v2, p1, Lo/unregisterAdapterDataObserver;->onPostMessage:Ljava/lang/String;

    .line 8036
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 10084
    iget-object v1, p1, Lo/unregisterAdapterDataObserver;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 8037
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    invoke-virtual {v0, v1}, Lo/setFrom;->onPostMessage(Ljava/lang/String;)V

    .line 1024
    :cond_7
    iget-object v0, p0, Lo/onAttachedToRecyclerView$onNavigationEvent;->onMessageChannelReady:Lo/onAttachedToRecyclerView;

    .line 11013
    iput-object p1, v0, Lo/onAttachedToRecyclerView;->onNavigationEvent:Lo/unregisterAdapterDataObserver;

    :cond_8
    return-void
.end method
