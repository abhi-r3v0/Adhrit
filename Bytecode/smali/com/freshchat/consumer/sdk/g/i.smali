.class public Lcom/freshchat/consumer/sdk/g/i;
.super Lcom/freshchat/consumer/sdk/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/g/c<",
        "Lcom/freshchat/consumer/sdk/beans/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private aO:Z

.field private final av:Lcom/freshchat/consumer/sdk/c/g;

.field private final channelId:J

.field private final eW:Lcom/freshchat/consumer/sdk/c/h;

.field private final eX:J

.field private participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/g/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/i;->aO:Z

    iput-wide p2, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    new-instance p2, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/i;->av:Lcom/freshchat/consumer/sdk/c/g;

    new-instance p2, Lcom/freshchat/consumer/sdk/c/h;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/c/h;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/g/i;->eW:Lcom/freshchat/consumer/sdk/c/h;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/ap;->bD(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;->getConversationConfig()Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/config/ConversationConfig;->getActiveConvWindow()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/g/i;->eX:J

    return-void
.end method


# virtual methods
.method protected dd()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->av:Lcom/freshchat/consumer/sdk/c/g;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/c/g;->k(J)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/i;->eW:Lcom/freshchat/consumer/sdk/c/h;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/c/h;->cH()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/g/i;->participants:Ljava/util/List;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/g/i;->av:Lcom/freshchat/consumer/sdk/c/g;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/g/i;->channelId:J

    iget-wide v4, p0, Lcom/freshchat/consumer/sdk/g/i;->eX:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/c/g;->a(JJ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/freshchat/consumer/sdk/g/i;->aO:Z

    return-object v0
.end method

.method public di()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/g/i;->aO:Z

    return v0
.end method

.method public getParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/g/i;->participants:Ljava/util/List;

    return-object v0
.end method
