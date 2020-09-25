.class final Lo/setSwitchMinWidth$onTransact$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSwitchMinWidth$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic onMessageChannelReady:Lo/setSwitchMinWidth$onTransact;


# direct methods
.method constructor <init>(Lo/setSwitchMinWidth$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/setSwitchMinWidth$onTransact$1;->onMessageChannelReady:Lo/setSwitchMinWidth$onTransact;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1144
    :try_start_0
    iget-object v0, p0, Lo/setSwitchMinWidth$onTransact$1;->onMessageChannelReady:Lo/setSwitchMinWidth$onTransact;

    iget-object v0, v0, Lo/setSwitchMinWidth$onTransact;->onMessageChannelReady:Lo/setSwitchMinWidth;

    .line 2242
    iget-object v0, v0, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    invoke-interface {v0}, Lo/reauthenticate;->extraCallback()Lo/getMinidumpFile;
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1146
    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "$this$debugStackTrace"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3005
    sget-object v1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    invoke-static {}, Lo/replaceAll;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3006
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1148
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/setSwitchMinWidth$onTransact$1;->onMessageChannelReady:Lo/setSwitchMinWidth$onTransact;

    iget-object v0, v0, Lo/setSwitchMinWidth$onTransact;->onMessageChannelReady:Lo/setSwitchMinWidth;

    iget-object v1, p0, Lo/setSwitchMinWidth$onTransact$1;->onMessageChannelReady:Lo/setSwitchMinWidth$onTransact;

    iget-object v1, v1, Lo/setSwitchMinWidth$onTransact;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setSwitchMinWidth;->onNavigationEvent(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
