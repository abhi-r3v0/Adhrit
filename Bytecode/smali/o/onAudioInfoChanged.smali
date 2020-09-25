.class public Lo/onAudioInfoChanged;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private ICustomTabsCallback:Landroid/os/Handler;

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

.field private ICustomTabsService:Z

.field private asBinder:Z

.field private asInterface:Z

.field private extraCallback:Ljava/lang/Runnable;

.field private getInterfaceDescriptor:Z

.field private newSession:Z

.field private onMessageChannelReady:I

.field private onNavigationEvent:Landroid/content/DialogInterface$OnDismissListener;

.field private onPostMessage:Landroid/content/DialogInterface$OnCancelListener;

.field private onRelationshipValidationResult:I

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 95
    new-instance v0, Lo/onAudioInfoChanged$3;

    invoke-direct {v0, p0}, Lo/onAudioInfoChanged$3;-><init>(Lo/onAudioInfoChanged;)V

    iput-object v0, p0, Lo/onAudioInfoChanged;->extraCallback:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lo/onAudioInfoChanged$4;

    invoke-direct {v0, p0}, Lo/onAudioInfoChanged$4;-><init>(Lo/onAudioInfoChanged;)V

    iput-object v0, p0, Lo/onAudioInfoChanged;->onPostMessage:Landroid/content/DialogInterface$OnCancelListener;

    .line 114
    new-instance v0, Lo/onAudioInfoChanged$5;

    invoke-direct {v0, p0}, Lo/onAudioInfoChanged$5;-><init>(Lo/onAudioInfoChanged;)V

    iput-object v0, p0, Lo/onAudioInfoChanged;->onNavigationEvent:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lo/onAudioInfoChanged;->onMessageChannelReady:I

    .line 126
    iput v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->onTransact:Z

    .line 128
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->asInterface:Z

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/onAudioInfoChanged;)Landroid/app/Dialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    return-object p0
.end method

