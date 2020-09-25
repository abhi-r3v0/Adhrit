.class public Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;
.super Ljava/lang/Object;


# instance fields
.field private final statusCode:I

.field private final user:Lcom/freshchat/consumer/sdk/beans/User;


# direct methods
.method public constructor <init>(ILcom/freshchat/consumer/sdk/beans/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->statusCode:I

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->user:Lcom/freshchat/consumer/sdk/beans/User;

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->statusCode:I

    return v0
.end method

.method public getUser()Lcom/freshchat/consumer/sdk/beans/User;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;->user:Lcom/freshchat/consumer/sdk/beans/User;

    return-object v0
.end method
