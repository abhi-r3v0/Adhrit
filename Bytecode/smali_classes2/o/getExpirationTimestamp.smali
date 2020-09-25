.class Lo/getExpirationTimestamp;
.super Lo/access$lambda$0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/access$lambda$0;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

.field private synthetic onNavigationEvent:Lo/getAuthTimestamp;

.field final onPostMessage:Lo/doOnboarding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/doOnboarding<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getAuthTimestamp;Lo/addItemDecoration$onPostMessage;Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addItemDecoration$onPostMessage;",
            "Lo/doOnboarding<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/getExpirationTimestamp;->onNavigationEvent:Lo/getAuthTimestamp;

    invoke-direct {p0}, Lo/access$lambda$0;-><init>()V

    iput-object p2, p0, Lo/getExpirationTimestamp;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    iput-object p3, p0, Lo/getExpirationTimestamp;->onPostMessage:Lo/doOnboarding;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lo/getExpirationTimestamp;->onNavigationEvent:Lo/getAuthTimestamp;

    iget-object p1, p1, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    .line 2000
    new-instance v0, Lo/getInterface;

    invoke-direct {v0, p1}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {p1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    iget-object p1, p0, Lo/getExpirationTimestamp;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteUpdate"

    invoke-virtual {p1, v1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lo/getExpirationTimestamp;->onNavigationEvent:Lo/getAuthTimestamp;

    iget-object p1, p1, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    .line 1000
    new-instance v0, Lo/getInterface;

    invoke-direct {v0, p1}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {p1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    iget-object p1, p0, Lo/getExpirationTimestamp;->ICustomTabsCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRequestInfo"

    invoke-virtual {p1, v1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
