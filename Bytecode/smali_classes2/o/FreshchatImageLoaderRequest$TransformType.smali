.class final Lo/FreshchatImageLoaderRequest$TransformType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dM;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/FreshchatImageLoaderRequest$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lo/FreshchatImageLoaderRequest$TransformType;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(II)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method
