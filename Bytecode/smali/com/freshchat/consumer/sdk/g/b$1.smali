.class Lcom/freshchat/consumer/sdk/g/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/freshchat/consumer/sdk/beans/Article;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic eP:Lcom/freshchat/consumer/sdk/g/b;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/g/b$1;->eP:Lcom/freshchat/consumer/sdk/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/Article;Lcom/freshchat/consumer/sdk/beans/Article;)I
    .locals 2

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Article;->getRank()I

    move-result v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getRank()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/Article;->getRank()I

    move-result p2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Article;->getRank()I

    move-result p1

    if-ge p2, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Article;

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/Article;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/g/b$1;->a(Lcom/freshchat/consumer/sdk/beans/Article;Lcom/freshchat/consumer/sdk/beans/Article;)I

    move-result p1

    return p1
.end method
