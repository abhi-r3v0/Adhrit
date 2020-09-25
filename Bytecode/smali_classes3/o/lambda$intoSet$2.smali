.class public final Lo/lambda$intoSet$2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/hasValidAnchor$onNavigationEvent;",
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

.field private final extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/onVerificationFailed;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Lo/onVerificationFailed;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/lambda$intoSet$2;->extraCallback:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/lambda$intoSet$2;->onPostMessage:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/lambda$intoSet$2;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/lambda$intoSet$2;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p5, p0, Lo/lambda$intoSet$2;->onMessageChannelReady:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lo/lambda$intoSet$2;->extraCallback:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/lambda$intoSet$2;->onPostMessage:Lo/notifyEventReceivers;

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
    iget-object v1, p0, Lo/lambda$intoSet$2;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/lambda$intoSet$2;->onNavigationEvent:Lo/notifyEventReceivers;

    .line 2000
    instance-of v3, v2, Lo/setBreadcrumbEventReceiver;

    if-eqz v3, :cond_1

    check-cast v2, Lo/setBreadcrumbEventReceiver;

    move-object v7, v2

    goto :goto_1

    :cond_1
    new-instance v3, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v3, v2}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v7, v3

    :goto_1
    iget-object v2, p0, Lo/lambda$intoSet$2;->onMessageChannelReady:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    new-instance v9, Lo/hasValidAnchor$onNavigationEvent;

    move-object v4, v0

    check-cast v4, Lo/onVerificationFailed;

    move-object v6, v1

    check-cast v6, Lo/resolveIsInfinite$onPostMessage;

    move-object v8, v2

    check-cast v8, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lo/hasValidAnchor$onNavigationEvent;-><init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/resolveIsInfinite$onPostMessage;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V

    return-object v9
.end method
