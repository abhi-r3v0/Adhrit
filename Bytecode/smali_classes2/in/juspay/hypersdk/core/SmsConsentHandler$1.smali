.class Lin/juspay/hypersdk/core/SmsConsentHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/addLifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/SmsConsentHandler;->startListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/addLifecycleEventListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/SmsConsentHandler;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/SmsConsentHandler;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsConsentHandler$1;->this$0:Lin/juspay/hypersdk/core/SmsConsentHandler;

    iput-object p2, p0, Lin/juspay/hypersdk/core/SmsConsentHandler$1;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/SmsConsentHandler$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 6

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsConsentHandler$1;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "system"

    const-string v2, "debug"

    const-string v3, "SMS_CONSENT"

    const-string v4, "sms_consent_listener"

    const-string v5, "SmsConsent listener started successfully"

    invoke-virtual/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
