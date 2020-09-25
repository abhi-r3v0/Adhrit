.class final Lo/setAuxiliaryAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getText2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getText2<",
        "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getVersionNumber;Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 0

    iput-object p2, p0, Lo/setAuxiliaryAttributes;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/setAuxiliaryAttributes;->onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/setAuxiliaryAttributes;->onPostMessage:Ljava/lang/String;

    iget-object v1, p0, Lo/setAuxiliaryAttributes;->onMessageChannelReady:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    invoke-interface {p1, v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void
.end method
