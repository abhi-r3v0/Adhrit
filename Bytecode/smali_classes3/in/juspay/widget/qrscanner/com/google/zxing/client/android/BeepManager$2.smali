.class Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 102
    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$2;->a:Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 107
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 108
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x1

    return p1
.end method
