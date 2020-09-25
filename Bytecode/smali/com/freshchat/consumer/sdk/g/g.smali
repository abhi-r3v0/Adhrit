.class public Lcom/freshchat/consumer/sdk/g/g;
.super Lcom/freshchat/consumer/sdk/g/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/d<",
        "Lcom/freshchat/consumer/sdk/beans/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field private aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

.field private channelId:J

.field private final eT:Lcom/freshchat/consumer/sdk/c/e;

.field private final eU:Lcom/freshchat/consumer/sdk/c/c;

.field private final kQ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/g;->eU:Lcom/freshchat/consumer/sdk/c/c;

    new-instance v0, Lcom/freshchat/consumer/sdk/c/e;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/c/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/g/g;->eT:Lcom/freshchat/consumer/sdk/c/e;

    iput-boolean p2, p0, Lcom/freshchat/consumer/sdk/g/g;->kQ:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/g/g;-><init>(Landroid/content/Context;Z)V

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/g/g;->channelId:J

    return-void
.end method


# virtual methods
.method protected df()Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 5

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/g;->kQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/g;->eT:Lcom/freshchat/consumer/sdk/c/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/e;->fR()V

    :cond_0
    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/g/g;->channelId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/g;->eU:Lcom/freshchat/consumer/sdk/c/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/c/c;->cv()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/Channel;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/g/g;->eU:Lcom/freshchat/consumer/sdk/c/c;

    invoke-virtual {v2, v0, v1}, Lcom/freshchat/consumer/sdk/c/c;->e(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/g;->eT:Lcom/freshchat/consumer/sdk/c/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/freshchat/consumer/sdk/c/e;->f(J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/g/g;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    :cond_3
    return-object v0
.end method

.method public dg()Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/g;->aL:Lcom/freshchat/consumer/sdk/beans/Conversation;

    return-object v0
.end method

.method protected synthetic getData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/g/g;->df()Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v0

    return-object v0
.end method
