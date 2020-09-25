.class Lcom/freshchat/consumer/sdk/Freshchat$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/freshchat/consumer/sdk/UnreadCountCallback;

.field final synthetic c:Lcom/freshchat/consumer/sdk/Freshchat;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/Freshchat;Ljava/util/List;Lcom/freshchat/consumer/sdk/UnreadCountCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/Freshchat$1;->c:Lcom/freshchat/consumer/sdk/Freshchat;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/Freshchat$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/Freshchat$1;->b:Lcom/freshchat/consumer/sdk/UnreadCountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 2

    new-instance p1, Lcom/freshchat/consumer/sdk/service/e/g;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/service/e/g;-><init>()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat$1;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/service/e/g;->t(Ljava/util/List;)Lcom/freshchat/consumer/sdk/service/e/g;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Freshchat$1;->c:Lcom/freshchat/consumer/sdk/Freshchat;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->access$000(Lcom/freshchat/consumer/sdk/Freshchat;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/Freshchat$1$1;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/Freshchat$1$1;-><init>(Lcom/freshchat/consumer/sdk/Freshchat$1;)V

    invoke-static {v0, p1, v1}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method
