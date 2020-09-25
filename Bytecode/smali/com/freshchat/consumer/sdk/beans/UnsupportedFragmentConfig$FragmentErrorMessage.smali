.class public Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentErrorMessage"
.end annotation


# instance fields
.field private defaultErrorMessage:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

.field private errorMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private errorMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentType:I

.field final synthetic this$0:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->this$0:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessageMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;)I
    .locals 0

    iget p0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->fragmentType:I

    return p0
.end method

.method static synthetic access$100(Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;)Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->defaultErrorMessage:Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    return-object p0
.end method


# virtual methods
.method public getErrorMessageMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessageMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->d(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessageMap:Ljava/util/HashMap;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessageMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessages:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage;->errorMessageMap:Ljava/util/HashMap;

    return-object v0
.end method
