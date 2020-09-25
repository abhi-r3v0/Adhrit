.class final Lo/setConfigs;
.super Ljava/lang/Object;

# interfaces
.implements Lo/WorkFlowUpdateRequestJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/WorkFlowUpdateRequestJsonAdapter<",
        "Lo/StashProcessingDialog$realDismiss$$inlined$executeOnResume$1;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/Health$ServiceStatus;

.field private final synthetic onNavigationEvent:Lo/PromotionalCardsJsonAdapter;

.field private final synthetic onPostMessage:Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;


# direct methods
.method constructor <init>(Lo/Health$ServiceStatus;Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;Lo/PromotionalCardsJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/setConfigs;->ICustomTabsCallback:Lo/Health$ServiceStatus;

    iput-object p2, p0, Lo/setConfigs;->onPostMessage:Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;

    iput-object p3, p0, Lo/setConfigs;->onNavigationEvent:Lo/PromotionalCardsJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/setConfigs;->onPostMessage:Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;

    invoke-interface {v0, p1}, Lo/CredUpiPresenter$$special$$inlined$apply$lambda$1$1;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
