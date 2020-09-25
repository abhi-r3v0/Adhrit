.class public Lo/access$lambda$1$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$lambda$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field private final taskCompletionSource:Lo/removeBackgroundStateChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/removeBackgroundStateChangeListener<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    iput-object v0, p0, Lo/access$lambda$1$onNavigationEvent;->taskCompletionSource:Lo/removeBackgroundStateChangeListener;

    .line 3
    iput-object p1, p0, Lo/access$lambda$1$onNavigationEvent;->intent:Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic lambda$arrangeTimeout$1$WithinAppServiceConnection$BindRequest(Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    const/4 p1, 0x0

    .line 13
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method arrangeTimeout(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .line 5
    new-instance v0, Lo/UserMetadata;

    invoke-direct {v0, p0}, Lo/UserMetadata;-><init>(Lo/access$lambda$1$onNavigationEvent;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2328

    .line 6
    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lo/access$lambda$1$onNavigationEvent;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lo/SystemCurrentTimeProvider;

    invoke-direct {v2, v0}, Lo/SystemCurrentTimeProvider;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 8
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method finish()V
    .locals 2

    .line 11
    iget-object v0, p0, Lo/access$lambda$1$onNavigationEvent;->taskCompletionSource:Lo/removeBackgroundStateChangeListener;

    .line 2010
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Object;)Z

    return-void
.end method

.method getTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lo/access$lambda$1$onNavigationEvent;->taskCompletionSource:Lo/removeBackgroundStateChangeListener;

    .line 1014
    iget-object v0, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object v0
.end method

.method public final synthetic lambda$arrangeTimeout$0$WithinAppServiceConnection$BindRequest()V
    .locals 3

    .line 15
    iget-object v0, p0, Lo/access$lambda$1$onNavigationEvent;->intent:Landroid/content/Intent;

    .line 16
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Service took too long to process intent: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " App may get closed."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseInstanceId"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lo/access$lambda$1$onNavigationEvent;->finish()V

    return-void
.end method
