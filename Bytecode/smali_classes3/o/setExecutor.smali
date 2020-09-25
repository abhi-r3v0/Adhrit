.class public final Lo/setExecutor;
.super Lo/CrashlyticsNativeComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/CrashlyticsNativeComponent<",
        "Lo/getSignInProvider;",
        ">;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

.field private final asInterface:Lo/getCustomAmount$onMessageChannelReady;

.field public final extraCallback:Landroid/os/Handler;

.field public final onMessageChannelReady:Lo/resolveIsInfinite$onPostMessage;

.field public final onPostMessage:Lo/findChildView$onMessageChannelReady;

.field private final onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/resolveIsInfinite$onPostMessage;Lo/findChildView$onMessageChannelReady;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Lo/getExpiringWithin30Days$onPostMessage;Lo/getCustomAmount$onMessageChannelReady;Lo/setBreadcrumbEventReceiver;Lo/setBreadcrumbEventReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/resolveIsInfinite$onPostMessage;",
            "Lo/findChildView$onMessageChannelReady;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            "Lo/getExpiringWithin30Days$onPostMessage;",
            "Lo/getCustomAmount$onMessageChannelReady;",
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    new-instance p6, Lo/addItemDecoration$onPostMessage;

    const-string v0, "AssetPackServiceListenerRegistry"

    invoke-direct {p6, v0}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p6, v0, p1}, Lo/CrashlyticsNativeComponent;-><init>(Lo/addItemDecoration$onPostMessage;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p1, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/setExecutor;->extraCallback:Landroid/os/Handler;

    iput-object p2, p0, Lo/setExecutor;->onMessageChannelReady:Lo/resolveIsInfinite$onPostMessage;

    iput-object p3, p0, Lo/setExecutor;->onPostMessage:Lo/findChildView$onMessageChannelReady;

    iput-object p4, p0, Lo/setExecutor;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    iput-object p5, p0, Lo/setExecutor;->asBinder:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    iput-object p7, p0, Lo/setExecutor;->asInterface:Lo/getCustomAmount$onMessageChannelReady;

    iput-object p8, p0, Lo/setExecutor;->onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;

    iput-object p9, p0, Lo/setExecutor;->ICustomTabsCallback$Stub:Lo/setBreadcrumbEventReceiver;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "pack_names"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.play.core.FLAGS"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lo/setExecutor;->asInterface:Lo/getCustomAmount$onMessageChannelReady;

    invoke-virtual {v2, p2}, Lo/getCustomAmount$onMessageChannelReady;->onMessageChannelReady(Landroid/os/Bundle;)V

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lo/setExecutor;->asBinder:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    sget-object v2, Lo/AppsFlyerLibCore$b;->extraCallback:Lo/setMultiFactorSession;

    invoke-static {p1, p2, v1, v2}, Lo/getSignInProvider;->ICustomTabsCallback(Landroid/os/Bundle;Ljava/lang/String;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;Lo/setMultiFactorSession;)Lo/getSignInProvider;

    move-result-object p2

    iget-object v1, p0, Lo/CrashlyticsNativeComponent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string v0, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v1, v0, v2}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    iget-object v0, p0, Lo/setExecutor;->ICustomTabsCallback$Stub:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lo/findSwapTargets$onNavigationEvent;

    invoke-direct {v1, p0, p1, p2}, Lo/findSwapTargets$onNavigationEvent;-><init>(Lo/setExecutor;Landroid/os/Bundle;Lo/getSignInProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lo/setExecutor;->onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;

    invoke-interface {p2}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Lo/moveIfNecessary$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/moveIfNecessary$onPostMessage;-><init>(Lo/setExecutor;Landroid/os/Bundle;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lo/CrashlyticsNativeComponent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    invoke-virtual {p1, v0, p2}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lo/CrashlyticsNativeComponent;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    invoke-virtual {p1, v0, p2}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
