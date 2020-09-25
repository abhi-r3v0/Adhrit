.class Lo/getCardDetails$ICustomTabsCallback;
.super Landroid/os/HandlerThread;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCardDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/RuntimeException;

.field private extraCallback:Ljava/lang/Error;

.field private onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

.field private onNavigationEvent:Lo/getCardDetails;

.field private onPostMessage:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "dummySurface"

    .line 166
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private onPostMessage()V
    .locals 1

    .line 243
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->ICustomTabsCallback()V

    return-void
.end method

.method private onPostMessage(I)V
    .locals 3

    .line 235
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->ICustomTabsCallback(I)V

    .line 237
    new-instance v0, Lo/getCardDetails;

    iget-object v1, p0, Lo/getCardDetails$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 239
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;->extraCallback()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lo/getCardDetails;-><init>(Lo/getCardDetails$ICustomTabsCallback;Landroid/graphics/SurfaceTexture;ZLo/getCardDetails$4;)V

    iput-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onNavigationEvent:Lo/getCardDetails;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(I)Lo/getCardDetails;
    .locals 3

    .line 170
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    iget-object v1, p0, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onMessageChannelReady:Lcom/google/android/exoplayer2/util/EGLSurfaceTexture;

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 176
    :goto_0
    iget-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->onNavigationEvent:Lo/getCardDetails;

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->extraCallback:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 188
    :cond_1
    iget-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 190
    iget-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->extraCallback:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 193
    iget-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->onNavigationEvent:Lo/getCardDetails;

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getCardDetails;

    return-object p1

    .line 191
    :cond_2
    throw p1

    .line 189
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 222
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    .line 224
    invoke-static {v0, v2, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v1

    :catchall_1
    move-exception p1

    .line 226
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    .line 227
    throw p1

    .line 207
    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 215
    monitor-enter p0

    .line 216
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 212
    invoke-static {v0, v2, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    iput-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->extraCallback:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 215
    monitor-enter p0

    .line 216
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    .line 209
    invoke-static {v0, v2, p1}, Lo/JusPayWrapper;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    iput-object p1, p0, Lo/getCardDetails$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 215
    monitor-enter p0

    .line 216
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :goto_2
    return v1

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1

    .line 215
    :goto_3
    monitor-enter p0

    .line 216
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 218
    throw p1

    :catchall_6
    move-exception p1

    .line 217
    monitor-exit p0

    throw p1
.end method

.method public onNavigationEvent()V
    .locals 2

    .line 198
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage:Landroid/os/Handler;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lo/getCardDetails$ICustomTabsCallback;->onPostMessage:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
