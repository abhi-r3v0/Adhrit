.class final Lcom/appsflyer/AFSensorManager$4;
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
.field private synthetic ɩ:Lcom/appsflyer/AFSensorManager;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFSensorManager;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->ι:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    invoke-static {v1}, Lcom/appsflyer/AFSensorManager;->ɩ(Lcom/appsflyer/AFSensorManager;)I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    invoke-static {v1}, Lcom/appsflyer/AFSensorManager;->Ι(Lcom/appsflyer/AFSensorManager;)I

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v1, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v2, Lcom/appsflyer/AFSensorManager;->і:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    iget-object v5, p0, Lcom/appsflyer/AFSensorManager$4;->ɩ:Lcom/appsflyer/AFSensorManager;

    invoke-static {v5}, Lcom/appsflyer/AFSensorManager;->ɩ(Lcom/appsflyer/AFSensorManager;)I

    move-result v5

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
