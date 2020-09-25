.class public final Lo/getPrimaryButtonText$onTransact;
.super Lo/CardFinalPaymentData$$Parcelable$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onTransact"
.end annotation


# instance fields
.field private extraCallback:Lo/getPrimaryButtonText;

.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(Lo/getPrimaryButtonText;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/CardFinalPaymentData$$Parcelable$onPostMessage;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getPrimaryButtonText$onTransact;->extraCallback:Lo/getPrimaryButtonText;

    .line 3
    iput p2, p0, Lo/getPrimaryButtonText$onTransact;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(ILandroid/os/Bundle;)V
    .locals 1

    .line 5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lo/getPrimaryButtonText$onTransact;->extraCallback:Lo/getPrimaryButtonText;

    if-eqz v0, :cond_0

    .line 8
    iget v1, p0, Lo/getPrimaryButtonText$onTransact;->onNavigationEvent:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lo/getPrimaryButtonText;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lo/getPrimaryButtonText$onTransact;->extraCallback:Lo/getPrimaryButtonText;

    return-void

    .line 1011
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(ILandroid/os/IBinder;Lo/getTotal_count;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lo/getPrimaryButtonText$onTransact;->extraCallback:Lo/getPrimaryButtonText;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 14
    invoke-static {v0, p3}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;Lo/getTotal_count;)V

    .line 16
    iget-object p3, p3, Lo/getTotal_count;->extraCallback:Landroid/os/Bundle;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lo/getPrimaryButtonText$onTransact;->onNavigationEvent(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    .line 3002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null reference"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2011
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
