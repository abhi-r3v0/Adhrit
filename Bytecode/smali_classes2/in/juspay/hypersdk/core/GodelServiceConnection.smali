.class Lin/juspay/hypersdk/core/GodelServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final TAG:Ljava/lang/String; = "GodelServiceConnection"


# instance fields
.field isBound:Z

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private messenger:Landroid/os/Messenger;

.field private pendingMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->isBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->messenger:Landroid/os/Messenger;

    iput-object v0, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->pendingMsg:Landroid/os/Message;

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    iget-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->messenger:Landroid/os/Messenger;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->isBound:Z

    :try_start_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->pendingMsg:Landroid/os/Message;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/GodelServiceConnection;->request(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    const-string v1, "GodelServiceConnection"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "mpin_util"

    const-string v5, "Exception while trying to send message"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->messenger:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->isBound:Z

    return-void
.end method

.method public request(ILandroid/os/Bundle;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance p2, Landroid/os/Messenger;

    invoke-direct {p2, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/GodelServiceConnection;->request(Landroid/os/Message;)V

    return-void
.end method

.method public request(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->isBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    :cond_0
    iput-object p1, p0, Lin/juspay/hypersdk/core/GodelServiceConnection;->pendingMsg:Landroid/os/Message;

    return-void
.end method
