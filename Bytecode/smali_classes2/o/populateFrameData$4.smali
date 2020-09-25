.class Lo/populateFrameData$4;
.super Lo/SessionReportingCoordinator;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateFrameData;->newRunLoop(Lo/getNamedThreadFactory;)Lo/migrateLegacyId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/populateFrameData;

.field final synthetic val$logger:Lo/FileLogStore;


# direct methods
.method constructor <init>(Lo/populateFrameData;Lo/FileLogStore;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/populateFrameData$4;->this$0:Lo/populateFrameData;

    iput-object p2, p0, Lo/populateFrameData$4;->val$logger:Lo/FileLogStore;

    invoke-direct {p0}, Lo/SessionReportingCoordinator;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Throwable;)V
    .locals 3

    .line 84
    invoke-static {p1}, Lo/SessionReportingCoordinator;->messageForException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lo/populateFrameData$4;->val$logger:Lo/FileLogStore;

    invoke-virtual {v1, v0, p1}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lo/populateFrameData$4;->this$0:Lo/populateFrameData;

    invoke-static {v2}, Lo/populateFrameData;->access$000(Lo/populateFrameData;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    new-instance v2, Lo/populateFrameData$4$4;

    invoke-direct {v2, p0, v0, p1}, Lo/populateFrameData$4$4;-><init>(Lo/populateFrameData$4;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    invoke-virtual {p0}, Lo/SessionReportingCoordinator;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
