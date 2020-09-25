.class final Lo/setSmoothScrollingEnabled$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSmoothScrollingEnabled;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lcom/dreamplug/contacthelper/db/Database;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/contacthelper/db/Database;",
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
.field private synthetic onPostMessage:Lo/setSmoothScrollingEnabled;


# direct methods
.method constructor <init>(Lo/setSmoothScrollingEnabled;)V
    .locals 0

    iput-object p1, p0, Lo/setSmoothScrollingEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollingEnabled;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1015
    iget-object v0, p0, Lo/setSmoothScrollingEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollingEnabled;

    invoke-static {v0}, Lo/setSmoothScrollingEnabled;->onNavigationEvent(Lo/setSmoothScrollingEnabled;)Landroid/content/Context;

    move-result-object v0

    .line 1016
    const-class v1, Lcom/dreamplug/contacthelper/db/Database;

    const-string v2, "ContactsDatabase"

    .line 1014
    invoke-static {v0, v1, v2}, Lo/registerMediaButtonEventReceiver;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 1017
    invoke-virtual {v0, v1}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback()Lo/setCurrentControllerInfo;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/contacthelper/db/Database;

    return-object v0
.end method
