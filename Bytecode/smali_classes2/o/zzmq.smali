.class public final Lo/zzmq;
.super Lo/isFabrikEnabled;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isFabrikEnabled<",
        "Lo/ImageFragment;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/zzad;)V
    .locals 0

    invoke-direct {p0}, Lo/isFabrikEnabled;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lo/ImageFragment;

    invoke-virtual {p1}, Lo/ImageFragment;->extraCallback()Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/removeBackgroundStateChangeListener;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
