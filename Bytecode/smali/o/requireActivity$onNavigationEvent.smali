.class final Lo/requireActivity$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requireActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDatabase;",
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
        "Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDatabase;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/requireActivity$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/requireActivity$onNavigationEvent;

    invoke-direct {v0}, Lo/requireActivity$onNavigationEvent;-><init>()V

    sput-object v0, Lo/requireActivity$onNavigationEvent;->onPostMessage:Lo/requireActivity$onNavigationEvent;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1011
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1011
    :cond_0
    check-cast v0, Landroid/content/Context;

    .line 1012
    const-class v1, Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDatabase;

    const-string v2, "AssetsDatabase"

    .line 1010
    invoke-static {v0, v1, v2}, Lo/registerMediaButtonEventReceiver;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 1013
    invoke-virtual {v0, v1}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object v0

    .line 1014
    invoke-virtual {v0}, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback()Lo/setCurrentControllerInfo;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/helper/assets/helper/persistance/AssetsDatabase;

    return-object v0
.end method
