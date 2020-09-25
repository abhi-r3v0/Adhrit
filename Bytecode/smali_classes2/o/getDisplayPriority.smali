.class public final Lo/getDisplayPriority;
.super Lo/setMinDue;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lo/setMinDue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final onNavigationEvent:Lo/setCustomAmount$asInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$asInterface<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected final createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lo/getDisplayPriority;->onNavigationEvent:Lo/setCustomAmount$asInterface;

    invoke-interface {p1}, Lo/setCustomAmount$asInterface;->onMessageChannelReady()Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()Lo/setCustomAmount$asInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setCustomAmount$asInterface<",
            "TT;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/getDisplayPriority;->onNavigationEvent:Lo/setCustomAmount$asInterface;

    return-object v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/getDisplayPriority;->onNavigationEvent:Lo/setCustomAmount$asInterface;

    invoke-interface {v0}, Lo/setCustomAmount$asInterface;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lo/getDisplayPriority;->onNavigationEvent:Lo/setCustomAmount$asInterface;

    invoke-interface {v0}, Lo/setCustomAmount$asInterface;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final onSetConnectState(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method
