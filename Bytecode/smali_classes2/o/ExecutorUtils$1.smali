.class final synthetic Lo/ExecutorUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isAutomaticDataCollectionEnabled;


# instance fields
.field private final arg$1:Lo/buildSingleThreadExecutorService;

.field private final arg$2:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ExecutorUtils$1;->arg$1:Lo/buildSingleThreadExecutorService;

    iput-object p2, p0, Lo/ExecutorUtils$1;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static lambdaFactory$(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)Lo/isAutomaticDataCollectionEnabled;
    .locals 1

    new-instance v0, Lo/ExecutorUtils$1;

    invoke-direct {v0, p0, p1}, Lo/ExecutorUtils$1;-><init>(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public final getToken(ZLo/isAutomaticDataCollectionEnabled$onPostMessage;)V
    .locals 2

    iget-object v0, p0, Lo/ExecutorUtils$1;->arg$1:Lo/buildSingleThreadExecutorService;

    iget-object v1, p0, Lo/ExecutorUtils$1;->arg$2:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, p2}, Lo/getNamedThreadFactory;->lambda$wrapAuthTokenProvider$0(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;ZLo/isAutomaticDataCollectionEnabled$onPostMessage;)V

    return-void
.end method
