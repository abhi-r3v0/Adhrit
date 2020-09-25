.class Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;


# direct methods
.method constructor <init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$1;->a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 99
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
