.class final Lo/withObject;
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
.field private final ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/PlutusOrderJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic onMessageChannelReady:Lo/SeenNotification;


# direct methods
.method public constructor <init>(Lo/SeenNotification;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/PlutusOrderJsonAdapter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/withObject;->onMessageChannelReady:Lo/SeenNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo/withObject;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/withObject;)Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .locals 0

    iget-object p0, p0, Lo/withObject;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    return-object p0
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    iget-object p1, p0, Lo/withObject;->ICustomTabsCallback:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iget-object v0, p0, Lo/withObject;->onMessageChannelReady:Lo/SeenNotification;

    invoke-interface {p1, v0, p2}, Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
