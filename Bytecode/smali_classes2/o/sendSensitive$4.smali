.class final Lo/sendSensitive$4;
.super Lo/getConnectionUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendSensitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getConnectionUrl<",
        "Lo/nextRequestNumber;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/sendSensitive;


# direct methods
.method constructor <init>(Lo/sendSensitive;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lo/sendSensitive$4;->onPostMessage:Lo/sendSensitive;

    invoke-direct {p0}, Lo/getConnectionUrl;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 210
    iget-object v0, p0, Lo/sendSensitive$4;->onPostMessage:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;)Lo/resume$extraCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/resume$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 215
    iget-object v0, p0, Lo/sendSensitive$4;->onPostMessage:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;)Lo/resume$extraCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/resume$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method
