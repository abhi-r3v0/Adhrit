.class final Lo/setTrackNameProvider;
.super Lo/setDefaultStereoMode$ICustomTabsCallback;


# instance fields
.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onNavigationEvent:[B


# direct methods
.method constructor <init>(Lo/getPaymentMode;[BLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lo/setTrackNameProvider;->onNavigationEvent:[B

    iput-object p3, p0, Lo/setTrackNameProvider;->extraCallback:Ljava/lang/String;

    invoke-direct {p0, p1}, Lo/setDefaultStereoMode$ICustomTabsCallback;-><init>(Lo/getPaymentMode;)V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lo/ContentDataSource$ContentDataSourceException;

    iget-object v0, p0, Lo/setTrackNameProvider;->onMessageChannelReady:Lo/setAllowMultipleOverrides;

    iget-object v1, p0, Lo/setTrackNameProvider;->onNavigationEvent:[B

    iget-object v2, p0, Lo/setTrackNameProvider;->extraCallback:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "com.google.android.safetynet.ATTEST_API_KEY"

    invoke-virtual {p1, v2}, Lo/ContentDataSource$ContentDataSourceException;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p1}, Lo/ContentDataSource$ContentDataSourceException;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lo/setVideoComponent;

    invoke-interface {p1, v0, v1, v2}, Lo/setVideoComponent;->extraCallback(Lo/setAllowMultipleOverrides;[BLjava/lang/String;)V

    return-void
.end method
