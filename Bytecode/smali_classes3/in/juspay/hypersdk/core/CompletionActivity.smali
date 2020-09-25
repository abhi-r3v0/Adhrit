.class public Lin/juspay/hypersdk/core/CompletionActivity;
.super Landroid/app/Activity;


# static fields
.field static final TAG:Ljava/lang/String; = "CompletionActivity"


# instance fields
.field processChargeResponse:Lamazonpay/silentpay/ProcessChargeResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getAuthResultInfo(Lamazonpay/silentpay/APayAuthorizationResult;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lamazonpay/silentpay/APayAuthorizationResult;->getStatus()Lamazonpay/silentpay/APayAuthorizationResult$Status;

    move-result-object p1

    invoke-virtual {p1}, Lamazonpay/silentpay/APayAuthorizationResult$Status;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Auth status: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getErrorInfo(Lamazonpay/silentpay/APayError;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getErrorType()Lamazonpay/silentpay/APayError$ErrorType;

    move-result-object v0

    sget-object v1, Lamazonpay/silentpay/APayError$ErrorType;->AUTH_ERROR:Lamazonpay/silentpay/APayError$ErrorType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "CompletionActivity"

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received Auth Error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getAuthError()Lcom/amazon/identity/auth/device/AuthError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getAuthError()Lcom/amazon/identity/auth/device/AuthError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AuthError;->getType()Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getAuthError()Lcom/amazon/identity/auth/device/AuthError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/AuthError;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Auth Error type: %s\nError Message: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received Apay Error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getErrorType()Lamazonpay/silentpay/APayError$ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lamazonpay/silentpay/APayError$ErrorType;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Apay Error type: %s\nError Message: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getProcessChargeInfo(Lamazonpay/silentpay/ProcessChargeResponse;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Lamazonpay/silentpay/ProcessChargeResponse;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lamazonpay/silentpay/ProcessChargeResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lamazonpay/silentpay/ProcessChargeResponse;->getSignature()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lamazonpay/silentpay/ProcessChargeResponse;->getTransactionId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Process Charge Complete\nSignature: %s\nTransaction ID: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Process Charge Cancelled"

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/CompletionActivity;->processIntent(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    instance-of v0, p1, Lamazonpay/silentpay/ProcessChargeResponse;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lamazonpay/silentpay/ProcessChargeResponse;

    iput-object v0, p0, Lin/juspay/hypersdk/core/CompletionActivity;->processChargeResponse:Lamazonpay/silentpay/ProcessChargeResponse;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "amazonpay-result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "signature"

    iget-object v2, p0, Lin/juspay/hypersdk/core/CompletionActivity;->processChargeResponse:Lamazonpay/silentpay/ProcessChargeResponse;

    invoke-virtual {v2}, Lamazonpay/silentpay/ProcessChargeResponse;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "transactionId"

    iget-object v2, p0, Lin/juspay/hypersdk/core/CompletionActivity;->processChargeResponse:Lamazonpay/silentpay/ProcessChargeResponse;

    invoke-virtual {v2}, Lamazonpay/silentpay/ProcessChargeResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "verificationOperationName"

    const-string v2, "VERIFY_PROCESS_CHARGE_RESPONSE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lin/juspay/hypersdk/core/CompletionActivity;->processChargeResponse:Lamazonpay/silentpay/ProcessChargeResponse;

    invoke-virtual {v1}, Lamazonpay/silentpay/ProcessChargeResponse;->getStatus()Lamazonpay/silentpay/ProcessChargeResponse$Status;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "status"

    invoke-virtual {v1}, Lamazonpay/silentpay/ProcessChargeResponse$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/CompletionActivity;->processChargeResponse:Lamazonpay/silentpay/ProcessChargeResponse;

    invoke-virtual {v1}, Lamazonpay/silentpay/ProcessChargeResponse;->getVerificationParameters()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "verificationParameters"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/fromMediaSession;->extraCallback(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lin/juspay/hypersdk/core/CompletionActivity;->sendEmptyResponse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CompletionActivity"

    const-string v2, "exception"

    invoke-static {v1, v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/CompletionActivity;->sendEmptyResponse()V

    :goto_0
    instance-of v0, p1, Lamazonpay/silentpay/APayError;

    if-eqz v0, :cond_3

    check-cast p1, Lamazonpay/silentpay/APayError;

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError;->getErrorType()Lamazonpay/silentpay/APayError$ErrorType;

    move-result-object p1

    invoke-virtual {p1}, Lamazonpay/silentpay/APayError$ErrorType;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APAY ERROR"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method processIntent(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 4

    const-string v0, "Received no response"

    const-string v1, "CompletionActivity"

    if-eqz p1, :cond_5

    invoke-static {p1}, Lamazonpay/silentpay/APayError;->fromIntent(Landroid/content/Intent;)Lamazonpay/silentpay/APayError;

    move-result-object v2

    invoke-static {p1}, Lamazonpay/silentpay/APayAuthorizationResult;->fromIntent(Landroid/content/Intent;)Lamazonpay/silentpay/APayAuthorizationResult;

    move-result-object v3

    invoke-static {p1}, Lamazonpay/silentpay/ProcessChargeResponse;->fromIntent(Landroid/content/Intent;)Lamazonpay/silentpay/ProcessChargeResponse;

    move-result-object p1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lin/juspay/hypersdk/core/CompletionActivity;->getErrorInfo(Lamazonpay/silentpay/APayError;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lin/juspay/hypersdk/core/CompletionActivity;->getAuthResultInfo(Lamazonpay/silentpay/APayAuthorizationResult;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/CompletionActivity;->getProcessChargeInfo(Lamazonpay/silentpay/ProcessChargeResponse;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    if-eqz p1, :cond_6

    return-object p1

    :cond_5
    invoke-static {v1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendEmptyResponse()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "amazonpay-result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "signature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "transactionId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "verificationOperationName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "verificationParameters"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lo/fromMediaSession;->ICustomTabsCallback(Landroid/content/Context;)Lo/fromMediaSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/fromMediaSession;->extraCallback(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
