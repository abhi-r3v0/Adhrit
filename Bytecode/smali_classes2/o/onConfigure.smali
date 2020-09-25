.class final Lo/onConfigure;
.super Lo/getCsatResponse$ICustomTabsCallback;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/Long;

.field private final synthetic ICustomTabsCallback$Stub:Lo/getCsatResponse;

.field private final synthetic asInterface:Z

.field private final synthetic extraCallback:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;

.field private final synthetic onRelationshipValidationResult:Landroid/os/Bundle;

.field private final synthetic onTransact:Z


# direct methods
.method constructor <init>(Lo/getCsatResponse;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/onConfigure;->ICustomTabsCallback$Stub:Lo/getCsatResponse;

    iput-object p2, p0, Lo/onConfigure;->ICustomTabsCallback:Ljava/lang/Long;

    iput-object p3, p0, Lo/onConfigure;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/onConfigure;->onPostMessage:Ljava/lang/String;

    iput-object p5, p0, Lo/onConfigure;->onRelationshipValidationResult:Landroid/os/Bundle;

    iput-boolean p6, p0, Lo/onConfigure;->asInterface:Z

    iput-boolean p7, p0, Lo/onConfigure;->onTransact:Z

    invoke-direct {p0, p1}, Lo/getCsatResponse$ICustomTabsCallback;-><init>(Lo/getCsatResponse;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/onConfigure;->ICustomTabsCallback:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lo/onConfigure;->onNavigationEvent:J

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v8, v0

    .line 3
    iget-object v0, p0, Lo/onConfigure;->ICustomTabsCallback$Stub:Lo/getCsatResponse;

    invoke-static {v0}, Lo/getCsatResponse;->onPostMessage(Lo/getCsatResponse;)Lo/setControllerHideOnTouch;

    move-result-object v2

    iget-object v3, p0, Lo/onConfigure;->extraCallback:Ljava/lang/String;

    iget-object v4, p0, Lo/onConfigure;->onPostMessage:Ljava/lang/String;

    iget-object v5, p0, Lo/onConfigure;->onRelationshipValidationResult:Landroid/os/Bundle;

    iget-boolean v6, p0, Lo/onConfigure;->asInterface:Z

    iget-boolean v7, p0, Lo/onConfigure;->onTransact:Z

    invoke-interface/range {v2 .. v9}, Lo/setControllerHideOnTouch;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
