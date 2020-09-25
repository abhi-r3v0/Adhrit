.class Lo/writeSessionOS$onNavigationEvent;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSessionOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/copyStream$extraCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/Transaction;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Transaction;",
            "Ljava/util/List<",
            "Lo/copyStream$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lo/Transaction;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lo/Transaction;

    const-string v0, "PhoneAuthActivityStopCallback"

    invoke-interface {p1, v0, p0}, Lo/Transaction;->extraCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 8
    iput-object p2, p0, Lo/writeSessionOS$onNavigationEvent;->zza:Ljava/util/List;

    return-void
.end method

.method public static zza(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lo/copyStream$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lo/writeSessionOS$onNavigationEvent;->getFragment(Landroid/app/Activity;)Lo/Transaction;

    move-result-object p0

    .line 2
    const-class v0, Lo/writeSessionOS$onNavigationEvent;

    const-string v1, "PhoneAuthActivityStopCallback"

    invoke-interface {p0, v1, v0}, Lo/Transaction;->extraCallback(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lo/writeSessionOS$onNavigationEvent;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lo/writeSessionOS$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lo/writeSessionOS$onNavigationEvent;-><init>(Lo/Transaction;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 10
    iget-object v0, p0, Lo/writeSessionOS$onNavigationEvent;->zza:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lo/writeSessionOS$onNavigationEvent;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
