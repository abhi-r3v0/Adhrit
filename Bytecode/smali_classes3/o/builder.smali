.class public final Lo/builder;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/resolveIsInfinite$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/notifyEventReceivers;
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
            "Lo/onVerificationFailed;",
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
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/builder;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/builder;->onPostMessage:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/builder;->extraCallback:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/builder;->ICustomTabsCallback:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lo/builder;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/builder;->onPostMessage:Lo/notifyEventReceivers;

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
    iget-object v2, p0, Lo/builder;->extraCallback:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lo/builder;->ICustomTabsCallback:Lo/notifyEventReceivers;

    .line 2000
    instance-of v4, v3, Lo/setBreadcrumbEventReceiver;

    if-nez v4, :cond_1

    new-instance v4, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v4, v3}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    :cond_1
    new-instance v3, Lo/resolveIsInfinite$onPostMessage;

    check-cast v0, Lo/onVerificationFailed;

    check-cast v2, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    invoke-direct {v3, v0, v1, v2}, Lo/resolveIsInfinite$onPostMessage;-><init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V

    return-object v3
.end method
