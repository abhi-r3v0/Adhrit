.class public Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;
.super Ljava/lang/Object;


# instance fields
.field private jwtIdToken:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "jwtAuthToken"
    .end annotation
.end field

.field private user:Lcom/freshchat/consumer/sdk/beans/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJwtIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->jwtIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/freshchat/consumer/sdk/beans/User;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->user:Lcom/freshchat/consumer/sdk/beans/User;

    return-object v0
.end method

.method public setJwtIdToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->jwtIdToken:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/freshchat/consumer/sdk/beans/User;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->user:Lcom/freshchat/consumer/sdk/beans/User;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserRequest [user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->user:Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
