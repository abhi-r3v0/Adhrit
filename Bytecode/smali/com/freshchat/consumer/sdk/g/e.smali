.class public Lcom/freshchat/consumer/sdk/g/e;
.super Lcom/freshchat/consumer/sdk/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final eL:Lcom/freshchat/consumer/sdk/c/i;

.field private eM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/c/i;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/e;->eL:Lcom/freshchat/consumer/sdk/c/i;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/e;->eM:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected dd()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/e;->eL:Lcom/freshchat/consumer/sdk/c/i;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/e;->eM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/c/i;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
