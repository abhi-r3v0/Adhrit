.class public Lo/parseCustomAttribute;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/parseCustomAttribute$onPostMessage;
    }
.end annotation


# instance fields
.field private final intentHandler:Lo/parseCustomAttribute$onPostMessage;


# direct methods
.method public constructor <init>(Lo/parseCustomAttribute$onPostMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    iput-object p1, p0, Lo/parseCustomAttribute;->intentHandler:Lo/parseCustomAttribute$onPostMessage;

    return-void
.end method

.method public static final synthetic lambda$send$0$WithinAppServiceBinder(Lo/access$lambda$1$onNavigationEvent;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 12
    invoke-virtual {p0}, Lo/access$lambda$1$onNavigationEvent;->finish()V

    return-void
.end method


# virtual methods
.method send(Lo/access$lambda$1$onNavigationEvent;)V
    .locals 3

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "service received new intent via bind strategy"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object v0, p0, Lo/parseCustomAttribute;->intentHandler:Lo/parseCustomAttribute$onPostMessage;

    iget-object v1, p1, Lo/access$lambda$1$onNavigationEvent;->intent:Landroid/content/Intent;

    .line 9
    invoke-interface {v0, v1}, Lo/parseCustomAttribute$onPostMessage;->handle(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 10
    invoke-static {}, Lo/setIconBitmap;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lo/SessionReportingCoordinator$$Lambda$2;

    invoke-direct {v2, p1}, Lo/SessionReportingCoordinator$$Lambda$2;-><init>(Lo/access$lambda$1$onNavigationEvent;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
