.class public final Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/installDefaultInflateDelegates;
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release",
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$$special$$inlined$executeOnResume$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OfferSlab;

.field final synthetic extraCallback:Lo/installDefaultInflateDelegates;

.field private synthetic onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lcom/cred/pay/repository/models/checkout/OfferSlab;Lo/installDefaultInflateDelegates;)V
    .locals 0

    iput-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/OfferSlab;

    iput-object p4, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->extraCallback:Lo/installDefaultInflateDelegates;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->extraCallback:Lo/installDefaultInflateDelegates;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/installDefaultInflateDelegates;->onNavigationEvent(Z)V

    .line 54
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3$4;

    invoke-direct {p1, p0}, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3$4;-><init>(Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    new-instance v1, Lo/updateItemAt$extraCallback;

    invoke-direct {v1, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v1}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 58
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3$5;

    invoke-direct {p1, p0}, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3$5;-><init>(Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;)V

    check-cast p1, Lo/getServerTime;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    new-instance v0, Lo/updateItemAt$extraCallback;

    invoke-direct {v0, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x6d6

    invoke-static {v1, v2, v0}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 27
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object p1, p0, Lcom/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->onMessageChannelReady:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
