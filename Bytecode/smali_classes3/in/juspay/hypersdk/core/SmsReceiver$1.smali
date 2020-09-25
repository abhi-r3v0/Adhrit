.class Lin/juspay/hypersdk/core/SmsReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/SmsReceiver;->attach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/core/SmsReceiver;

.field final synthetic val$smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/SmsReceiver;Lin/juspay/hypersdk/core/SmsConsentHandler;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/SmsReceiver$1;->this$0:Lin/juspay/hypersdk/core/SmsReceiver;

    iput-object p2, p0, Lin/juspay/hypersdk/core/SmsReceiver$1;->val$smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/SmsReceiver$1;->this$0:Lin/juspay/hypersdk/core/SmsReceiver;

    iget-object v1, p0, Lin/juspay/hypersdk/core/SmsReceiver$1;->val$smsConsentHandler:Lin/juspay/hypersdk/core/SmsConsentHandler;

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/SmsReceiver;->access$000(Lin/juspay/hypersdk/core/SmsReceiver;Lin/juspay/hypersdk/core/SmsConsentHandler;)V

    return-void
.end method
