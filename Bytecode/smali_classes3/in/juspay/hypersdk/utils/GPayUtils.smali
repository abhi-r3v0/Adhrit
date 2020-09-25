.class public Lin/juspay/hypersdk/utils/GPayUtils;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GPayUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lin/juspay/hypersdk/utils/GPayUtils;->handleError(Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method private static handleError(Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 8

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    sget v0, Lin/juspay/hypersdk/core/PaymentConstants;->GPAY_CONSTANT:I

    iput v0, v7, Landroid/os/Message;->what:I

    const-string v0, "error"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "error_msg"

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "external_sdk"

    const-string v2, "error"

    const-string v3, "gpay_utils"

    const-string v4, "handleerror"

    move-object v0, p0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-interface {p2, v7}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static isGPayReadyToPay(Landroid/app/Activity;Landroid/os/Handler$Callback;)V
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lin/juspay/hypersdk/utils/GPayUtils$1;

    invoke-static {}, Lin/juspay/hypersdk/utils/IntegrationUtils;->getSdkInfo()Lin/juspay/hypersdk/data/SdkInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lin/juspay/hypersdk/utils/GPayUtils$1;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/data/SdkInfo;)V

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getFileProviderService()Lin/juspay/hypersdk/services/FileProviderService;

    move-result-object p0

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v8

    const-string v1, "payments/in.juspay.gpay/gpay_ready_payload.json"

    invoke-virtual {p0, v1}, Lin/juspay/hypersdk/services/FileProviderService;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {v0, p0, p1}, Lin/juspay/hypersdk/utils/GPayUtils;->isReady(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v2, "GPayUtils"

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "gpay_utils"

    const-string v6, "Exception while checking if GPay SDK is ready"

    move-object v1, v8

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, p1}, Lin/juspay/hypersdk/utils/GPayUtils;->handleError(Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static isReady(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 9

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p0

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    sget v1, Lin/juspay/hypersdk/core/PaymentConstants;->GPAY_CONSTANT:I

    iput v1, v8, Landroid/os/Message;->what:I

    const-string v1, "com.google.android.gms.common.api.ApiException"

    const-string v2, "com.google.android.gms.tasks.OnCompleteListener"

    const-string v3, "com.google.android.gms.tasks.Task"

    const-string v4, "com.google.android.apps.nbu.paisa.inapp.client.api.Wallet"

    const-string v5, "com.google.android.apps.nbu.paisa.inapp.client.api.PaymentsClient"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lin/juspay/hypersdk/utils/IntegrationUtils;->isClassPresent([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/Wallet;->getPaymentsClient()Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isGooglePayInstalled(Landroid/content/Context;I)Z

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isGooglePayInstalled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->isReadyToPay(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lin/juspay/hypersdk/utils/GPayUtils$2;

    move-object v1, v0

    move-object v2, v7

    move-object v5, p0

    move-object v6, v8

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lin/juspay/hypersdk/utils/GPayUtils$2;-><init>(Landroid/os/Bundle;ZZLin/juspay/hypersdk/core/SdkTracker;Landroid/os/Message;Landroid/os/Handler$Callback;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, "error"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "can_open"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "in_app_supported"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "in_app_sdk"

    invoke-virtual {v7, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "upi_intent"

    invoke-virtual {v7, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "external_sdk"

    const-string v3, "info"

    const-string v4, "gpay_utils"

    const-string v5, "isready"

    move-object v1, p0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-interface {p2, v8}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const-string p1, "gpay class file not fount in path"

    invoke-static {p0, p1, p2}, Lin/juspay/hypersdk/utils/GPayUtils;->handleError(Lin/juspay/hypersdk/core/SdkTracker;Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-void
.end method

.method public static pay(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    const-string v0, "com.google.android.apps.nbu.paisa.inapp.client.api.Wallet"

    const-string v1, "com.google.android.apps.nbu.paisa.inapp.client.api.PaymentsClient"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lin/juspay/hypersdk/utils/IntegrationUtils;->isClassPresent([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/Wallet;->getPaymentsClient()Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/android/apps/nbu/paisa/inapp/client/api/PaymentsClient;->loadPaymentData(Landroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "gpay class file not fount in path"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
