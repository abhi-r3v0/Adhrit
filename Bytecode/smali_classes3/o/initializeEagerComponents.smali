.class public final Lo/initializeEagerComponents;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers<",
        "Lo/toGraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/setTimeout;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "Lo/findReferenceChildClosestToStart$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/notifyEventReceivers;Lo/notifyEventReceivers;Lo/notifyEventReceivers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "Landroid/content/Context;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/setTimeout;",
            ">;",
            "Lo/notifyEventReceivers<",
            "Lo/findReferenceChildClosestToStart$onPostMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/initializeEagerComponents;->onNavigationEvent:Lo/notifyEventReceivers;

    iput-object p2, p0, Lo/initializeEagerComponents;->onMessageChannelReady:Lo/notifyEventReceivers;

    iput-object p3, p0, Lo/initializeEagerComponents;->onPostMessage:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lo/initializeEagerComponents;->onNavigationEvent:Lo/notifyEventReceivers;

    check-cast v0, Lo/validateDependencies;

    .line 1000
    iget-object v0, v0, Lo/validateDependencies;->extraCallback:Lo/setOfProvider;

    .line 3000
    iget-object v0, v0, Lo/setOfProvider;->onMessageChannelReady:Landroid/content/Context;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-eqz v0, :cond_4

    .line 2000
    iget-object v2, p0, Lo/initializeEagerComponents;->onMessageChannelReady:Lo/notifyEventReceivers;

    .line 5000
    instance-of v3, v2, Lo/setBreadcrumbEventReceiver;

    if-eqz v3, :cond_0

    check-cast v2, Lo/setBreadcrumbEventReceiver;

    goto :goto_0

    :cond_0
    new-instance v3, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v3, v2}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v2, v3

    :goto_0
    iget-object v3, p0, Lo/initializeEagerComponents;->onPostMessage:Lo/notifyEventReceivers;

    .line 6000
    instance-of v4, v3, Lo/setBreadcrumbEventReceiver;

    if-eqz v4, :cond_1

    check-cast v3, Lo/setBreadcrumbEventReceiver;

    goto :goto_1

    :cond_1
    new-instance v4, Lo/setCrashlyticsOriginEventReceiver;

    invoke-direct {v4, v3}, Lo/setCrashlyticsOriginEventReceiver;-><init>(Lo/notifyEventReceivers;)V

    move-object v3, v4

    :goto_1
    invoke-static {v0}, Lo/setOfProvider;->onPostMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {v2}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGraph;

    goto :goto_2

    .line 7000
    :cond_2
    invoke-interface {v3}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGraph;

    :goto_2
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4000
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
