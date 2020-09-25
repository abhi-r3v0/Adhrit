.class Lcom/freshchat/consumer/sdk/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ck:I

.field final synthetic cl:Lcom/freshchat/consumer/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/a/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/b$1;->cl:Lcom/freshchat/consumer/sdk/a/b;

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/b$1;->ck:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/b$1;->cl:Lcom/freshchat/consumer/sdk/a/b;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/a/b;->a(Lcom/freshchat/consumer/sdk/a/b;)Lcom/freshchat/consumer/sdk/a/b$a;

    move-result-object v0

    iget v1, p0, Lcom/freshchat/consumer/sdk/a/b$1;->ck:I

    invoke-interface {v0, p1, v1}, Lcom/freshchat/consumer/sdk/a/b$a;->a(Landroid/view/View;I)V

    return-void
.end method
