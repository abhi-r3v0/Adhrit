.class public Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;
.super Ljava/lang/Object;


# instance fields
.field private conversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Conversation;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->conversations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConversations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Conversation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->conversations:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->statusCode:I

    return v0
.end method

.method public setConversations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Conversation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->conversations:Ljava/util/List;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->statusCode:I

    return-void
.end method
