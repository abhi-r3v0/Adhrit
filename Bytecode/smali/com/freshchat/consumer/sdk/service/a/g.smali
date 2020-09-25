.class public Lcom/freshchat/consumer/sdk/service/a/g;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/service/a/g;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/a/d;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method


# virtual methods
.method public ds()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->getMeta()Ljava/util/Map;

    move-result-object v1

    const-string v2, "fc_csat_response"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->ch()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v2

    const-class v3, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;

    invoke-virtual {v2, v1, v3}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/freshchat/consumer/sdk/service/e/t;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/service/e/t;-><init>()V

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/service/e/t;->a(Lcom/freshchat/consumer/sdk/beans/reqres/CsatResponseRequest;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/freshchat/consumer/sdk/service/a/g$1;

    invoke-direct {v3, p0, v0}, Lcom/freshchat/consumer/sdk/service/a/g$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/g;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
