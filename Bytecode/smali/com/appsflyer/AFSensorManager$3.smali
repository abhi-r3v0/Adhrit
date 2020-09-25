.class final Lcom/appsflyer/AFSensorManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AFSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ı:Lcom/appsflyer/AFSensorManager;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFSensorManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->ι:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-boolean v1, v1, Lcom/appsflyer/AFSensorManager;->Ι:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v1, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v2, Lcom/appsflyer/AFSensorManager;->ɹ:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v1, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v2, Lcom/appsflyer/AFSensorManager;->і:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    invoke-virtual {v1}, Lcom/appsflyer/AFSensorManager;->Ι()V

    .line 74
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/appsflyer/AFSensorManager;->Ι:Z

    .line 76
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
