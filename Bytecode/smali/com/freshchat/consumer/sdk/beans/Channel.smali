.class public Lcom/freshchat/consumer/sdk/beans/Channel;
.super Ljava/lang/Object;


# static fields
.field public static final CHANNEL_TYPE_AGENT_ONLY:Ljava/lang/String; = "AGENT_ONLY"

.field public static final CHANNEL_TYPE_BOTH:Ljava/lang/String; = "BOTH"

.field public static final CHANNEL_TYPE_USER_ONLY:Ljava/lang/String; = "USER_ONLY"


# instance fields
.field private channelAlias:Ljava/lang/String;

.field private channelType:Ljava/lang/String;

.field private hidden:Z

.field private iconUrl:Ljava/lang/String;

.field private id:J

.field private isDefault:Z

.field private isRestricted:Z

.field private latestOrWelcomeMessage:Lcom/freshchat/consumer/sdk/beans/Message;

.field private name:Ljava/lang/String;

.field private position:I

.field private updatedAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->channelAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->channelType:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->id:J

    return-wide v0
.end method

.method public getLatestOrWelcomeMessage()Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->latestOrWelcomeMessage:Lcom/freshchat/consumer/sdk/beans/Message;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->position:I

    return v0
.end method

.method public getUpdatedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->updatedAt:J

    return-wide v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->isDefault:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->hidden:Z

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->isRestricted:Z

    return v0
.end method

.method public setChannelAlias(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->channelAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelType(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->channelType:Ljava/lang/String;

    return-object p0
.end method

.method public setDefault(Z)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->isDefault:Z

    return-object p0
.end method

.method public setHidden(Z)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->hidden:Z

    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setId(J)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->id:J

    return-object p0
.end method

.method public setLatestOrWelcomeMessage(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->latestOrWelcomeMessage:Lcom/freshchat/consumer/sdk/beans/Message;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPosition(I)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->position:I

    return-object p0
.end method

.method public setRestricted(Z)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->isRestricted:Z

    return-object p0
.end method

.method public setUpdatedAt(J)Lcom/freshchat/consumer/sdk/beans/Channel;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/Channel;->updatedAt:J

    return-object p0
.end method
