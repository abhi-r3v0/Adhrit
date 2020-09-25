.class final Lo/trackStateJson;
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

.field final synthetic extraCallback:Lo/addressAdded;


# direct methods
.method constructor <init>(Lo/addressAdded;Lo/setIdentifier;)V
    .locals 0

    iput-object p1, p0, Lo/trackStateJson;->extraCallback:Lo/addressAdded;

    iput-object p2, p0, Lo/trackStateJson;->ICustomTabsCallback:Lo/setIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6
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

    iget-object p1, p0, Lo/trackStateJson;->extraCallback:Lo/addressAdded;

    invoke-static {p1}, Lo/addressAdded;->ICustomTabsCallback(Lo/addressAdded;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    iget-object p1, p0, Lo/trackStateJson;->ICustomTabsCallback:Lo/setIdentifier;

    const-string p2, "/loadHtml"

    invoke-interface {p1, p2, p0}, Lo/setIdentifier;->onMessageChannelReady(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object p1

    new-instance v1, Lo/getAppInfo;

    iget-object v2, p0, Lo/trackStateJson;->ICustomTabsCallback:Lo/setIdentifier;

    invoke-direct {v1, p0, p2, v2}, Lo/getAppInfo;-><init>(Lo/trackStateJson;Ljava/util/Map;Lo/setIdentifier;)V

    invoke-interface {p1, v1}, Lo/SizeFilter;->extraCallback(Lo/FileUploadConfigJsonAdapter;)V

    const-string p1, "overlayHtml"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string p1, "baseUrl"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "text/html"

    const-string p2, "UTF-8"

    invoke-interface {v0, v2, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
