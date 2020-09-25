.class public Lo/isCardHidden;
.super Lo/getAccount_number;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/getAccount_number;-><init>(Lo/getBrand_logo_url;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public onNavigationEvent(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    return v0
.end method
