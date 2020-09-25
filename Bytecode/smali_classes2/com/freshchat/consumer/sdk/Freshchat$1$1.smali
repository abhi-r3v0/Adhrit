.class Lcom/freshchat/consumer/sdk/Freshchat$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/freshchat/consumer/sdk/service/a<",
        "Lcom/freshchat/consumer/sdk/service/e/w;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/freshchat/consumer/sdk/Freshchat$1;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/Freshchat$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat$1$1;->d:Lcom/freshchat/consumer/sdk/Freshchat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/service/e/w;

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/Freshchat$1$1;->a(Lcom/freshchat/consumer/sdk/service/e/w;)V

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/service/e/w;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat$1$1;->d:Lcom/freshchat/consumer/sdk/Freshchat$1;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/Freshchat$1;->b:Lcom/freshchat/consumer/sdk/UnreadCountCallback;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/w;->dO()Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/e/w;->getCount()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/Freshchat;->access$100(Lcom/freshchat/consumer/sdk/UnreadCountCallback;Lcom/freshchat/consumer/sdk/FreshchatCallbackStatus;I)V

    :cond_0
    return-void
.end method
