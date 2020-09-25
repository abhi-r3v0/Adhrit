.class final Lo/toErrorString;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

.field private final synthetic extraCallback:Lo/ControlAggregatorResponse;

.field private final synthetic onNavigationEvent:Lo/GameCta;

.field private final synthetic onPostMessage:Lo/push;


# direct methods
.method constructor <init>(Lo/push;Lo/GameCta;Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/ControlAggregatorResponse;)V
    .locals 0

    iput-object p1, p0, Lo/toErrorString;->onPostMessage:Lo/push;

    iput-object p2, p0, Lo/toErrorString;->onNavigationEvent:Lo/GameCta;

    iput-object p3, p0, Lo/toErrorString;->ICustomTabsCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    iput-object p4, p0, Lo/toErrorString;->extraCallback:Lo/ControlAggregatorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object p1, p0, Lo/toErrorString;->onPostMessage:Lo/push;

    invoke-static {p1}, Lo/push;->onNavigationEvent(Lo/push;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object p2, p0, Lo/toErrorString;->onPostMessage:Lo/push;

    invoke-static {p2}, Lo/push;->ICustomTabsCallback(Lo/push;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    invoke-static {p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object p2, p0, Lo/toErrorString;->onPostMessage:Lo/push;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lo/push;->onMessageChannelReady(Lo/push;I)I

    iget-object p2, p0, Lo/toErrorString;->onPostMessage:Lo/push;

    iget-object v0, p0, Lo/toErrorString;->onNavigationEvent:Lo/GameCta;

    invoke-virtual {p2, v0}, Lo/push;->onMessageChannelReady(Lo/GameCta;)Lo/updateRangeInNode;

    :cond_0
    iget-object p2, p0, Lo/toErrorString;->ICustomTabsCallback:Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lo/toErrorString;->extraCallback:Lo/ControlAggregatorResponse;

    invoke-virtual {v1}, Lo/ControlAggregatorResponse;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {p2, v0, v1}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
