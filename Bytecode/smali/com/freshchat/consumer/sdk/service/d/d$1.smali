.class final Lcom/freshchat/consumer/sdk/service/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic gc:Lcom/freshchat/consumer/sdk/service/e/j;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/service/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/d/d$1;->gc:Lcom/freshchat/consumer/sdk/service/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/service/e/k;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unhandled failed response for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/d/d$1;->gc:Lcom/freshchat/consumer/sdk/service/e/j;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Response"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
