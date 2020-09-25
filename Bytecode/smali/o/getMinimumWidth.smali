.class public final Lo/getMinimumWidth;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMinimumWidth$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004*\u0001\u000e\u0018\u0000 &2\u00020\u0001:\u0001&B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J-\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001e2\u000e\u0010\u001f\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020!0 2\u0006\u0010\"\u001a\u00020#H\u0016\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/qr/QrFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "barcodeDetector",
        "Lcom/google/android/gms/vision/barcode/BarcodeDetector;",
        "barcodeViewModel",
        "Lcom/dreamplug/fabrik/ui/qr/QrViewModel;",
        "getBarcodeViewModel",
        "()Lcom/dreamplug/fabrik/ui/qr/QrViewModel;",
        "barcodeViewModel$delegate",
        "Lkotlin/Lazy;",
        "cameraSource",
        "Lcom/google/android/gms/vision/CameraSource;",
        "surfaceHolderCallback",
        "com/dreamplug/fabrik/ui/qr/QrFragment$surfaceHolderCallback$1",
        "Lcom/dreamplug/fabrik/ui/qr/QrFragment$surfaceHolderCallback$1;",
        "initialiseDetectorsAndSources",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onPause",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getMinimumWidth$onMessageChannelReady;

.field private extraCallback:Lo/setGaTrackingId;

.field private final onMessageChannelReady:Lo/isSameListener;

.field private onNavigationEvent:Lo/setGcmSenderId;

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lo/getMinimumWidth$extraCallback;

    invoke-direct {v0, p0}, Lo/getMinimumWidth$extraCallback;-><init>(Lo/getMinimumWidth;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 25
    iput-object v1, p0, Lo/getMinimumWidth;->onMessageChannelReady:Lo/isSameListener;

    .line 68
    new-instance v0, Lo/getMinimumWidth$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/getMinimumWidth$onMessageChannelReady;-><init>(Lo/getMinimumWidth;)V

    iput-object v0, p0, Lo/getMinimumWidth;->ICustomTabsCallback:Lo/getMinimumWidth$onMessageChannelReady;

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/getMinimumWidth;)Lo/onAdapterChanged;
    .locals 0

    .line 9000
    iget-object p0, p0, Lo/getMinimumWidth;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onAdapterChanged;

    return-object p0
.end method

