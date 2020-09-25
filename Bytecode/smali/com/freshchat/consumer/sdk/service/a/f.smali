.class public Lcom/freshchat/consumer/sdk/service/a/f;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/service/a/f;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/freshchat/consumer/sdk/c/g;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/c/g;->X(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/a/f;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retry the message!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/freshchat/consumer/sdk/service/a/f$1;

    invoke-direct {v4, p0, v2}, Lcom/freshchat/consumer/sdk/service/a/f$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/f;Ljava/lang/String;)V

    invoke-static {v3, v1, v4}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/freshchat/consumer/sdk/service/a/f;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Create message failed for backlog "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
