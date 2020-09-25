.class Lcom/google/firebase/crashlytics/internal/common/Utils$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/Utils;->callTask(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$tcs:Lo/removeBackgroundStateChangeListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lo/removeBackgroundStateChangeListener;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$3;->val$callable:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$3;->val$tcs:Lo/removeBackgroundStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$3;->val$callable:Ljava/util/concurrent/Callable;

    .line 135
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/Utils$3$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/Utils$3$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/Utils$3;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lo/isDefaultApp;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/Utils$3;->val$tcs:Lo/removeBackgroundStateChangeListener;

    .line 1011
    iget-object v1, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {v1, v0}, Lo/getProjectId;->onNavigationEvent(Ljava/lang/Exception;)V

    return-void
.end method
