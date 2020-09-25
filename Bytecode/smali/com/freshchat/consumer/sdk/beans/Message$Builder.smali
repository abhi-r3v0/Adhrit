.class public Lcom/freshchat/consumer/sdk/beans/Message$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private channelId:J

.field private createdMillis:J

.field private hostConversationId:J

.field private marketingId:J

.field private messageUserAlias:Ljava/lang/String;

.field private messageUserType:I

.field private read:Z

.field private source:I

.field private uploadState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->source:I

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/Message;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->alias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$002(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->channelId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$102(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->marketingId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$202(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->hostConversationId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$302(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserType:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$402(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$502(Lcom/freshchat/consumer/sdk/beans/Message;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->source:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$602(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->read:Z

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$702(Lcom/freshchat/consumer/sdk/beans/Message;Z)Z

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->createdMillis:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/Message;->access$802(Lcom/freshchat/consumer/sdk/beans/Message;J)J

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->uploadState:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/Message;->access$902(Lcom/freshchat/consumer/sdk/beans/Message;I)I

    return-object v0
.end method

.method public channelId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->channelId:J

    return-object p0
.end method

.method public createdMillis(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->createdMillis:J

    return-object p0
.end method

.method public hostConversationId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->hostConversationId:J

    return-object p0
.end method

.method public marketingId(J)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->marketingId:J

    return-object p0
.end method

.method public messageUserAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public messageUserType(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->messageUserType:I

    return-object p0
.end method

.method public read(Z)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->read:Z

    return-object p0
.end method

.method public uploadState(I)Lcom/freshchat/consumer/sdk/beans/Message$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Message$Builder;->uploadState:I

    return-object p0
.end method
