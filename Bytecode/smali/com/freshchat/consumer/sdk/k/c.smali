.class public Lcom/freshchat/consumer/sdk/k/c;
.super Lcom/freshchat/consumer/sdk/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/k/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(IILjava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p3}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v0

    invoke-static {p4}, Lcom/freshchat/consumer/sdk/j/k;->c(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 p1, p1, -0xa

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p2, p2, 0xa

    if-ge p2, v1, :cond_2

    move v1, p2

    :cond_2
    invoke-interface {p3, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p4, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p3, Lcom/freshchat/consumer/sdk/k/c$a;

    invoke-direct {p3, p0, p2, p1}, Lcom/freshchat/consumer/sdk/k/c$a;-><init>(Lcom/freshchat/consumer/sdk/k/c;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p3}, Lcom/freshchat/consumer/sdk/k/c$a;->gv()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method
