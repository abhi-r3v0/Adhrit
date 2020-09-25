.class public Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    }
.end annotation


# instance fields
.field private errorCode:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->errorCode:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->errorCode:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->errorMessage:Ljava/lang/String;

    return-void
.end method
