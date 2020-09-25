.class public final Lo/FirebaseAuthMultiFactorException;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseAuthMultiFactorException$onMessageChannelReady;,
        Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static extraCallback:Lo/FirebaseAuthMultiFactorException;


# instance fields
.field final onNavigationEvent:Landroid/os/Handler;

.field public final onPostMessage:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/os/Handler;

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lo/FirebaseAuthMultiFactorException;->onNavigationEvent:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1057
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1059
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/FirebaseAuthMultiFactorException$onMessageChannelReady;

    .line 1240
    iget-object v0, p0, Lo/FirebaseAuthMultiFactorException;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x0

    .line 2205
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;

    if-eqz v1, :cond_2

    .line 2208
    iget-object v1, p0, Lo/FirebaseAuthMultiFactorException;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1244
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
