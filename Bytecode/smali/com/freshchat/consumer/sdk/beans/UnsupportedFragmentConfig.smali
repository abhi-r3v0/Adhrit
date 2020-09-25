.class public Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;,
        Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;
    }
.end annotation


# instance fields
.field private displayErrorCodes:Z

.field private errorCodePlaceholder:Ljava/lang/String;

.field private errorMessageByTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessageByTypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private globalErrorMessage:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getDisplayableErrorMessage(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->displayErrorCodes:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorCodePlaceholder:Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorCodePlaceholder:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->getErrorCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "%d"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getErrorMessage(Ljava/lang/Integer;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->getErrorMessageByTypesMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->getErrorMessageMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->access$100(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->globalErrorMessage:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    :cond_4
    return-object p2
.end method

.method public getErrorMessageByTypesMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypes:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->access$000(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->errorMessageByTypesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGlobalErrorMessage()Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;->globalErrorMessage:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    return-object v0
.end method
