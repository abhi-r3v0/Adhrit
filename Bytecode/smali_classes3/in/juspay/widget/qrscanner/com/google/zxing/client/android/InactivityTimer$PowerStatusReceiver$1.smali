.class Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;Z)V
    .locals 0

    .line 111
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->b:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    iput-boolean p2, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->b:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    iget-object v0, v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;->a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;

    iget-boolean v1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer$PowerStatusReceiver$1;->a:Z

    invoke-static {v0, v1}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;->a(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/InactivityTimer;Z)V

    return-void
.end method