.method private onMessageChannelReady(ZZ)V
    .locals 4

    .line 242
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    const/4 v1, 0x0

    .line 246
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->getInterfaceDescriptor:Z

    .line 247
    iget-object v2, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 252
    iget-object v2, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 258
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v2, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 259
    iget-object p2, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Lo/onAudioInfoChanged;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object p2, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object v2, p0, Lo/onAudioInfoChanged;->extraCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->ICustomTabsService:Z

    .line 266
    iget p2, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    if-ltz p2, :cond_4

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    iget p2, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    if-ltz p2, :cond_3

    .line 4629
    new-instance v2, Lo/requestExtraBinder$onMessageChannelReady;

    invoke-direct {v2, p1, v3, p2, v0}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    invoke-virtual {p1, v2, v1}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    const/4 p1, -0x1

    .line 269
    iput p1, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    return-void

    .line 4627
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Bad id: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object p2

    .line 5464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 272
    invoke-virtual {v0, p0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-eqz p1, :cond_5

    .line 274
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    return-void

    .line 276
    :cond_5
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/onAudioInfoChanged;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lo/onAudioInfoChanged;->onNavigationEvent:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 470
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lo/onAudioInfoChanged;->asBinder()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public ICustomTabsCallback$Stub()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->onTransact:Z

    return v0
.end method

.method public asBinder()I
    .locals 1

    .line 309
    iget v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub:I

    return v0
.end method

.method public extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    const/4 v1, 0x1

    .line 195
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->getInterfaceDescriptor:Z

    .line 3171
    invoke-virtual {p1, v0, p0, p2, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 197
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->ICustomTabsService:Z

    .line 198
    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    move-result p1

    iput p1, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    return p1
.end method

.method public extraCallback(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 v1, 0x18

    .line 435
    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 441
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public extraCallback(Z)V
    .locals 1

    .line 322
    iput-boolean p1, p0, Lo/onAudioInfoChanged;->onTransact:Z

    .line 323
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public final i_()Landroid/app/Dialog;
    .locals 3

    .line 300
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DialogFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l_()Landroid/app/Dialog;
    .locals 1

    .line 288
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    return-object v0
.end method

.method public m_()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0, v0}, Lo/onAudioInfoChanged;->onMessageChannelReady(ZZ)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 491
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 493
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->asInterface:Z

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 504
    iget-object v1, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 501
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v1, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 510
    :cond_3
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    iget-boolean v1, p0, Lo/onAudioInfoChanged;->onTransact:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 511
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    iget-object v1, p0, Lo/onAudioInfoChanged;->onPostMessage:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 512
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    iget-object v1, p0, Lo/onAudioInfoChanged;->onNavigationEvent:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 514
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 516
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 364
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 365
    iget-boolean p1, p0, Lo/onAudioInfoChanged;->getInterfaceDescriptor:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 368
    iput-boolean p1, p0, Lo/onAudioInfoChanged;->newSession:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 387
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback:Landroid/os/Handler;

    .line 391
    iget v0, p0, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->asInterface:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 394
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/onAudioInfoChanged;->onMessageChannelReady:I

    const-string v0, "android:theme"

    .line 395
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub:I

    const-string v0, "android:cancelable"

    .line 396
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/onAudioInfoChanged;->onTransact:Z

    .line 397
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->asInterface:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/onAudioInfoChanged;->asInterface:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 398
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 573
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 574
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 578
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->ICustomTabsService:Z

    const/4 v1, 0x0

    .line 582
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 583
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 584
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lo/onAudioInfoChanged;->onDismiss(Landroid/content/DialogInterface;)V

    .line 589
    :cond_0
    iput-object v1, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 375
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 376
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->getInterfaceDescriptor:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 479
    iget-boolean p1, p0, Lo/onAudioInfoChanged;->ICustomTabsService:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 484
    invoke-direct {p0, p1, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(ZZ)V

    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    .line 412
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Lo/onAudioInfoChanged;->asInterface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/onAudioInfoChanged;->asBinder:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 418
    :try_start_0
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->asBinder:Z

    .line 419
    invoke-virtual {p0, p1}, Lo/onAudioInfoChanged;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    .line 420
    iget v1, p0, Lo/onAudioInfoChanged;->onMessageChannelReady:I

    invoke-virtual {p0, p1, v1}, Lo/onAudioInfoChanged;->extraCallback(Landroid/app/Dialog;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iput-boolean v2, p0, Lo/onAudioInfoChanged;->asBinder:Z

    .line 425
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->i_()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 422
    iput-boolean v2, p0, Lo/onAudioInfoChanged;->asBinder:Z

    .line 423
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0, v0, v1}, Lo/onAudioInfoChanged;->onMessageChannelReady(ZZ)V

    return-void
.end method

.method public onMessageChannelReady(II)V
    .locals 1

    .line 156
    iput p1, p0, Lo/onAudioInfoChanged;->onMessageChannelReady:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x1030059

    .line 158
    iput p1, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub:I

    :cond_1
    if-eqz p2, :cond_2

    .line 161
    iput p2, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub:I

    :cond_2
    return-void
.end method

.method public onMessageChannelReady(Lo/requestExtraBinder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->getInterfaceDescriptor:Z

    .line 3464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 4171
    invoke-virtual {v2, v0, p0, p2, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 218
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback()V

    return-void
.end method

.method public onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lo/onAudioInfoChanged;->newSession:Z

    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->getInterfaceDescriptor:Z

    .line 1464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2171
    invoke-virtual {v2, v0, p0, p2, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 181
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void
.end method

.method public onPostMessage(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lo/onAudioInfoChanged;->asInterface:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 536
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 537
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:savedDialogState"

    .line 539
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 541
    :cond_0
    iget v0, p0, Lo/onAudioInfoChanged;->onMessageChannelReady:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 542
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 544
    :cond_1
    iget v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 545
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    :cond_2
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->onTransact:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 548
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 550
    :cond_3
    iget-boolean v0, p0, Lo/onAudioInfoChanged;->asInterface:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 551
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 553
    :cond_4
    iget v0, p0, Lo/onAudioInfoChanged;->onRelationshipValidationResult:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 554
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 525
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 527
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 528
    iput-boolean v1, p0, Lo/onAudioInfoChanged;->ICustomTabsService:Z

    .line 529
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 561
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 562
    iget-object v0, p0, Lo/onAudioInfoChanged;->ICustomTabsCallback$Stub$Proxy:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method
