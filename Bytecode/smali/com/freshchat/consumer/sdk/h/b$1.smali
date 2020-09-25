.class final Lcom/freshchat/consumer/sdk/h/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic fi:Landroid/content/Context;

.field final synthetic fj:Lcom/freshchat/consumer/sdk/h/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/b$1;->fi:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/h/b$1;->fj:Lcom/freshchat/consumer/sdk/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/h/b$1;->fi:Landroid/content/Context;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/h/b$1;->fj:Lcom/freshchat/consumer/sdk/h/a;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/h/b;->e(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V

    return-void
.end method
