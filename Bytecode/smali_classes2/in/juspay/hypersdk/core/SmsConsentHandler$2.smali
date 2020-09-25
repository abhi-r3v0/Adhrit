.class Lin/juspay/hypersdk/core/SmsConsentHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lo/addBackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/SmsConsentHandler;->startListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/SmsConsentHandler;

.field final synthetic val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/SmsConsentHandler;Lin/juspay/hypersdk/core/SdkTracker;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsConsentHandler$2;->this$0:Lin/juspay/hypersdk/core/SmsConsentHandler;

    iput-object p2, p0, Lin/juspay/hypersdk/core/SmsConsentHandler$2;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsConsentHandler$2;->val$sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "SmsConsentHandler"

    const-string v2, "api_call"

    const-string v3, "external_sdk"

    const-string v4, "SMS_CONSENT"

    const-string v5, "SmsConsent listener failed to start"

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
