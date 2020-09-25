.class final Lo/guessMeasurement$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/guessMeasurement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/guessMeasurement;


# direct methods
.method constructor <init>(Lo/guessMeasurement;)V
    .locals 0

    iput-object p1, p0, Lo/guessMeasurement$asBinder;->onNavigationEvent:Lo/guessMeasurement;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    iget-object p1, p0, Lo/guessMeasurement$asBinder;->onNavigationEvent:Lo/guessMeasurement;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1100
    iget-object p1, p0, Lo/guessMeasurement$asBinder;->onNavigationEvent:Lo/guessMeasurement;

    .line 2000
    iget-object p1, p1, Lo/guessMeasurement;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/getMoveDuration;

    .line 1100
    iget-object p1, p0, Lo/guessMeasurement$asBinder;->onNavigationEvent:Lo/guessMeasurement;

    invoke-static {p1}, Lo/guessMeasurement;->onNavigationEvent(Lo/guessMeasurement;)Lo/onDetach$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2106
    iget-object p1, p1, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/16 p1, 0x66

    .line 1100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v3, "LENDING"

    const-string/jumbo v5, "upi_setup_screen"

    invoke-static/range {v0 .. v6}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Lo/onDetach$asInterface;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 47
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
