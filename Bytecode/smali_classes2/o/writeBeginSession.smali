.class Lo/writeBeginSession;
.super Lo/isLeaf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isLeaf;"
    }
.end annotation


# instance fields
.field private extraCallback:Lo/addItemDecoration$onPostMessage;

.field final onNavigationEvent:Lo/doOnboarding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/doOnboarding<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic onPostMessage:Lo/requestChildFocus$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/requestChildFocus$onMessageChannelReady;Lo/addItemDecoration$onPostMessage;Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/addItemDecoration$onPostMessage;",
            "Lo/doOnboarding<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/writeBeginSession;->onPostMessage:Lo/requestChildFocus$onMessageChannelReady;

    invoke-direct {p0}, Lo/isLeaf;-><init>()V

    iput-object p2, p0, Lo/writeBeginSession;->extraCallback:Lo/addItemDecoration$onPostMessage;

    iput-object p3, p0, Lo/writeBeginSession;->onNavigationEvent:Lo/doOnboarding;

    return-void
.end method


# virtual methods
.method public extraCallback(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lo/writeBeginSession;->onPostMessage:Lo/requestChildFocus$onMessageChannelReady;

    iget-object p1, p1, Lo/requestChildFocus$onMessageChannelReady;->extraCallback:Lo/isSet;

    .line 1000
    new-instance v0, Lo/getInterface;

    invoke-direct {v0, p1}, Lo/getInterface;-><init>(Lo/isSet;)V

    invoke-virtual {p1, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    iget-object p1, p0, Lo/writeBeginSession;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    invoke-virtual {p1, v1, v0}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
