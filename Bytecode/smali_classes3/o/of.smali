.class public final Lo/of;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/findReferenceChildClosestToStart$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/lambda$of$1;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/setExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Ljava/lang/String;",
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
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Ljava/lang/String;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/setExecutor;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/lambda$of$1;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/of;->onPostMessage:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/of;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/of;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p4, p0, Lo/of;->extraCallback:Lo/notifyEventReceivers;

    iput-object p5, p0, Lo/of;->ICustomTabsCallback:Lo/notifyEventReceivers;

    iput-object p6, p0, Lo/of;->onTransact:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lo/of;->onPostMessage:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lo/of;->onMessageChannelReady:Lo/notifyEventReceivers;

    invoke-interface {v1}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lo/of;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    iget-object v2, p0, Lo/of;->extraCallback:Lo/notifyEventReceivers;

    check-cast v2, Lo/validateDependencies;

    .line 1000
    iget-object v2, v2, Lo/validateDependencies;->extraCallback:Lo/setOfProvider;

    .line 3000
    iget-object v6, v2, Lo/setOfProvider;->onMessageChannelReady:Landroid/content/Context;

    if-eqz v6, :cond_2

    .line 2000
    iget-object v2, p0, Lo/of;->ICustomTabsCallback:Lo/notifyEventReceivers;

    invoke-interface {v2}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lo/of;->onTransact:Lo/notifyEventReceivers;

    .line 5000
    instance-of v4, v3, Lo/setBreadcrumbEventReceiver;

    if-eqz v4, :cond_0

    check-cast v3, Lo/setBreadcrumbEventReceiver;

    move-object v8, v3

    goto :goto_0

    :cond_0
    new-instance v4, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v4, v3}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v8, v4

    :goto_0
    new-instance v9, Lo/findReferenceChildClosestToStart$onPostMessage;

    move-object v5, v1

    check-cast v5, Lo/setExecutor;

    move-object v7, v2

    check-cast v7, Lo/lambda$of$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move-object v4, v0

    :goto_1
    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lo/findReferenceChildClosestToStart$onPostMessage;-><init>(Ljava/io/File;Lo/setExecutor;Landroid/content/Context;Lo/lambda$of$1;Lo/setBreadcrumbEventReceiver;)V

    return-object v9

    .line 4000
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
