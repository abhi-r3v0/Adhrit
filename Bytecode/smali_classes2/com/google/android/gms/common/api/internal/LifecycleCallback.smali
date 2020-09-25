.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mLifecycleFragment:Lo/Transaction;


# direct methods
.method public constructor <init>(Lo/Transaction;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lo/Transaction;

    return-void
.end method

.method private static getChimeraLifecycleFragmentImpl(Lo/getPaymentMethodType;)Lo/Transaction;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Method not available in SDK."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFragment(Landroid/app/Activity;)Lo/Transaction;
    .locals 1

    .line 7
    new-instance v0, Lo/getPaymentMethodType;

    invoke-direct {v0, p0}, Lo/getPaymentMethodType;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->getFragment(Lo/getPaymentMethodType;)Lo/Transaction;

    move-result-object p0

    return-object p0
.end method

.method public static getFragment(Landroid/content/ContextWrapper;)Lo/Transaction;
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method protected static getFragment(Lo/getPaymentMethodType;)Lo/Transaction;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lo/getPaymentMethodType;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lo/getPaymentMethodType;->ICustomTabsCallback()Lo/onSessionEvent;

    move-result-object p0

    invoke-static {p0}, Lo/CardCtaItem;->ICustomTabsCallback(Lo/onSessionEvent;)Lo/CardCtaItem;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lo/getPaymentMethodType;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lo/getPaymentMethodType;->onPostMessage()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lo/hideLoader;->extraCallback(Landroid/app/Activity;)Lo/hideLoader;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->mLifecycleFragment:Lo/Transaction;

    invoke-interface {v0}, Lo/Transaction;->ICustomTabsCallback()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
