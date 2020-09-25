.class Lin/juspay/hypersdk/core/SmsReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lin/juspay/hypersdk/core/ResultAwaitingDuiHook;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SMS_CONSENT_REQUEST:I = 0xb


# instance fields
.field private browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private callbackId:Ljava/lang/String;

.field private interFilter:Landroid/content/IntentFilter;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lin/juspay/hypersdk/core/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/core/SmsReceiver;Lin/juspay/hypersdk/core/SmsConsentHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/SmsReceiver;->checkAndLaunchConsentDialog(Lin/juspay/hypersdk/core/SmsConsentHandler;)V

    return-void
.end method

.method private checkAndLaunchConsentDialog(Lin/juspay/hypersdk/core/SmsConsentHandler;)V
    .locals 2

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/SmsConsentHandler;->getConsentIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    const-string v0, "onSMSConsentShown"

    const-string v1, "{ }"

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tryReceiveMessage(Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "pdus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Landroid/telephony/SmsMessage;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    if-ge v0, v1, :cond_2

    if-eqz p1, :cond_1

    aget-object v4, p1, v0

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v8, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Message is from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " and body is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "from"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "body"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver;->interFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getSmsConsentHandler()Lin/juspay/hypersdk/core/SmsConsentHandler;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const-string v1, "system"

    const-string v2, "error"

    const-string v3, "initialise_juspay_webview"

    const-string v4, "missing"

    const-string v5, "SmsConsentHandler"

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lin/juspay/hypersdk/core/SmsReceiver;->checkAndLaunchConsentDialog(Lin/juspay/hypersdk/core/SmsConsentHandler;)V

    new-instance v0, Lin/juspay/hypersdk/core/SmsReceiver$1;

    invoke-direct {v0, p0, p1}, Lin/juspay/hypersdk/core/SmsReceiver$1;-><init>(Lin/juspay/hypersdk/core/SmsReceiver;Lin/juspay/hypersdk/core/SmsConsentHandler;)V

    invoke-virtual {p1, v0}, Lin/juspay/hypersdk/core/SmsConsentHandler;->setIntentReceivedCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v0, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attaching the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public detach(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver;->interFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getSmsConsentHandler()Lin/juspay/hypersdk/core/SmsConsentHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lin/juspay/hypersdk/core/SmsConsentHandler;->setIntentReceivedCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v0, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detaching the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public execute(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    iget-object p2, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string p4, "smsReadStartTime"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lin/juspay/hypersdk/core/PaymentUtils;->readSmsFromInbox(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    sget-object v1, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "broadcast_receiver"

    const-string v5, "Exception while trying to read sms from Inbox: "

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "[]"

    return-object p1
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver;->interFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public getMaskedMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[0-9]"

    const-string v1, "X"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 8

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->resetSmsConsentHandler()V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "system"

    const-string v3, "debug"

    const-string v4, "broadcast_receiver"

    const-string v5, "on_activity_result"

    const-string v6, "User denied SMS consent"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Calling callback "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " with message DENIED"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    const-string p3, "DENIED"

    invoke-virtual {p1, p2, p3}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "Received SMS text: "

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "from"

    const-string v1, "UNKNOWN_BANK"

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "body"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Sending to callback "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lin/juspay/hypersdk/core/SmsReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p2

    iget-object p3, p0, Lin/juspay/hypersdk/core/SmsReceiver;->callbackId:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "system"

    const-string v3, "debug"

    const-string v4, "broadcast_receiver"

    const-string v5, "on_activity_result"

    const-string v6, "Response sent back to microapp"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v7, p1

    sget-object v2, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v3, "api_call"

    const-string v4, "external_sdk"

    const-string v5, "amazon_utils"

    const-string v6, "JSON Exception"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :try_start_0
    const-string p1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lin/juspay/hypersdk/core/SmsReceiver;->tryReceiveMessage(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    sget-object v1, Lin/juspay/hypersdk/core/SmsReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "broadcast_receiver"

    const-string v5, "Failed to receive sms"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver;->interFilter:Landroid/content/IntentFilter;

    return-void
.end method
