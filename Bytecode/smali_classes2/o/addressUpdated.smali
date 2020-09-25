.class final Lo/addressUpdated;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setIdentifier;

.field private final synthetic onMessageChannelReady:Lo/addressAdded;


# direct methods
.method constructor <init>(Lo/addressAdded;Lo/setIdentifier;)V
    .locals 0

    iput-object p1, p0, Lo/addressUpdated;->onMessageChannelReady:Lo/addressAdded;

    iput-object p2, p0, Lo/addressUpdated;->ICustomTabsCallback:Lo/setIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lo/addressUpdated;->onMessageChannelReady:Lo/addressAdded;

    invoke-static {p1}, Lo/addressAdded;->ICustomTabsCallback(Lo/addressAdded;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/addressUpdated;->ICustomTabsCallback:Lo/setIdentifier;

    const-string p2, "/showOverlay"

    invoke-interface {p1, p2, p0}, Lo/setIdentifier;->onMessageChannelReady(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
