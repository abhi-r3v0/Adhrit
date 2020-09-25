.class final Lo/BankSmsAckRequestJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/CardValidationResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/CardValidationResponse<",
        "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;

    sget-object v0, Lo/StatementResponse$Waiver;->ICustomTabsCallback$Stub:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    sget-object v0, Lo/StatementResponse$Waiver;->getInterfaceDescriptor:Lo/StatementResponse$StatementDetails$Transactions$InternationalTransaction;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method
