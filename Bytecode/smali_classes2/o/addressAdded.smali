.class final Lo/addressAdded;
.super Ljava/lang/Object;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/addressAdded;->extraCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/addressAdded;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lo/addressAdded;->extraCallback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/addressAdded;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lo/addressAdded;->ICustomTabsCallback:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic onPostMessage(Lo/addressAdded;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/addressAdded;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/setIdentifier;)V
    .locals 2

    new-instance v0, Lo/trackStateJson;

    invoke-direct {v0, p0, p1}, Lo/trackStateJson;-><init>(Lo/addressAdded;Lo/setIdentifier;)V

    const-string v1, "/loadHtml"

    invoke-interface {p1, v1, v0}, Lo/setIdentifier;->ICustomTabsCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v0, Lo/addressUpdated;

    invoke-direct {v0, p0, p1}, Lo/addressUpdated;-><init>(Lo/addressAdded;Lo/setIdentifier;)V

    const-string v1, "/showOverlay"

    invoke-interface {p1, v1, v0}, Lo/setIdentifier;->ICustomTabsCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    new-instance v0, Lo/showUpdateDialog;

    invoke-direct {v0, p0, p1}, Lo/showUpdateDialog;-><init>(Lo/addressAdded;Lo/setIdentifier;)V

    const-string v1, "/hideOverlay"

    invoke-interface {p1, v1, v0}, Lo/setIdentifier;->ICustomTabsCallback(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    iget-object v0, p0, Lo/addressAdded;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    new-instance v1, Lo/cardDataUpdated;

    invoke-direct {v1, p0, p1}, Lo/cardDataUpdated;-><init>(Lo/addressAdded;Lo/setIdentifier;)V

    const-string p1, "/sendMessageToSdk"

    invoke-interface {v0, p1, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_0
    return-void
.end method
