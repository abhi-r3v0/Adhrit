.class final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;


# direct methods
.method private constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const-string v0, "plugged"

    .line 109
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    iget-object p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    invoke-static {p2}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;->a(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;

    invoke-direct {v0, p0, p1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
