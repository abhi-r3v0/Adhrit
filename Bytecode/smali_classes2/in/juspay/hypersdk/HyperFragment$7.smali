.class Lin/juspay/hypersdk/HyperFragment$7;
.super Lin/juspay/hypersdk/core/SmsConsentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/HyperFragment;->resetSmsConsentHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/HyperFragment;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/HyperFragment;Landroid/app/Activity;Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/HyperFragment$7;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-direct {p0, p2, p3}, Lin/juspay/hypersdk/core/SmsConsentHandler;-><init>(Landroid/app/Activity;Lin/juspay/hypersdk/core/JuspayServices;)V

    return-void
.end method


# virtual methods
.method public resetConsentHandler()V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/HyperFragment$7;->this$0:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->resetSmsConsentHandler()V

    return-void
.end method
