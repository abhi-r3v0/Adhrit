.class public final Lo/setFillAlpha;
.super Ljava/util/concurrent/AbstractExecutorService;
.source ""


# static fields
.field private static final onNavigationEvent:Lo/setFillAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lo/setFillAlpha;

    invoke-direct {v0}, Lo/setFillAlpha;-><init>()V

    sput-object v0, Lo/setFillAlpha;->onNavigationEvent:Lo/setFillAlpha;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/setFillAlpha;
    .locals 1

    .line 37
    sget-object v0, Lo/setFillAlpha;->onNavigationEvent:Lo/setFillAlpha;

    return-object v0
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 44
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final isShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final shutdown()V
    .locals 0

    return-void
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lo/setFillAlpha;->shutdown()V

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
