.class public Lcom/freshchat/consumer/sdk/e/a;
.super Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aa;->fF()V

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    :try_start_0
    const-class v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;

    invoke-virtual {v0, p2, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;-><init>()V

    :goto_0
    const/16 v1, 0x19a

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/e/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/e/f;->o(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/16 p2, 0x1ac

    if-ne p1, p2, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/e/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/o;->bA(Landroid/content/Context;)V

    goto :goto_2

    :cond_1
    const/16 p2, 0x19d

    if-ne p1, p2, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->getErrorCode()Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_CLAIMS_TOO_LARGE:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_2
    const/16 p2, 0x19c

    if-ne p1, p2, :cond_4

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->getErrorCode()Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    if-ne p1, p2, :cond_3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/e/a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/o;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;->getErrorCode()Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_INVALID_JWT_TOKEN:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/e/c;->ae(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " m: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v1, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;

    invoke-virtual {v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/beans/reqres/ConversationsResponse;->setStatusCode(I)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;I)Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a;->J(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/e/e;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/freshchat/consumer/sdk/e/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/ad;->aE(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "pic"

    const-string v4, "picFile"

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v4, v1, p1}, Lcom/freshchat/consumer/sdk/e/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    const-string p1, "name"

    const-string v1, "pic_"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/freshchat/consumer/sdk/e/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/e/e;->dc()Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v1, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;

    invoke-virtual {p1, p2, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/reqres/UploadImageResponse;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;->getUser()Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v3}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v3, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/freshchat/consumer/sdk/e/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    invoke-direct {p1, v0, v1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V

    return-object p1

    :cond_0
    const/16 v1, 0x199

    if-ne v0, v1, :cond_1

    new-instance p1, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " m: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-class v1, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {v3, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/User;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    invoke-direct {v1, v0, p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/ConversationReadStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/freshchat/consumer/sdk/e/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " m: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/e/c;

    iget-object p3, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/e/c;->af(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0xc8

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "sc: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " m: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {p2, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public a(Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/freshchat/consumer/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {p3}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {p3, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2, p1}, Lcom/freshchat/consumer/sdk/e/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/16 p1, 0xc9

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/freshchat/consumer/sdk/e/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p1
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public aZ(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->bv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "jwtAuthToken"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/freshchat/consumer/sdk/e/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " m: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v1, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;

    invoke-virtual {v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/reqres/ValidateJwtIdTokenResponse;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public ad(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/e/c;->af(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/16 p1, 0xc8

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public ap(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/freshchat/consumer/sdk/j/a;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/e/c;->af(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p1
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xca

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :goto_0
    return v0
.end method

.method public b(Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/freshchat/consumer/sdk/e/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x199

    if-ne v0, v1, :cond_0

    new-instance p1, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V

    return-object p1

    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sc: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " m: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-class v1, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {v2, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/User;

    new-instance v1, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    invoke-direct {v1, v0, p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public c(Lcom/freshchat/consumer/sdk/beans/reqres/UserRequest;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->bw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/freshchat/consumer/sdk/e/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const-class v1, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {v2, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/User;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    invoke-direct {v1, v0, p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public cV()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/e/c;->ag(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public cW()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/e/c;->ag(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public cX()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/e/c;->af(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public cZ()Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/a;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/e/c;->ae(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sc: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {v1, v0}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v2, Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;

    invoke-virtual {v1, v0, v2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/reqres/ChannelsResponseTimeResponse;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method public d(Lcom/freshchat/consumer/sdk/beans/Message;)Lcom/freshchat/consumer/sdk/beans/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    const-string v0, "errorCode"

    :try_start_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    invoke-virtual {v2, p1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, p1}, Lcom/freshchat/consumer/sdk/e/c;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p1

    new-instance v3, Lcom/freshchat/consumer/sdk/b/a/a;

    invoke-direct {v3, v1}, Lcom/freshchat/consumer/sdk/b/a/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0xc9

    if-eq p1, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sc: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " m: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FRESHCHAT"

    invoke-static {v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/a/a;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/b/a/a;->cm()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/b/e;->c(Z)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/service/a/c;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;Z)V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->M(Landroid/content/Context;)V

    :cond_1
    new-instance v0, Lcom/freshchat/consumer/sdk/e/b;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-class p1, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v2, v1, p1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/Message;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public gg()Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/e/c;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/e/c;->ae(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v2, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;

    invoke-virtual {v1, v0, v2}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/config/RemoteConfig;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/freshchat/consumer/sdk/e/c;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/freshchat/consumer/sdk/e/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/freshchat/consumer/sdk/e/c;->ae(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/freshchat/consumer/sdk/e/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    const-class v1, Lcom/freshchat/consumer/sdk/beans/User;

    invoke-virtual {v0, p1, v1}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/User;
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/freshchat/consumer/sdk/e/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;

    invoke-direct {v0, p2, p1}, Lcom/freshchat/consumer/sdk/beans/reqres/UserResponse;-><init>(ILcom/freshchat/consumer/sdk/beans/User;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public q(J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freshchat/consumer/sdk/exception/DeletedException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/freshchat/consumer/sdk/e/e;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/freshchat/consumer/sdk/j/a;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUT"

    invoke-direct {v0, v1, p1, p2}, Lcom/freshchat/consumer/sdk/e/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "log"

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/ai;->aR(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/freshchat/consumer/sdk/e/e;->a(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/e/e;->dc()Lcom/freshchat/consumer/sdk/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/e/d;->getStatusCode()I

    move-result p2

    const/16 v0, 0x19a

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/e/a;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/e/c;->a(Lcom/freshchat/consumer/sdk/e/d;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/e/f;->o(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/freshchat/consumer/sdk/exception/DeletedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "FRESHCHAT"

    const-string p2, "Failed to upload log"

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :catch_1
    move-exception p1

    throw p1
.end method
