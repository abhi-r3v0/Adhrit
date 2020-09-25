.class final Lo/setBackgroundResource$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setBackgroundResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lclub/cred/interjection/data/db/CampaignDatabase;",
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
        "Lclub/cred/interjection/data/db/CampaignDatabase;",
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
.field public static final onNavigationEvent:Lo/setBackgroundResource$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setBackgroundResource$onNavigationEvent;

    invoke-direct {v0}, Lo/setBackgroundResource$onNavigationEvent;-><init>()V

    sput-object v0, Lo/setBackgroundResource$onNavigationEvent;->onNavigationEvent:Lo/setBackgroundResource$onNavigationEvent;

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

    .line 1012
    sget-object v0, Lo/setBackgroundResource;->onPostMessage:Lo/setBackgroundResource;

    invoke-static {}, Lo/setBackgroundResource;->onNavigationEvent()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1013
    const-class v1, Lclub/cred/interjection/data/db/CampaignDatabase;

    const-string v2, "CampaignDatabase"

    .line 1011
    invoke-static {v0, v1, v2}, Lo/registerMediaButtonEventReceiver;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 1015
    invoke-virtual {v0, v1}, Lo/setCurrentControllerInfo$onMessageChannelReady;->ICustomTabsCallback([Lo/MediaSessionCompat$MediaSessionImplApi18$1;)Lo/setCurrentControllerInfo$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/setCurrentControllerInfo$onMessageChannelReady;->extraCallback()Lo/setCurrentControllerInfo;

    move-result-object v0

    check-cast v0, Lclub/cred/interjection/data/db/CampaignDatabase;

    return-object v0
.end method
