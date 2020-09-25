.class final Lo/LeaderBoardInnerCard;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/Fields;


# direct methods
.method constructor <init>(Lo/Fields;)V
    .locals 0

    iput-object p1, p0, Lo/LeaderBoardInnerCard;->onMessageChannelReady:Lo/Fields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lo/PlutusOrderJsonAdapter;

    iget-object v0, p0, Lo/LeaderBoardInnerCard;->onMessageChannelReady:Lo/Fields;

    invoke-static {v0}, Lo/Fields;->onMessageChannelReady(Lo/Fields;)Lo/EntityJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/EntityJsonAdapter;->onMessageChannelReady(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LeaderBoardInnerCard;->onMessageChannelReady:Lo/Fields;

    invoke-static {v0}, Lo/Fields;->onPostMessage(Lo/Fields;)Lo/getDomesticTransactions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/getDomesticTransactions;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
