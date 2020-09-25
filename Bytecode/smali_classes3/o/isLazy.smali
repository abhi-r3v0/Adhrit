.class public final Lo/isLazy;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/releaseVelocityTracker$extraCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/setExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/onVerificationFailed;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
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
            "Lo/setExecutor;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/isLazy;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/isLazy;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/isLazy;->extraCallback:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/isLazy;->onPostMessage:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lo/isLazy;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/isLazy;->onMessageChannelReady:Lo/notifyEventReceivers;

    .line 1000
    instance-of v2, v1, Lo/setBreadcrumbEventReceiver;

    if-eqz v2, :cond_0

    check-cast v1, Lo/setBreadcrumbEventReceiver;

    goto :goto_0

    :cond_0
    new-instance v2, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v2, v1}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v1, v2

    :goto_0
    iget-object v2, p0, Lo/isLazy;->extraCallback:Lo/notifyEventReceivers;

    .line 2000
    instance-of v3, v2, Lo/setBreadcrumbEventReceiver;

    if-eqz v3, :cond_1

    check-cast v2, Lo/setBreadcrumbEventReceiver;

    goto :goto_1

    :cond_1
    new-instance v3, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v3, v2}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v2, v3

    :goto_1
    iget-object v3, p0, Lo/isLazy;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lo/releaseVelocityTracker$extraCallback;

    check-cast v0, Lo/onVerificationFailed;

    check-cast v3, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    invoke-direct {v4, v0, v1, v2, v3}, Lo/releaseVelocityTracker$extraCallback;-><init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V

    return-object v4
.end method