.method public static final synthetic onPostMessage(Lo/getMinimumWidth;)Lo/setGcmSenderId;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/getMinimumWidth;->onNavigationEvent:Lo/setGcmSenderId;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getMinimumWidth;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getMinimumWidth;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getMinimumWidth;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/getMinimumWidth;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-object p1, Lo/getMaxCardElevation;->extraCallback:Lo/getMaxCardElevation;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "QrFragment"

    const/4 v2, 0x0

    .line 1029
    invoke-interface {p1, v1, v0, v2}, Lo/findSameItem;->ICustomTabsCallback(Ljava/lang/String;Lo/MediaControllerCompatApi21$CallbackProxy;Z)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00c9

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 10000
    iget-object v0, p0, Lo/getMinimumWidth;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 94
    iget-object v0, p0, Lo/getMinimumWidth;->onNavigationEvent:Lo/setGcmSenderId;

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2001
    :cond_0
    iget-object v1, v0, Lo/setGcmSenderId;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v1

    .line 2002
    :try_start_0
    invoke-virtual {v0}, Lo/setGcmSenderId;->onNavigationEvent()V

    .line 2003
    iget-object v0, v0, Lo/setGcmSenderId;->asInterface:Lo/setGcmSenderId$onMessageChannelReady;

    .line 2008
    iget-object v2, v0, Lo/setGcmSenderId$onMessageChannelReady;->extraCallback:Lo/setProjectId;

    invoke-virtual {v2}, Lo/setProjectId;->onNavigationEvent()V

    const/4 v2, 0x0

    .line 2009
    iput-object v2, v0, Lo/setGcmSenderId$onMessageChannelReady;->extraCallback:Lo/setProjectId;

    .line 2004
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->surfaceView:I

    invoke-virtual {p0, v0}, Lo/getMinimumWidth;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "surfaceView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lo/getMinimumWidth;->ICustomTabsCallback:Lo/getMinimumWidth$onMessageChannelReady;

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2004
    monitor-exit v1

    throw v0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0xc9

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    array-length p1, p3

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, p2

    if-eqz p1, :cond_2

    aget p1, p3, v0

    if-nez p1, :cond_2

    .line 108
    iget-object p1, p0, Lo/getMinimumWidth;->onNavigationEvent:Lo/setGcmSenderId;

    if-eqz p1, :cond_2

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->surfaceView:I

    invoke-virtual {p0, p2}, Lo/getMinimumWidth;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    const-string/jumbo p3, "surfaceView"

    invoke-static {p2, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/setGcmSenderId;->onPostMessage(Landroid/view/SurfaceHolder;)Lo/setGcmSenderId;

    :cond_2
    :goto_1
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2039
    new-instance v0, Lo/setGaTrackingId$ICustomTabsCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/setGaTrackingId$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    .line 3005
    iget-object v1, v0, Lo/setGaTrackingId$ICustomTabsCallback;->extraCallback:Lo/triggerConnectionSuspended;

    const/16 v2, 0x100

    iput v2, v1, Lo/triggerConnectionSuspended;->onPostMessage:I

    .line 3007
    new-instance v1, Lo/FlagProviderImpl;

    iget-object v2, v0, Lo/setGaTrackingId$ICustomTabsCallback;->onMessageChannelReady:Landroid/content/Context;

    iget-object v0, v0, Lo/setGaTrackingId$ICustomTabsCallback;->extraCallback:Lo/triggerConnectionSuspended;

    invoke-direct {v1, v2, v0}, Lo/FlagProviderImpl;-><init>(Landroid/content/Context;Lo/triggerConnectionSuspended;)V

    .line 3008
    new-instance v0, Lo/setGaTrackingId;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setGaTrackingId;-><init>(Lo/FlagProviderImpl;B)V

    .line 2041
    iput-object v0, p0, Lo/getMinimumWidth;->extraCallback:Lo/setGaTrackingId;

    .line 2043
    new-instance v0, Lo/setGcmSenderId$onNavigationEvent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lo/getMinimumWidth;->extraCallback:Lo/setGaTrackingId;

    if-nez v3, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast v3, Lo/setProjectId;

    invoke-direct {v0, v1, v3}, Lo/setGcmSenderId$onNavigationEvent;-><init>(Landroid/content/Context;Lo/setProjectId;)V

    .line 3012
    iget-object v1, v0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    const/high16 v3, 0x41700000    # 15.0f

    .line 3199
    iput v3, v1, Lo/setGcmSenderId;->asBinder:F

    .line 4021
    iget-object v1, v0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    .line 4202
    iput v2, v1, Lo/setGcmSenderId;->extraCallback:I

    .line 5023
    iget-object v1, v0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    const/4 v2, 0x1

    .line 5203
    iput-boolean v2, v1, Lo/setGcmSenderId;->ICustomTabsCallback$Stub:Z

    .line 6031
    iget-object v1, v0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    new-instance v2, Lo/setGcmSenderId$onMessageChannelReady;

    iget-object v3, v0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    iget-object v4, v0, Lo/setGcmSenderId$onNavigationEvent;->extraCallback:Lo/setProjectId;

    invoke-direct {v2, v3, v4}, Lo/setGcmSenderId$onMessageChannelReady;-><init>(Lo/setGcmSenderId;Lo/setProjectId;)V

    .line 6205
    iput-object v2, v1, Lo/setGcmSenderId;->asInterface:Lo/setGcmSenderId$onMessageChannelReady;

    .line 6032
    iget-object v0, v0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    .line 2048
    iput-object v0, p0, Lo/getMinimumWidth;->onNavigationEvent:Lo/setGcmSenderId;

    .line 2050
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->surfaceView:I

    invoke-virtual {p0, v0}, Lo/getMinimumWidth;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    const-string/jumbo v1, "surfaceView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lo/getMinimumWidth;->ICustomTabsCallback:Lo/getMinimumWidth$onMessageChannelReady;

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2053
    iget-object v0, p0, Lo/getMinimumWidth;->extraCallback:Lo/setGaTrackingId;

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    new-instance v1, Lo/getMinimumWidth$onNavigationEvent;

    invoke-direct {v1, p0}, Lo/getMinimumWidth$onNavigationEvent;-><init>(Lo/getMinimumWidth;)V

    check-cast v1, Lo/setProjectId$onNavigationEvent;

    .line 7020
    iget-object v2, v0, Lo/setProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v2

    .line 7023
    :try_start_0
    iput-object v1, v0, Lo/setProjectId;->onNavigationEvent:Lo/setProjectId$onNavigationEvent;

    .line 7024
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
