.class Lcom/freshchat/consumer/sdk/service/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/a;


# instance fields
.field final synthetic hz:Lcom/freshchat/consumer/sdk/service/c/n;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/service/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/c/y;->hz:Lcom/freshchat/consumer/sdk/service/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/service/e/k;)V
    .locals 1

    const-string p1, "FRESHCHAT"

    const-string v0, "Message sent successfully"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
