.class public Lcom/freshchat/consumer/sdk/j/be;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/be$a;
    }
.end annotation


# static fields
.field private static lH:Lcom/freshchat/consumer/sdk/j/be;


# instance fields
.field private final lI:Ljava/util/concurrent/Executor;

.field private final lJ:Ljava/util/concurrent/Executor;

.field private final lK:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/freshchat/consumer/sdk/j/be$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/j/be$a;-><init>(Lcom/freshchat/consumer/sdk/j/bf;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/be;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/be;->lI:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/be;->lJ:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/be;->lK:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static eC()Lcom/freshchat/consumer/sdk/j/be;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/be;->lH:Lcom/freshchat/consumer/sdk/j/be;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/j/be;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/be;->lH:Lcom/freshchat/consumer/sdk/j/be;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/be;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/be;-><init>()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/be;->lH:Lcom/freshchat/consumer/sdk/j/be;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/be;->lH:Lcom/freshchat/consumer/sdk/j/be;

    return-object v0
.end method


# virtual methods
.method public gx()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/be;->lI:Ljava/util/concurrent/Executor;

    return-object v0
.end method
