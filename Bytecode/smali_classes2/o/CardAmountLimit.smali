.class final Lo/CardAmountLimit;
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
.field private final synthetic onPostMessage:Lo/BankDetailsResponse$BanksDetail;


# direct methods
.method constructor <init>(Lo/BankDetailsResponse$BanksDetail;)V
    .locals 0

    iput-object p1, p0, Lo/CardAmountLimit;->onPostMessage:Lo/BankDetailsResponse$BanksDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object p2, p0, Lo/CardAmountLimit;->onPostMessage:Lo/BankDetailsResponse$BanksDetail;

    invoke-virtual {p2, p1}, Lo/BankDetailsResponse$BanksDetail;->onMessageChannelReady(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    return-void
.end method
