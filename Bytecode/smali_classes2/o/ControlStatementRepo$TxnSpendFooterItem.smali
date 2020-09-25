.class final Lo/ControlStatementRepo$TxnSpendFooterItem;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getClickReference;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lo/ControlStatementRepo$TxnSpendFooterItem;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lo/Footer;

    invoke-direct {v0}, Lo/Footer;-><init>()V

    iget-object v1, p0, Lo/ControlStatementRepo$TxnSpendFooterItem;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Footer;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
