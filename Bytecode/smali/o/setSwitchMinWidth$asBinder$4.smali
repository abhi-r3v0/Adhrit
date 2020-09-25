.class final Lo/setSwitchMinWidth$asBinder$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSwitchMinWidth$asBinder;
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
.field private synthetic onPostMessage:Lo/setSwitchMinWidth$asBinder;


# direct methods
.method constructor <init>(Lo/setSwitchMinWidth$asBinder;)V
    .locals 0

    iput-object p1, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    const-string v0, "activity.packageName"

    .line 1189
    :try_start_0
    iget-object v1, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v1, v1, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 2061
    iget-object v1, v1, Lo/setSwitchMinWidth;->onMessageChannelReady:Lo/getIdToken;

    if-eqz v1, :cond_0

    .line 1190
    invoke-virtual {v1}, Lo/getIdToken;->onPostMessage()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1192
    iget-object v2, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v2, v2, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 3029
    iget-object v2, v2, Lo/setSwitchMinWidth;->onTransact:Lo/reauthenticate;

    .line 1195
    iget-object v3, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v3, v3, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 4029
    iget-object v3, v3, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    .line 1195
    check-cast v3, Landroid/app/Activity;

    .line 1192
    invoke-interface {v2, v1, v3}, Lo/reauthenticate;->ICustomTabsCallback(Lo/getIdToken;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1197
    iget-object v1, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v1, v1, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 5238
    iget-object v2, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    check-cast v2, Landroid/content/Context;

    iget-object v1, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :cond_0
    iget-object v1, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v1, v1, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 6238
    iget-object v2, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    check-cast v2, Landroid/content/Context;

    iget-object v1, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1201
    :catch_0
    iget-object v1, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v1, v1, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 7238
    iget-object v2, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    check-cast v2, Landroid/content/Context;

    iget-object v1, v1, Lo/setSwitchMinWidth;->ICustomTabsCallback$Stub:Lo/onSessionEvent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1203
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v0, v0, Lo/setSwitchMinWidth$asBinder;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    iget-object v1, p0, Lo/setSwitchMinWidth$asBinder$4;->onPostMessage:Lo/setSwitchMinWidth$asBinder;

    iget-object v1, v1, Lo/setSwitchMinWidth$asBinder;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setSwitchMinWidth;->onNavigationEvent(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
