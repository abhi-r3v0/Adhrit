.class public final Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setCanReverse;

.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCanReverse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback:Lo/setCanReverse;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final extraCallback()Lo/setCanReverse;
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback:Lo/setCanReverse;

    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback:Lo/setCanReverse;

    iget-object v1, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, v1}, Lo/setCanReverse;->onPostMessage(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;J[Ljava/lang/String;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->onMessageChannelReady:Ljava/util/Map;

    iget-object v0, p0, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback:Lo/setCanReverse;

    if-nez v0, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p3, p4}, Lo/setCanReverse;->onPostMessage(J)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object p3

    :goto_1
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
