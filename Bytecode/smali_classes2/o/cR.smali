.class final Lo/cR;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic asInterface:Lo/setErrorMessageProvider;

.field private final synthetic extraCallback:Z

.field private final synthetic onPostMessage:Ljava/lang/String;

.field private final synthetic onRelationshipValidationResult:Lo/getCsatResponse;


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/String;Ljava/lang/String;ZLo/setErrorMessageProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/cR;->onRelationshipValidationResult:Lo/getCsatResponse;

    iput-object p2, p0, Lo/cR;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/cR;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p4, p0, Lo/cR;->extraCallback:Z

    iput-object p5, p0, Lo/cR;->asInterface:Lo/setErrorMessageProvider;

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/cR;->onRelationshipValidationResult:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v0

    iget-object v1, p0, Lo/cR;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/cR;->ICustomTabsCallback:Ljava/lang/String;

    iget-boolean v3, p0, Lo/cR;->extraCallback:Z

    iget-object v4, p0, Lo/cR;->asInterface:Lo/setErrorMessageProvider;

    invoke-interface {v0, v1, v2, v3, v4}, Lo/setControllerHideOnTouch;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLo/setShowBuffering;)V

    return-void
.end method

.method protected final onPostMessage()V
    .locals 2

    .line 4
    iget-object v0, p0, Lo/cR;->asInterface:Lo/setErrorMessageProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setErrorMessageProvider;->onPostMessage(Landroid/os/Bundle;)V

    return-void
.end method
