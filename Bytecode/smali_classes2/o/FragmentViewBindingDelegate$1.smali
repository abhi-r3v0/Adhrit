.class public abstract Lo/FragmentViewBindingDelegate$1;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile ICustomTabsCallback:Z

.field protected final extraCallback:Lo/getMinAmount;

.field private final onMessageChannelReady:Landroid/os/Handler;

.field protected final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/Transaction;)V
    .locals 1

    .line 1
    invoke-static {}, Lo/getMinAmount;->extraCallback()Lo/getMinAmount;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/FragmentViewBindingDelegate$1;-><init>(Lo/Transaction;Lo/getMinAmount;)V

    return-void
.end method

.method private constructor <init>(Lo/Transaction;Lo/getMinAmount;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lo/Transaction;)V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance p1, Lo/setPointerStrokeWidth;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/setPointerStrokeWidth;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lo/FragmentViewBindingDelegate$1;->extraCallback:Lo/getMinAmount;

    return-void
.end method

.method private static onMessageChannelReady(Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final extraCallback(Lo/setReferenceId;I)V
    .locals 1

    .line 73
    new-instance v0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    invoke-direct {v0, p1, p2}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;-><init>(Lo/setReferenceId;I)V

    .line 74
    iget-object p1, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady:Landroid/os/Handler;

    new-instance p2, Lo/SlackMessageJsonAdapter;

    invoke-direct {p2, p0, v0}, Lo/SlackMessageJsonAdapter;-><init>(Lo/FragmentViewBindingDelegate$1;Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    iget-object p1, p0, Lo/FragmentViewBindingDelegate$1;->extraCallback:Lo/getMinAmount;

    invoke-virtual {p0}, Lo/FragmentViewBindingDelegate$1;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/getMinAmount;->extraCallback(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 45
    :cond_2
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lo/setReferenceId;->extraCallback()I

    move-result p2

    const/16 p3, 0x12

    if-ne p2, p3, :cond_7

    if-ne p1, p3, :cond_7

    return-void

    :cond_3
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    goto :goto_2

    :cond_4
    if-nez p2, :cond_6

    const/16 p1, 0xd

    if-eqz p3, :cond_5

    const-string p2, "<<ResolutionFailureErrorDetail>>"

    .line 54
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 55
    :cond_5
    new-instance p2, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    new-instance p3, Lo/setReferenceId;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object v3

    invoke-virtual {v3}, Lo/setReferenceId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, p1, v1, v3}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady(Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;)I

    move-result p1

    invoke-direct {p2, p3, p1}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;-><init>(Lo/setReferenceId;I)V

    .line 58
    iget-object p1, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v0, p2

    :cond_6
    :goto_1
    const/4 v1, 0x0

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {p0}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady()V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    .line 63
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object p1

    .line 64
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback()I

    move-result p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady(Lo/setReferenceId;I)V

    :cond_9
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 8
    new-instance p1, Lo/setReferenceId;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    invoke-static {v0}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady(Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;)I

    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady(Lo/setReferenceId;I)V

    .line 11
    invoke-virtual {p0}, Lo/FragmentViewBindingDelegate$1;->onMessageChannelReady()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 13
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 15
    iget-object v0, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    const-string v2, "resolving_error"

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Lo/setReferenceId;

    const-string v2, "failed_status"

    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v2, -0x1

    const-string v3, "failed_client_id"

    .line 20
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 21
    new-instance v2, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    invoke-direct {v2, v1, p1}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;-><init>(Lo/setReferenceId;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected final onMessageChannelReady()V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lo/FragmentViewBindingDelegate$1;->onPostMessage()V

    return-void
.end method

.method protected abstract onMessageChannelReady(Lo/setReferenceId;I)V
.end method

.method protected abstract onPostMessage()V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lo/FragmentViewBindingDelegate$1;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "resolving_error"

    .line 29
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->extraCallback()I

    move-result v1

    const-string v2, "failed_client_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object v1

    invoke-virtual {v1}, Lo/setReferenceId;->extraCallback()I

    move-result v1

    const-string v2, "failed_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v0}, Lo/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->ICustomTabsCallback()Lo/setReferenceId;

    move-result-object v0

    invoke-virtual {v0}, Lo/setReferenceId;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "failed_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lo/FragmentViewBindingDelegate$1;->ICustomTabsCallback:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lo/FragmentViewBindingDelegate$1;->ICustomTabsCallback:Z

    return-void
.end method
