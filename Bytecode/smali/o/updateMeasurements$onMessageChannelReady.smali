.class final Lo/updateMeasurements$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateMeasurements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/updateMeasurements;


# direct methods
.method constructor <init>(Lo/updateMeasurements;)V
    .locals 0

    iput-object p1, p0, Lo/updateMeasurements$onMessageChannelReady;->extraCallback:Lo/updateMeasurements;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 21
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    iget-object p1, p0, Lo/updateMeasurements$onMessageChannelReady;->extraCallback:Lo/updateMeasurements;

    .line 2021
    iget-object p1, p1, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    const-string v0, "loanAmount"

    .line 1116
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1117
    iget-object p1, p0, Lo/updateMeasurements$onMessageChannelReady;->extraCallback:Lo/updateMeasurements;

    .line 3021
    iget-object p1, p1, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 1117
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1118
    iget-object p1, p0, Lo/updateMeasurements$onMessageChannelReady;->extraCallback:Lo/updateMeasurements;

    .line 4021
    iget-object p1, p1, Lo/updateMeasurements;->asInterface:Landroid/widget/EditText;

    .line 1118
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1119
    iget-object p1, p0, Lo/updateMeasurements$onMessageChannelReady;->extraCallback:Lo/updateMeasurements;

    invoke-static {p1}, Lo/updateMeasurements;->extraCallback(Lo/updateMeasurements;)V

    .line 21
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
