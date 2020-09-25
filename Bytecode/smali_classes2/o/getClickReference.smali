.class final Lo/getClickReference;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getSpendType;


# direct methods
.method constructor <init>(Lo/ControlStatementRepo$TransactionItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/ControlStatementRepo$TxnSpendFooterItem;

    invoke-direct {v0, p0, p1}, Lo/ControlStatementRepo$TxnSpendFooterItem;-><init>(Lo/getClickReference;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/ControlStatementRepo$TxnSpendFooterItem;->start()V

    return-void
.end method
