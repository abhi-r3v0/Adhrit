.class final Lo/getScrapCount$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScrapCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/sessionFile;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/squareup/moshi/Moshi;",
        "kotlin.jvm.PlatformType",
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
.field public static final ICustomTabsCallback:Lo/getScrapCount$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getScrapCount$extraCallback;

    invoke-direct {v0}, Lo/getScrapCount$extraCallback;-><init>()V

    sput-object v0, Lo/getScrapCount$extraCallback;->ICustomTabsCallback:Lo/getScrapCount$extraCallback;

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
    .locals 2

    .line 1052
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 1053
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->extraCallback()Lo/bindViewToPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lo/bindViewToPosition;->onPostMessage(Lo/sessionFile$onPostMessage;)V

    .line 1247
    :cond_0
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    return-object v1
.end method
