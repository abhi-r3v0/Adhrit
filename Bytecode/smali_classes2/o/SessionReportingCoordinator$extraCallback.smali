.class Lo/SessionReportingCoordinator$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionReportingCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lo/SessionReportingCoordinator;


# direct methods
.method private constructor <init>(Lo/SessionReportingCoordinator;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/SessionReportingCoordinator$extraCallback;->this$0:Lo/SessionReportingCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/SessionReportingCoordinator;Lo/SessionReportingCoordinator$2;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lo/SessionReportingCoordinator$extraCallback;-><init>(Lo/SessionReportingCoordinator;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 37
    iget-object v0, p0, Lo/SessionReportingCoordinator$extraCallback;->this$0:Lo/SessionReportingCoordinator;

    invoke-virtual {v0}, Lo/SessionReportingCoordinator;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lo/SessionReportingCoordinator$extraCallback;->this$0:Lo/SessionReportingCoordinator;

    invoke-virtual {v0}, Lo/SessionReportingCoordinator;->getThreadInitializer()Lo/InstallIdProvider;

    move-result-object v0

    const-string v1, "FirebaseDatabaseWorker"

    .line 39
    invoke-interface {v0, p1, v1}, Lo/InstallIdProvider;->setName(Ljava/lang/Thread;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    invoke-interface {v0, p1, v1}, Lo/InstallIdProvider;->setDaemon(Ljava/lang/Thread;Z)V

    .line 41
    new-instance v1, Lo/SessionReportingCoordinator$extraCallback$5;

    invoke-direct {v1, p0}, Lo/SessionReportingCoordinator$extraCallback$5;-><init>(Lo/SessionReportingCoordinator$extraCallback;)V

    invoke-interface {v0, p1, v1}, Lo/InstallIdProvider;->setUncaughtExceptionHandler(Ljava/lang/Thread;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method
