.class public Lcom/freshchat/consumer/sdk/service/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final fI:Lcom/freshchat/consumer/sdk/service/e/j;

.field private final fJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/freshchat/consumer/sdk/service/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/b/c;->fI:Lcom/freshchat/consumer/sdk/service/e/j;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/b/c;->fJ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public du()Lcom/freshchat/consumer/sdk/service/a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/b/c;->fJ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/service/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dv()Lcom/freshchat/consumer/sdk/service/e/j;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/b/c;->fI:Lcom/freshchat/consumer/sdk/service/e/j;

    return-object v0
.end method
