.class public Lcom/freshchat/consumer/sdk/service/a/j;
.super Lcom/freshchat/consumer/sdk/service/a/d;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/a/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/service/a/j;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->dt()Lcom/freshchat/consumer/sdk/service/a/a;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/service/a/a;->dr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/e;->bl()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/service/a/j;->TAG:Ljava/lang/String;

    const-string v2, "The user is not registered yet. Backlogging GCM device token to be processed later "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/service/e/y;-><init>()V

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/service/e/y;->K(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/y;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/service/a/d;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/freshchat/consumer/sdk/service/a/j$1;

    invoke-direct {v3, p0, v0}, Lcom/freshchat/consumer/sdk/service/a/j$1;-><init>(Lcom/freshchat/consumer/sdk/service/a/j;Lcom/freshchat/consumer/sdk/service/a/a;)V

    invoke-static {v1, v2, v3}, Lcom/freshchat/consumer/sdk/service/d/d;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
