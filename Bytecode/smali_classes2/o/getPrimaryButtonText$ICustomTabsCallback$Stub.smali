.class final Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;
.super Lo/getActivityToLaunchOnFinish;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Stub"
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/getPrimaryButtonText;


# direct methods
.method public constructor <init>(Lo/getPrimaryButtonText;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    .line 2
    invoke-direct {p0, p2}, Lo/getActivityToLaunchOnFinish;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 4
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    iget-object v0, v0, Lo/getPrimaryButtonText;->zzdc:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    .line 1057
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 2053
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPrimaryButtonText$asInterface;

    .line 2055
    invoke-virtual {p1}, Lo/getPrimaryButtonText$asInterface;->extraCallback()V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v6, 0x5

    if-eq v0, v5, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    .line 9
    invoke-virtual {v0}, Lo/getPrimaryButtonText;->enableLocalFallback()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_6

    :cond_5
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    .line 10
    invoke-virtual {v0}, Lo/getPrimaryButtonText;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3053
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPrimaryButtonText$asInterface;

    .line 3055
    invoke-virtual {p1}, Lo/getPrimaryButtonText$asInterface;->extraCallback()V

    return-void

    .line 13
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x8

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-ne v0, v1, :cond_9

    .line 14
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    new-instance v1, Lo/setReferenceId;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lo/setReferenceId;-><init>(I)V

    invoke-static {v0, v1}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;Lo/setReferenceId;)Lo/setReferenceId;

    .line 15
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1}, Lo/getPrimaryButtonText;->zzb(Lo/getPrimaryButtonText;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1}, Lo/getPrimaryButtonText;->zzc(Lo/getPrimaryButtonText;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1, v8, v9}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;ILandroid/os/IInterface;)V

    return-void

    .line 18
    :cond_7
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1}, Lo/getPrimaryButtonText;->zzd(Lo/getPrimaryButtonText;)Lo/setReferenceId;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 19
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1}, Lo/getPrimaryButtonText;->zzd(Lo/getPrimaryButtonText;)Lo/setReferenceId;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_8
    new-instance p1, Lo/setReferenceId;

    invoke-direct {p1, v7}, Lo/setReferenceId;-><init>(I)V

    .line 21
    :goto_0
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    iget-object v0, v0, Lo/getPrimaryButtonText;->zzcq:Lo/getPrimaryButtonText$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/getPrimaryButtonText$onNavigationEvent;->onNavigationEvent(Lo/setReferenceId;)V

    .line 22
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-virtual {v0, p1}, Lo/getPrimaryButtonText;->onConnectionFailed(Lo/setReferenceId;)V

    return-void

    .line 24
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_b

    .line 25
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1}, Lo/getPrimaryButtonText;->zzd(Lo/getPrimaryButtonText;)Lo/setReferenceId;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 26
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1}, Lo/getPrimaryButtonText;->zzd(Lo/getPrimaryButtonText;)Lo/setReferenceId;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_a
    new-instance p1, Lo/setReferenceId;

    invoke-direct {p1, v7}, Lo/setReferenceId;-><init>(I)V

    .line 28
    :goto_1
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    iget-object v0, v0, Lo/getPrimaryButtonText;->zzcq:Lo/getPrimaryButtonText$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/getPrimaryButtonText$onNavigationEvent;->onNavigationEvent(Lo/setReferenceId;)V

    .line 29
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-virtual {v0, p1}, Lo/getPrimaryButtonText;->onConnectionFailed(Lo/setReferenceId;)V

    return-void

    .line 31
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v8, :cond_d

    .line 32
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 33
    :cond_c
    new-instance v0, Lo/setReferenceId;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v9}, Lo/setReferenceId;-><init>(ILandroid/app/PendingIntent;)V

    .line 34
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    iget-object p1, p1, Lo/getPrimaryButtonText;->zzcq:Lo/getPrimaryButtonText$onNavigationEvent;

    invoke-interface {p1, v0}, Lo/getPrimaryButtonText$onNavigationEvent;->onNavigationEvent(Lo/setReferenceId;)V

    .line 35
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-virtual {p1, v0}, Lo/getPrimaryButtonText;->onConnectionFailed(Lo/setReferenceId;)V

    return-void

    .line 37
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    .line 38
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {v0, v6, v9}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;ILandroid/os/IInterface;)V

    .line 39
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zze(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 40
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zze(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$onMessageChannelReady;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lo/getPrimaryButtonText$onMessageChannelReady;->extraCallback(I)V

    .line 41
    :cond_e
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lo/getPrimaryButtonText;->onConnectionSuspended(I)V

    .line 42
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-static {p1, v6, v5, v9}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;IILandroid/os/IInterface;)Z

    return-void

    .line 44
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub;->extraCallback:Lo/getPrimaryButtonText;

    invoke-virtual {v0}, Lo/getPrimaryButtonText;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4053
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPrimaryButtonText$asInterface;

    .line 4055
    invoke-virtual {p1}, Lo/getPrimaryButtonText$asInterface;->extraCallback()V

    return-void

    .line 4057
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_11

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_11

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_12

    :cond_11
    const/4 v2, 0x1

    :cond_12
    if-eqz v2, :cond_13

    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPrimaryButtonText$asInterface;

    .line 49
    invoke-virtual {p1}, Lo/getPrimaryButtonText$asInterface;->ICustomTabsCallback()V

    return-void

    .line 51
    :cond_13
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
