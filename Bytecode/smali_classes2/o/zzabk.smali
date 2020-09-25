.class public abstract Lo/zzabk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private asBinder:Z

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Landroid/content/Context;

.field private onRelationshipValidationResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/zzabk;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo/zzabk;->onTransact:Z

    .line 4
    iput-boolean v0, p0, Lo/zzabk;->asBinder:Z

    .line 5
    iput-object p1, p0, Lo/zzabk;->onPostMessage:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lo/zzabk;->onNavigationEvent:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "com.google.android.gms.vision.dynamite."

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lo/zzabk;->onMessageChannelReady:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lo/zzabk;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 11
    iget-object v0, p0, Lo/zzabk;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 14
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lo/zzabk;->extraCallback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    iget-object v2, p0, Lo/zzabk;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "Could not finalize native handle"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract extraCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/zzabk;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onNavigationEvent()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lo/zzabk;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 23
    :try_start_1
    iget-object v3, p0, Lo/zzabk;->onPostMessage:Landroid/content/Context;

    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->ICustomTabsCallback:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    iget-object v5, p0, Lo/zzabk;->onMessageChannelReady:Ljava/lang/String;

    .line 24
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v3, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "com.google.android.gms.vision"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 27
    iget-object v5, p0, Lo/zzabk;->extraCallback:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot load thick client module, fall back to load optional module %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v3, v5, v6

    .line 28
    invoke-static {v4, v5}, Lo/preferLastSpan$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    iget-object v4, p0, Lo/zzabk;->onPostMessage:Landroid/content/Context;

    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady:Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;

    invoke-static {v4, v5, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->onMessageChannelReady(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v4

    :try_start_4
    const-string v5, "Error loading optional module %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v6

    .line 31
    invoke-static {v4, v5, v7}, Lo/preferLastSpan$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    iget-boolean v3, p0, Lo/zzabk;->onTransact:Z

    if-nez v3, :cond_1

    const-string v3, "Broadcasting download intent for dependency %s"

    new-array v4, v2, [Ljava/lang/Object;

    .line 33
    iget-object v5, p0, Lo/zzabk;->extraCallback:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lo/preferLastSpan$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 34
    iget-object v3, p0, Lo/zzabk;->extraCallback:Ljava/lang/String;

    .line 35
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.google.android.gms"

    const-string v6, "com.google.android.gms.vision.DependencyBroadcastReceiverProxy"

    .line 36
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.google.android.gms.vision.DEPENDENCIES"

    .line 39
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.google.android.gms.vision.DEPENDENCY"

    .line 40
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v3, p0, Lo/zzabk;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    iput-boolean v2, p0, Lo/zzabk;->onTransact:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 46
    :try_start_5
    iget-object v3, p0, Lo/zzabk;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p0, v1, v3}, Lo/zzabk;->onPostMessage(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;
    :try_end_5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 49
    :goto_1
    :try_start_6
    iget-object v3, p0, Lo/zzabk;->onNavigationEvent:Ljava/lang/String;

    const-string v4, "Error creating remote native handle"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lo/zzabk;->asBinder:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 51
    iget-object v1, p0, Lo/zzabk;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "Native handle not yet available. Reverting to no-op handle."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-boolean v2, p0, Lo/zzabk;->asBinder:Z

    goto :goto_3

    .line 53
    :cond_3
    iget-boolean v1, p0, Lo/zzabk;->asBinder:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 54
    iget-object v1, p0, Lo/zzabk;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "Native handle is now available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_4
    :goto_3
    iget-object v1, p0, Lo/zzabk;->onRelationshipValidationResult:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method protected abstract onPostMessage(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamite/DynamiteModule;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation
.end method
