.class public Lcom/freshchat/consumer/sdk/service/a/k;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/service/a/k;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/service/a/d;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/a/a;)V

    return-void
.end method


# virtual methods
.method public ds()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/a/k;->TAG:Ljava/lang/String;

    const-string v1, "Processing backlog - marketing message status"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->getMeta()Ljava/util/Map;

    move-result-object v1

    const-string v2, "fc_marketing_metrics"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->ch()Lcom/freshchat/consumer/sdk/j/ab;

    move-result-object v2

    const-class v3, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    invoke-virtual {v2, v1, v3}, Lcom/freshchat/consumer/sdk/j/ab;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    new-instance v2, Lcom/freshchat/consumer/sdk/service/e/aa;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/service/e/aa;-><init>()V

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/service/e/aa;->a(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/freshchat/consumer/sdk/service/a/k$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/freshchat/consumer/sdk/service/a/k$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/k;Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;Lcom/freshchat/consumer/sdk/service/a/a;)V

    invoke-static {v3, v2, v4}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
