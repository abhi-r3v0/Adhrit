.class public Landroidx/biometric/DeviceCredentialHandlerActivity;
.super Lo/asBinder;
.source ""


# instance fields
.field private ICustomTabsCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3}, Lo/asBinder;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    invoke-virtual {p0, p2}, Landroidx/biometric/DeviceCredentialHandlerActivity;->onMessageChannelReady(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1095
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-nez v0, :cond_0

    .line 1096
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;-><init>()V

    sput-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    .line 1098
    :cond_0
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    .line 1117
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onMessageChannelReady:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2117
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onMessageChannelReady:I

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23$asBinder;->TransparentStyle:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 58
    :cond_1
    invoke-super {p0, p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v3, "did_change_configuration"

    .line 62
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->ICustomTabsCallback:Z

    if-nez v2, :cond_3

    .line 2272
    iput v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    goto :goto_1

    .line 66
    :cond_3
    iput-boolean v1, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->ICustomTabsCallback:Z

    :goto_1
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    sget p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23$onPostMessage;->device_credential_handler_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3200
    iget-object p1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onTransact:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_5

    .line 3219
    iget-object p1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asBinder:Lo/run$onNavigationEvent;

    if-nez p1, :cond_4

    goto :goto_2

    .line 77
    :cond_4
    new-instance p1, Lo/run;

    .line 4200
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onTransact:Ljava/util/concurrent/Executor;

    .line 4219
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asBinder:Lo/run$onNavigationEvent;

    .line 78
    invoke-direct {p1, p0, v1, v0}, Lo/run;-><init>(Lo/onSessionEvent;Ljava/util/concurrent/Executor;Lo/run$onNavigationEvent;)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "prompt_info_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 80
    new-instance v1, Lo/run$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/run$ICustomTabsCallback;-><init>(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p1, v1}, Lo/run;->extraCallback(Lo/run$ICustomTabsCallback;)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "DeviceCredentialHandler"

    const-string v0, "onCreate: Executor and/or callback was null!"

    .line 73
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 4

    .line 6104
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    if-nez v0, :cond_0

    const-string p1, "DeviceCredentialHandler"

    const-string v0, "onActivityResult: Bridge or callback was null!"

    .line 121
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 6228
    iput p1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asInterface:I

    .line 6241
    iput-boolean v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    .line 6264
    iput v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    goto :goto_0

    .line 7228
    :cond_1
    iput v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->asInterface:I

    .line 7241
    iput-boolean v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->ICustomTabsCallback$Stub:Z

    .line 7264
    iput v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 87
    invoke-super {p0}, Lo/asBinder;->onPause()V

    .line 5104
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onNavigationEvent:Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;

    .line 92
    invoke-virtual {p0}, Landroidx/biometric/DeviceCredentialHandlerActivity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5254
    iget v1, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5255
    iput v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$4;->onRelationshipValidationResult:I

    .line 94
    :cond_0
    iput-boolean v2, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->ICustomTabsCallback:Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lo/asBinder;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-boolean v0, p0, Landroidx/biometric/DeviceCredentialHandlerActivity;->ICustomTabsCallback:Z

    const-string v1, "did_change_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
