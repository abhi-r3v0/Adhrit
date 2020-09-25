.class public final Lo/forContext;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/getOnFlingListener$onNavigationEvent;",
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
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/getExpiringWithin30Days$onPostMessage;",
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
            "Lo/MissingNativeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/setExecutor;",
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

.field private final onTransact:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
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
            "Lo/onVerificationFailed;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/toGraph;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/setExecutor;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/MissingNativeComponent;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/resolveIsInfinite$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/getExpiringWithin30Days$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/forContext;->extraCallback:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/forContext;->onPostMessage:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/forContext;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/forContext;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p5, p0, Lo/forContext;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p6, p0, Lo/forContext;->ICustomTabsCallback$Stub:Lo/notifyEventReceivers;

    iput-object p7, p0, Lo/forContext;->asInterface:Lo/notifyEventReceivers;

    iput-object p8, p0, Lo/forContext;->onTransact:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lo/forContext;->extraCallback:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/forContext;->onPostMessage:Lo/notifyEventReceivers;

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
    iget-object v2, p0, Lo/forContext;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lo/forContext;->onMessageChannelReady:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    iget-object v3, p0, Lo/forContext;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    iget-object v3, p0, Lo/forContext;->ICustomTabsCallback$Stub:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    iget-object v3, p0, Lo/forContext;->asInterface:Lo/notifyEventReceivers;

    invoke-interface {v3}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    iget-object v3, p0, Lo/forContext;->onTransact:Lo/notifyEventReceivers;

    .line 2000
    instance-of v4, v3, Lo/setBreadcrumbEventReceiver;

    if-eqz v4, :cond_1

    check-cast v3, Lo/setBreadcrumbEventReceiver;

    goto :goto_1

    :cond_1
    new-instance v4, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v4, v3}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v3, v4

    :goto_1
    new-instance v4, Lo/getOnFlingListener$onNavigationEvent;

    check-cast v0, Lo/onVerificationFailed;

    check-cast v2, Lo/setExecutor;

    invoke-direct {v4, v0, v1, v2, v3}, Lo/getOnFlingListener$onNavigationEvent;-><init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/setExecutor;Lo/setBreadcrumbEventReceiver;)V

    return-object v4
.end method
