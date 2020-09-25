.class public final Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;
.super Lo/getPrimaryButtonText$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Proxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getPrimaryButtonText$asBinder;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/os/IBinder;

.field private final synthetic onNavigationEvent:Lo/getPrimaryButtonText;


# direct methods
.method public constructor <init>(Lo/getPrimaryButtonText;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lo/getPrimaryButtonText$asBinder;-><init>(Lo/getPrimaryButtonText;ILandroid/os/Bundle;)V

    .line 3
    iput-object p3, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Lo/setReferenceId;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zzg(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$ICustomTabsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zzg(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$ICustomTabsCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/getPrimaryButtonText$ICustomTabsCallback;->extraCallback(Lo/setReferenceId;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-virtual {v0, p1}, Lo/getPrimaryButtonText;->onConnectionFailed(Lo/setReferenceId;)V

    return-void
.end method

.method protected final onMessageChannelReady()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    iget-object v3, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-virtual {v3}, Lo/getPrimaryButtonText;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    iget-object v3, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-virtual {v3}, Lo/getPrimaryButtonText;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    iget-object v2, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->ICustomTabsCallback:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lo/getPrimaryButtonText;->createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v2, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    const/4 v3, 0x3

    .line 20
    invoke-static {v2, v3, v4, v0}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    :cond_1
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;Lo/setReferenceId;)Lo/setReferenceId;

    .line 22
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-virtual {v0}, Lo/getPrimaryButtonText;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v1}, Lo/getPrimaryButtonText;->zze(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$onMessageChannelReady;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lo/getPrimaryButtonText$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v1}, Lo/getPrimaryButtonText;->zze(Lo/getPrimaryButtonText;)Lo/getPrimaryButtonText$onMessageChannelReady;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/getPrimaryButtonText$onMessageChannelReady;->onPostMessage(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
