.class public Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;
.super Ljava/lang/Object;


# instance fields
.field private userAliasExists:Z

.field private validToken:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUserAliasExists()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;->userAliasExists:Z

    return v0
.end method

.method public isValidToken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;->validToken:Z

    return v0
.end method

.method public setUserAliasExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;->userAliasExists:Z

    return-void
.end method

.method public setValidToken(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;->validToken:Z

    return-void
.end method
