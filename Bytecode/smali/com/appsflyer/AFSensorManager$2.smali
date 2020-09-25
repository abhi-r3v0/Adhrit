.class final Lcom/appsflyer/AFSensorManager$2;
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
.field private synthetic ǃ:Lcom/appsflyer/AFSensorManager;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFSensorManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$2;->ǃ:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 48
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$2;->ǃ:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->ι:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$2;->ǃ:Lcom/appsflyer/AFSensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1188
    :try_start_1
    iget-object v2, v1, Lcom/appsflyer/AFSensorManager;->ɩ:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 1190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 1191
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/appsflyer/AFSensorManager;->ɩ(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2058
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v6

    .line 2062
    new-instance v7, Lcom/appsflyer/internal/r;

    invoke-direct {v7, v4, v5, v6}, Lcom/appsflyer/internal/r;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v4, v1, Lcom/appsflyer/AFSensorManager;->ǃ:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1194
    iget-object v4, v1, Lcom/appsflyer/AFSensorManager;->ǃ:Ljava/util/Map;

    invoke-interface {v4, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    :cond_1
    iget-object v4, v1, Lcom/appsflyer/AFSensorManager;->ǃ:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorEventListener;

    .line 1197
    iget-object v5, v1, Lcom/appsflyer/AFSensorManager;->ɩ:Landroid/hardware/SensorManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    const/4 v2, 0x1

    .line 1203
    :try_start_2
    iput-boolean v2, v1, Lcom/appsflyer/AFSensorManager;->Ӏ:Z

    .line 51
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$2;->ǃ:Lcom/appsflyer/AFSensorManager;

    iget-object v1, v1, Lcom/appsflyer/AFSensorManager;->ı:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appsflyer/AFSensorManager$2;->ǃ:Lcom/appsflyer/AFSensorManager;

    invoke-static {v3}, Lcom/appsflyer/AFSensorManager;->ǃ(Lcom/appsflyer/AFSensorManager;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$2;->ǃ:Lcom/appsflyer/AFSensorManager;

    iput-boolean v2, v1, Lcom/appsflyer/AFSensorManager;->Ι:Z

    .line 53
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
