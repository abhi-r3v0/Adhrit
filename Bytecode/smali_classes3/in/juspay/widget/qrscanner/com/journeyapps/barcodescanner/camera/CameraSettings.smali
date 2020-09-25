.class public Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->b:Z

    .line 12
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->c:Z

    .line 13
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->d:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->e:Z

    .line 15
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->f:Z

    .line 16
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->g:Z

    .line 17
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->h:Z

    .line 18
    sget-object v0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->a:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 28
    iget v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 38
    iput p1, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->a:I

    return-void
.end method

.method public b()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->c:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->g:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->e:Z

    return v0
.end method

.method public g()Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 1

    .line 145
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->i:Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/journeyapps/barcodescanner/camera/CameraSettings;->h:Z

    return v0
.end method
