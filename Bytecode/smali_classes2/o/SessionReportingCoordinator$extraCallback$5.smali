.class final Lo/SessionReportingCoordinator$extraCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SessionReportingCoordinator$extraCallback;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/SessionReportingCoordinator$extraCallback;


# direct methods
.method constructor <init>(Lo/SessionReportingCoordinator$extraCallback;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lo/SessionReportingCoordinator$extraCallback$5;->this$1:Lo/SessionReportingCoordinator$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lo/SessionReportingCoordinator$extraCallback$5;->this$1:Lo/SessionReportingCoordinator$extraCallback;

    iget-object p1, p1, Lo/SessionReportingCoordinator$extraCallback;->this$0:Lo/SessionReportingCoordinator;

    invoke-virtual {p1, p2}, Lo/SessionReportingCoordinator;->handleException(Ljava/lang/Throwable;)V

    return-void
.end method
