.class public final Lo/getFabrikUser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lo/DiffUtil$ItemCallback$ICustomTabsCallback;

    const-string v0, "GAC_Transform"

    const/4 v1, 0x0

    invoke-direct {v7, v0, v1}, Lo/DiffUtil$ItemCallback$ICustomTabsCallback;-><init>(Ljava/lang/String;B)V

    const/4 v2, 0x4

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lo/getFabrikUser;->onMessageChannelReady:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lo/getFabrikUser;->onMessageChannelReady:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
