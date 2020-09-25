.class final Lo/InputDataJsonAdapter;
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
.field private final synthetic onPostMessage:Lo/Fields;


# direct methods
.method constructor <init>(Lo/Fields;)V
    .locals 0

    iput-object p1, p0, Lo/InputDataJsonAdapter;->onPostMessage:Lo/Fields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lo/InputDataJsonAdapter;->onPostMessage:Lo/Fields;

    invoke-static {p1}, Lo/Fields;->onMessageChannelReady(Lo/Fields;)Lo/EntityJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/EntityJsonAdapter;->onMessageChannelReady(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/InputDataJsonAdapter;->onPostMessage:Lo/Fields;

    invoke-static {p1}, Lo/Fields;->onMessageChannelReady(Lo/Fields;)Lo/EntityJsonAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/EntityJsonAdapter;->extraCallback(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
