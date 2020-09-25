.class final Lo/getIssuedAtTimestamp;
.super Lo/getExpirationTimestamp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getExpirationTimestamp<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/getAuthTimestamp;Lo/doOnboarding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "OnCompleteUpdateCallback"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lo/getExpirationTimestamp;-><init>(Lo/getAuthTimestamp;Lo/addItemDecoration$onPostMessage;Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lo/getExpirationTimestamp;->ICustomTabsCallback(Landroid/os/Bundle;)V

    const/4 v0, -0x2

    const-string v1, "error.code"

    .line 1000
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo/getExpirationTimestamp;->onPostMessage:Lo/doOnboarding;

    new-instance v3, Lcom/google/android/play/core/install/InstallException;

    .line 2000
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v3, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    .line 3000
    iget-object p1, v2, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p1, v3}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lo/getExpirationTimestamp;->onPostMessage:Lo/doOnboarding;

    .line 4000
    iget-object p1, p1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/Onboarding;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
