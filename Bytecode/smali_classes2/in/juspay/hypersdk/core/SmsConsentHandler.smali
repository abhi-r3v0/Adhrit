.class public abstract Lin/juspay/hypersdk/core/SmsConsentHandler;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmsConsentHandler"


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private consentIntent:Landroid/content/Intent;

.field private intentReceivedCallback:Ljava/lang/Runnable;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/SmsConsentHandler;->startListener(Landroid/app/Activity;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->activityRef:Ljava/lang/ref/WeakReference;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startListener(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    .line 1002
    new-instance v1, Lo/setPriority;

    invoke-direct {v1, p1}, Lo/setPriority;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lo/getCreatedAt;->ICustomTabsCallback(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lin/juspay/hypersdk/core/SmsConsentHandler$1;

    invoke-direct {v1, p0, v0}, Lin/juspay/hypersdk/core/SmsConsentHandler$1;-><init>(Lin/juspay/hypersdk/core/SmsConsentHandler;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    new-instance v1, Lin/juspay/hypersdk/core/SmsConsentHandler$2;

    invoke-direct {v1, p0, v0}, Lin/juspay/hypersdk/core/SmsConsentHandler$2;-><init>(Lin/juspay/hypersdk/core/SmsConsentHandler;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public getConsentIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->consentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    if-eqz p2, :cond_2

    .line 1024
    iget p2, p2, Lcom/google/android/gms/common/api/Status;->asBinder:I

    goto :goto_0

    :cond_2
    const/16 p2, 0x10

    :goto_0
    const-string v0, "SmsConsentHandler"

    if-eqz p2, :cond_4

    const/16 p1, 0xf

    if-eq p2, p1, :cond_3

    const-string p1, "Listener gave some unrecognised status: Sending back with callback "

    invoke-static {v0, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "Restarting consent listener"

    invoke-static {v0, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/SmsConsentHandler;->resetConsentHandler()V

    return-void

    :cond_4
    const-string p2, "SMS received: Can ask user consent"

    invoke-static {v0, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->consentIntent:Landroid/content/Intent;

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->intentReceivedCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_1
    return-void
.end method

.method public abstract resetConsentHandler()V
.end method

.method public setIntentReceivedCallback(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->intentReceivedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public unregisterConsent()V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/SmsConsentHandler;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
