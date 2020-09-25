.class public Lcom/freshchat/consumer/sdk/FreshchatMessage;
.super Ljava/lang/Object;


# instance fields
.field private message:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatMessage;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatMessage;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatMessage;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatMessage;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatMessage;->tag:Ljava/lang/String;

    return-object p0
.end method
