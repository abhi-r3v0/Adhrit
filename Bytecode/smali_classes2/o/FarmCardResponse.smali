.class public final Lo/FarmCardResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemInitiatedRewardDetailsResponse;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/FarmCardResponse;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/FarmCardResponse;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/FarmCardResponse;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-object v0, p0, Lo/FarmCardResponse;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/FarmCardResponse;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage()Lo/RedeemInitiatedRewardDetailsResponse;
    .locals 3

    new-instance v0, Lo/FarmDetailsAttributesJsonAdapter;

    iget-object v1, p0, Lo/FarmCardResponse;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lo/FarmCardResponse;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {v0, v1, v2}, Lo/FarmDetailsAttributesJsonAdapter;-><init>(Landroid/view/View;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-object v0
.end method
