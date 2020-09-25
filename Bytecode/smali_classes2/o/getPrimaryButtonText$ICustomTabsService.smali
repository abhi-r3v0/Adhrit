.class public final Lo/getPrimaryButtonText$ICustomTabsService;
.super Lo/getPrimaryButtonText$asBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPrimaryButtonText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ICustomTabsService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getPrimaryButtonText$asBinder;"
    }
.end annotation


# instance fields
.field private final synthetic onNavigationEvent:Lo/getPrimaryButtonText;


# direct methods
.method public constructor <init>(Lo/getPrimaryButtonText;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lo/getPrimaryButtonText$asBinder;-><init>(Lo/getPrimaryButtonText;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Lo/setReferenceId;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-virtual {v0}, Lo/getPrimaryButtonText;->enableLocalFallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-static {v0}, Lo/getPrimaryButtonText;->zzb(Lo/getPrimaryButtonText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lo/getPrimaryButtonText;->zza(Lo/getPrimaryButtonText;I)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    iget-object v0, v0, Lo/getPrimaryButtonText;->zzcq:Lo/getPrimaryButtonText$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/getPrimaryButtonText$onNavigationEvent;->onNavigationEvent(Lo/setReferenceId;)V

    .line 8
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    invoke-virtual {v0, p1}, Lo/getPrimaryButtonText;->onConnectionFailed(Lo/setReferenceId;)V

    return-void
.end method

.method protected final onMessageChannelReady()Z
    .locals 2

    .line 10
    iget-object v0, p0, Lo/getPrimaryButtonText$ICustomTabsService;->onNavigationEvent:Lo/getPrimaryButtonText;

    iget-object v0, v0, Lo/getPrimaryButtonText;->zzcq:Lo/getPrimaryButtonText$onNavigationEvent;

    sget-object v1, Lo/setReferenceId;->onPostMessage:Lo/setReferenceId;

    invoke-interface {v0, v1}, Lo/getPrimaryButtonText$onNavigationEvent;->onNavigationEvent(Lo/setReferenceId;)V

    const/4 v0, 0x1

    return v0
.end method
