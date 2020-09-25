.class final synthetic Lo/populateEventApplicationData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getUserMetadata;


# instance fields
.field private final arg$1:Ljava/util/concurrent/ExecutorService;

.field private final arg$2:Lo/buildSingleThreadExecutorService$onPostMessage;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/populateEventApplicationData;->arg$1:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lo/populateEventApplicationData;->arg$2:Lo/buildSingleThreadExecutorService$onPostMessage;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)Lo/getUserMetadata;
    .locals 1

    new-instance v0, Lo/populateEventApplicationData;

    invoke-direct {v0, p0, p1}, Lo/populateEventApplicationData;-><init>(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)V

    return-object v0
.end method


# virtual methods
.method public final onIdTokenChanged(Lo/joinMapsEntries;)V
    .locals 2

    iget-object v0, p0, Lo/populateEventApplicationData;->arg$1:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lo/populateEventApplicationData;->arg$2:Lo/buildSingleThreadExecutorService$onPostMessage;

    invoke-static {v0, v1, p1}, Lo/populateSessionOperatingSystemData$4;->lambda$addTokenChangeListener$3(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;Lo/joinMapsEntries;)V

    return-void
.end method
