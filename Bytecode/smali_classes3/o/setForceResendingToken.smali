.class public final Lo/setForceResendingToken;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/setExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getExpiringWithin30Days$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/notifyEventReceivers;
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
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/findChildView$onMessageChannelReady;",
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

.field private final onRelationshipValidationResult:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getCustomAmount$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/findChildView$onMessageChannelReady;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/getExpiringWithin30Days$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/getCustomAmount$onMessageChannelReady;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setForceResendingToken;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/setForceResendingToken;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/setForceResendingToken;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/setForceResendingToken;->extraCallback:Lo/notifyEventReceivers;

    iput-object p5, p0, Lo/setForceResendingToken;->onPostMessage:Lo/notifyEventReceivers;

    iput-object p6, p0, Lo/setForceResendingToken;->ICustomTabsCallback$Stub:Lo/notifyEventReceivers;

    iput-object p7, p0, Lo/setForceResendingToken;->onTransact:Lo/notifyEventReceivers;

    iput-object p8, p0, Lo/setForceResendingToken;->asInterface:Lo/notifyEventReceivers;

    iput-object p9, p0, Lo/setForceResendingToken;->onRelationshipValidationResult:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lo/setForceResendingToken;->ICustomTabsCallback:Lo/notifyEventReceivers;

    check-cast v0, Lo/validateDependencies;

    .line 1000
    iget-object v0, v0, Lo/validateDependencies;->extraCallback:Lo/setOfProvider;

    .line 3000
    iget-object v2, v0, Lo/setOfProvider;->onMessageChannelReady:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 2000
    iget-object v0, p0, Lo/setForceResendingToken;->onMessageChannelReady:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/setForceResendingToken;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lo/setForceResendingToken;->extraCallback:Lo/notifyEventReceivers;

    .line 5000
    instance-of v4, v3, Lo/setBreadcrumbEventReceiver;

    if-eqz v4, :cond_0

    check-cast v3, Lo/setBreadcrumbEventReceiver;

    move-object v5, v3

    goto :goto_0

    :cond_0
    new-instance v4, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v4, v3}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v5, v4

    :goto_0
    iget-object v3, p0, Lo/setForceResendingToken;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lo/setForceResendingToken;->ICustomTabsCallback$Stub:Lo/notifyEventReceivers;

    invoke-interface {v4}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lo/setForceResendingToken;->onTransact:Lo/notifyEventReceivers;

    invoke-interface {v6}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lo/getCustomAmount$onMessageChannelReady;

    iget-object v6, p0, Lo/setForceResendingToken;->asInterface:Lo/notifyEventReceivers;

    .line 6000
    instance-of v7, v6, Lo/setBreadcrumbEventReceiver;

    if-eqz v7, :cond_1

    check-cast v6, Lo/setBreadcrumbEventReceiver;

    move-object v9, v6

    goto :goto_1

    :cond_1
    new-instance v7, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v7, v6}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v9, v7

    :goto_1
    iget-object v6, p0, Lo/setForceResendingToken;->onRelationshipValidationResult:Lo/notifyEventReceivers;

    .line 7000
    instance-of v7, v6, Lo/setBreadcrumbEventReceiver;

    if-eqz v7, :cond_2

    check-cast v6, Lo/setBreadcrumbEventReceiver;

    move-object v10, v6

    goto :goto_2

    :cond_2
    new-instance v7, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v7, v6}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v10, v7

    :goto_2
    new-instance v11, Lo/setExecutor;

    check-cast v0, Lo/resolveIsInfinite$onPostMessage;

    move-object v6, v1

    check-cast v6, Lo/findChildView$onMessageChannelReady;

    move-object v7, v3

    check-cast v7, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    move-object v12, v4

    check-cast v12, Lo/getExpiringWithin30Days$onPostMessage;

    move-object v1, v11

    move-object v3, v0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v12

    invoke-direct/range {v1 .. v10}, Lo/setExecutor;-><init>(Landroid/content/Context;Lo/resolveIsInfinite$onPostMessage;Lo/findChildView$onMessageChannelReady;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Lo/getExpiringWithin30Days$onPostMessage;Lo/getCustomAmount$onMessageChannelReady;Lo/setBreadcrumbEventReceiver;Lo/setBreadcrumbEventReceiver;)V

    return-object v11

    .line 4000
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
