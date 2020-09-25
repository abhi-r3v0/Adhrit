.class public final Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;,
        Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 50
    invoke-virtual {p0, p2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;

    invoke-direct {v1, p1, p2}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;-><init>(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;

    .line 57
    invoke-static {v1}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onNavigationEvent(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 58
    invoke-virtual {v1}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onPostMessage()V

    .line 59
    iget-object v2, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1;->extraCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;

    .line 71
    invoke-virtual {v1, p1}, Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$extraCallback;->onMessageChannelReady(Lo/CheckoutRecommendationFragment$onSheetShown$$inlined$executeOnResume$1$onPostMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method
