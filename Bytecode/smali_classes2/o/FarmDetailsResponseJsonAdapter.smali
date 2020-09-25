.class final Lo/FarmDetailsResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/FarmDetailsAttributes;


# direct methods
.method constructor <init>(Lo/FarmDetailsAttributes;)V
    .locals 0

    iput-object p1, p0, Lo/FarmDetailsResponseJsonAdapter;->onMessageChannelReady:Lo/FarmDetailsAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lo/FarmDetailsResponseJsonAdapter;->onMessageChannelReady:Lo/FarmDetailsAttributes;

    invoke-static {p1}, Lo/FarmDetailsAttributes;->onNavigationEvent(Lo/FarmDetailsAttributes;)Lo/EntityJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/EntityJsonAdapter;->extraCallback(Ljava/util/Map;)V

    return-void
.end method
