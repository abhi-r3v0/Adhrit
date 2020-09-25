.class public final Lo/SplitInstallException;
.super Lo/isFabrikEnabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isFabrikEnabled<",
        "Lo/ContentDataSource$ContentDataSourceException;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/setPasswordVisibilityToggleTintList;)V
    .locals 0

    invoke-direct {p0}, Lo/isFabrikEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lo/ContentDataSource$ContentDataSourceException;

    new-instance v0, Lo/readResolve;

    invoke-direct {v0, p0, p2}, Lo/readResolve;-><init>(Lo/SplitInstallException;Lo/removeBackgroundStateChangeListener;)V

    invoke-virtual {p1}, Lo/ContentDataSource$ContentDataSourceException;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lo/setVideoComponent;

    invoke-interface {p1, v0}, Lo/setVideoComponent;->onPostMessage(Lo/setAllowMultipleOverrides;)V

    return-void
.end method
