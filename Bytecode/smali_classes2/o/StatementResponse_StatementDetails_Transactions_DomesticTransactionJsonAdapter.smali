.class final Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lorg/json/JSONObject;

.field private final synthetic onPostMessage:Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;


# direct methods
.method constructor <init>(Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;->onPostMessage:Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;

    iput-object p2, p0, Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;->onMessageChannelReady:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;->onPostMessage:Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;

    iget-object v0, v0, Lo/StatementResponse_StatementDetails_PastDuesJsonAdapter;->ICustomTabsCallback:Lo/BadgesJsonAdapter;

    iget-object v1, p0, Lo/StatementResponse_StatementDetails_Transactions_DomesticTransactionJsonAdapter;->onMessageChannelReady:Lorg/json/JSONObject;

    const-string v2, "fetchHttpRequestCompleted"

    invoke-interface {v0, v2, v1}, Lo/BadgesJsonAdapter;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string v0, "Dispatched http response."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
