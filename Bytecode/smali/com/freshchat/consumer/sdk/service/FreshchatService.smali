.class public Lcom/freshchat/consumer/sdk/service/FreshchatService;
.super Landroid/app/IntentService;


# static fields
.field private static fn:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/freshchat/consumer/sdk/service/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private static fo:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/freshchat/consumer/sdk/service/b/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fp:I

.field fq:Lcom/freshchat/consumer/sdk/service/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fo:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "FreshchatService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fp:I

    new-instance v0, Lcom/freshchat/consumer/sdk/service/b/b;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/service/b/b;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fq:Lcom/freshchat/consumer/sdk/service/b/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    new-instance v1, Lcom/freshchat/consumer/sdk/service/b/c;

    invoke-direct {v1, p1, p2}, Lcom/freshchat/consumer/sdk/service/b/c;-><init>(Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/service/FreshchatService;->r(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/util/Queue;Lcom/freshchat/consumer/sdk/service/b/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/freshchat/consumer/sdk/service/b/c;",
            ">;",
            "Lcom/freshchat/consumer/sdk/service/b/c;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static bk(Landroid/content/Context;)V
    .locals 0

    :try_start_0
    sget-object p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    sget-object p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fo:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static r(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/service/FreshchatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service processed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " messages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    :cond_0
    :goto_0
    :try_start_0
    sget-object p1, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fo:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    sget-object p1, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/service/b/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b/c;->dv()Lcom/freshchat/consumer/sdk/service/e/j;

    move-result-object v0

    instance-of v0, v0, Lcom/freshchat/consumer/sdk/service/e/i;

    if-eqz v0, :cond_3

    sget-object p1, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fo:Ljava/util/Queue;

    sget-object v0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b/c;->dv()Lcom/freshchat/consumer/sdk/service/e/j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fq:Lcom/freshchat/consumer/sdk/service/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b/c;->dv()Lcom/freshchat/consumer/sdk/service/e/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b/c;->du()Lcom/freshchat/consumer/sdk/service/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/service/b/b;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    iget v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fp:I

    sget-object v0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fn:Ljava/util/Queue;

    :goto_2
    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/service/FreshchatService;->a(Ljava/util/Queue;Lcom/freshchat/consumer/sdk/service/b/c;)V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fo:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/service/b/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fq:Lcom/freshchat/consumer/sdk/service/b/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b/c;->dv()Lcom/freshchat/consumer/sdk/service/e/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b/c;->du()Lcom/freshchat/consumer/sdk/service/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/service/b/b;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/j;Lcom/freshchat/consumer/sdk/service/a;)V

    iget v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fp:I

    sget-object v0, Lcom/freshchat/consumer/sdk/service/FreshchatService;->fo:Ljava/util/Queue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
