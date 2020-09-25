.class public final Lo/getPublishedEvents;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/findChildView$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/hasValidAnchor$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/findFirstReferenceChild$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/releaseVelocityTracker$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/calculateDtToFit$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/recycleViewsFromStart$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/onTargetFound$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/releaseVelocityTracker$extraCallback;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/calculateDtToFit$ICustomTabsCallback;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/findFirstReferenceChild$extraCallback;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/hasValidAnchor$onNavigationEvent;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/onTargetFound$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/recycleViewsFromStart$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getPublishedEvents;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/getPublishedEvents;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/getPublishedEvents;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/getPublishedEvents;->onPostMessage:Lo/notifyEventReceivers;

    iput-object p5, p0, Lo/getPublishedEvents;->extraCallback:Lo/notifyEventReceivers;

    iput-object p6, p0, Lo/getPublishedEvents;->ICustomTabsCallback$Stub:Lo/notifyEventReceivers;

    iput-object p7, p0, Lo/getPublishedEvents;->onTransact:Lo/notifyEventReceivers;

    iput-object p8, p0, Lo/getPublishedEvents;->onRelationshipValidationResult:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lo/getPublishedEvents;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/getPublishedEvents;->onNavigationEvent:Lo/notifyEventReceivers;

    .line 1000
    instance-of v2, v1, Lo/setBreadcrumbEventReceiver;

    if-eqz v2, :cond_0

    check-cast v1, Lo/setBreadcrumbEventReceiver;

    move-object v5, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v2, v1}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v5, v2

    :goto_0
    iget-object v1, p0, Lo/getPublishedEvents;->onMessageChannelReady:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/getPublishedEvents;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lo/getPublishedEvents;->extraCallback:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lo/getPublishedEvents;->ICustomTabsCallback$Stub:Lo/notifyEventReceivers;

    invoke-interface {v4}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lo/getPublishedEvents;->onTransact:Lo/notifyEventReceivers;

    invoke-interface {v6}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lo/getPublishedEvents;->onRelationshipValidationResult:Lo/notifyEventReceivers;

    invoke-interface {v7}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v7

    new-instance v12, Lo/findChildView$onMessageChannelReady;

    check-cast v0, Lo/resolveIsInfinite$onPostMessage;

    check-cast v1, Lo/releaseVelocityTracker$extraCallback;

    check-cast v2, Lo/calculateDtToFit$ICustomTabsCallback;

    move-object v8, v3

    check-cast v8, Lo/findFirstReferenceChild$extraCallback;

    move-object v9, v4

    check-cast v9, Lo/hasValidAnchor$onNavigationEvent;

    move-object v10, v6

    check-cast v10, Lo/onTargetFound$onPostMessage;

    move-object v11, v7

    check-cast v11, Lo/recycleViewsFromStart$ICustomTabsCallback;

    move-object v3, v12

    move-object v4, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v3 .. v11}, Lo/findChildView$onMessageChannelReady;-><init>(Lo/resolveIsInfinite$onPostMessage;Lo/setBreadcrumbEventReceiver;Lo/releaseVelocityTracker$extraCallback;Lo/calculateDtToFit$ICustomTabsCallback;Lo/findFirstReferenceChild$extraCallback;Lo/hasValidAnchor$onNavigationEvent;Lo/onTargetFound$onPostMessage;Lo/recycleViewsFromStart$ICustomTabsCallback;)V

    return-object v12
.end method
