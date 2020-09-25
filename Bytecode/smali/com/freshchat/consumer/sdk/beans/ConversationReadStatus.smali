.class public Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;
.super Ljava/lang/Object;


# instance fields
.field private channelId:J

.field private conversationId:J

.field private readUpto:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->channelId:J

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->conversationId:J

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->channelId:J

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->conversationId:J

    iput-wide p5, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->readUpto:J

    return-void
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->channelId:J

    return-wide v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->conversationId:J

    return-wide v0
.end method

.method public getReadUpto()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->readUpto:J

    return-wide v0
.end method

.method public setChannelId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->channelId:J

    return-void
.end method

.method public setConversationId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->conversationId:J

    return-void
.end method

.method public setReadUpto(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;->readUpto:J

    return-void
.end method
