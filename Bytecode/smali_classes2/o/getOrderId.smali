.class public final Lo/getOrderId;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private final asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/SuggestedAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SuggestedAmount<",
            "Lo/getRedirectUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private final onNavigationEvent:Landroid/content/Context;

.field private onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getOrderId;->onMessageChannelReady:Ljava/lang/Object;

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    iput-object v0, p0, Lo/getOrderId;->extraCallback:Lo/SuggestedAmount;

    new-instance v0, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/AutoDebitPitchDialog$dismissInternal$$inlined$executeOnResume$1;-><init>(Lo/getOrderId;)V

    iput-object v0, p0, Lo/getOrderId;->onRelationshipValidationResult:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/AutoDebitRegisterResponse;

    invoke-direct {v0, p0}, Lo/AutoDebitRegisterResponse;-><init>(Lo/getOrderId;)V

    iput-object v0, p0, Lo/getOrderId;->asInterface:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    new-instance v0, Lo/getTransactionId;

    invoke-direct {v0, p0}, Lo/getTransactionId;-><init>(Lo/getOrderId;)V

    iput-object v0, p0, Lo/getOrderId;->onTransact:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    iput-object p1, p0, Lo/getOrderId;->onNavigationEvent:Landroid/content/Context;

    iput-object p3, p0, Lo/getOrderId;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/getOrderId;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/getOrderId;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/getOrderId;->onMessageChannelReady:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/getOrderId;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/getOrderId;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/getOrderId;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/getOrderId;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/getOrderId;)Lo/SuggestedAmount;
    .locals 0

    iget-object p0, p0, Lo/getOrderId;->extraCallback:Lo/SuggestedAmount;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/getOrderId;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo/getOrderId;->onNavigationEvent:Landroid/content/Context;

    return-object p0
.end method
