.class public Lcom/freshchat/consumer/sdk/beans/Conversation;
.super Ljava/lang/Object;


# instance fields
.field private channelId:J

.field private conversationId:J

.field private csat:Lcom/freshchat/consumer/sdk/beans/Csat;

.field private hasPendingCsat:Z

.field private logId:J

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation
.end field

.field private participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private requireDebugLog:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->messages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->participants:Ljava/util/List;

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->conversationId:J

    return-void
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->channelId:J

    return-wide v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->conversationId:J

    return-wide v0
.end method

.method public getCsat()Lcom/freshchat/consumer/sdk/beans/Csat;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->csat:Lcom/freshchat/consumer/sdk/beans/Csat;

    return-object v0
.end method

.method public getLogId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->logId:J

    return-wide v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->messages:Ljava/util/List;

    return-object v0
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

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->participants:Ljava/util/List;

    return-object v0
.end method

.method public hasPendingCsat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat:Z

    return v0
.end method

.method public isRequireDebugLog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->requireDebugLog:Z

    return v0
.end method

.method public setChannelId(J)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->channelId:J

    return-object p0
.end method

.method public setConversationId(J)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->conversationId:J

    return-object p0
.end method

.method public setCsat(Lcom/freshchat/consumer/sdk/beans/Csat;)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->csat:Lcom/freshchat/consumer/sdk/beans/Csat;

    return-object p0
.end method

.method public setHasPendingCsat(Z)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat:Z

    return-object p0
.end method

.method public setLogId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->logId:J

    return-void
.end method

.method public setMessages(Ljava/util/List;)Lcom/freshchat/consumer/sdk/beans/Conversation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)",
            "Lcom/freshchat/consumer/sdk/beans/Conversation;"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->messages:Ljava/util/List;

    return-object p0
.end method

.method public setParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Participant;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->participants:Ljava/util/List;

    return-void
.end method

.method public setRequireDebugLog(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->requireDebugLog:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Conversation{channelId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->channelId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", csat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->csat:Lcom/freshchat/consumer/sdk/beans/Csat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasPendingCsat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->hasPendingCsat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requireDebugLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->requireDebugLog:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", logId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Conversation;->logId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
