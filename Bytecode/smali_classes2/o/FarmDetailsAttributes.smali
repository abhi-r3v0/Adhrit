.class public final Lo/FarmDetailsAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LeaderBoardJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/EntityJsonAdapter;

.field private final onMessageChannelReady:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private final onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/EntityJsonAdapter;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/FarmDetailsResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/FarmDetailsResponseJsonAdapter;-><init>(Lo/FarmDetailsAttributes;)V

    iput-object v0, p0, Lo/FarmDetailsAttributes;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/FarmInnerCardResponse;

    invoke-direct {v0, p0}, Lo/FarmInnerCardResponse;-><init>(Lo/FarmDetailsAttributes;)V

    iput-object v0, p0, Lo/FarmDetailsAttributes;->onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/FarmInnerCardResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/FarmInnerCardResponseJsonAdapter;-><init>(Lo/FarmDetailsAttributes;)V

    iput-object v0, p0, Lo/FarmDetailsAttributes;->onPostMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iput-object p1, p0, Lo/FarmDetailsAttributes;->extraCallback:Lo/EntityJsonAdapter;

    iput-object p2, p0, Lo/FarmDetailsAttributes;->onMessageChannelReady:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object p1, p0, Lo/FarmDetailsAttributes;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v0, "/updateActiveView"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object p1, p0, Lo/FarmDetailsAttributes;->onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v0, "/untrackActiveViewUnit"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object p1, p0, Lo/FarmDetailsAttributes;->onPostMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v0, "/visibilityChanged"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object p1, p0, Lo/FarmDetailsAttributes;->extraCallback:Lo/EntityJsonAdapter;

    iget-object p1, p1, Lo/EntityJsonAdapter;->onPostMessage:Lo/CtaClaimedJsonAdapter;

    invoke-virtual {p1}, Lo/CtaClaimedJsonAdapter;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "Custom JS tracking ad unit: "

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/FarmDetailsAttributes;)Lo/EntityJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/FarmDetailsAttributes;->extraCallback:Lo/EntityJsonAdapter;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 3

    iget-object v0, p0, Lo/FarmDetailsAttributes;->onMessageChannelReady:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/FarmDetailsAttributes;->onPostMessage:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/visibilityChanged"

    invoke-interface {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v1, p0, Lo/FarmDetailsAttributes;->onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/untrackActiveViewUnit"

    invoke-interface {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v1, p0, Lo/FarmDetailsAttributes;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v2, "/updateActiveView"

    invoke-interface {v0, v2, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lorg/json/JSONObject;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lo/FarmDetailsAttributes;->onMessageChannelReady:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const-string v0, "AFMA_updateActiveView"

    invoke-interface {p2, v0, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object p1, p0, Lo/FarmDetailsAttributes;->extraCallback:Lo/EntityJsonAdapter;

    invoke-virtual {p1, p0}, Lo/EntityJsonAdapter;->onPostMessage(Lo/LeaderBoardJsonAdapter;)V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
