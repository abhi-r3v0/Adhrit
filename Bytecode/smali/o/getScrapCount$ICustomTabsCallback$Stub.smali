.class final Lo/getScrapCount$ICustomTabsCallback$Stub;
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
        "Lo/propertyName;",
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
        "Lokhttp3/OkHttpClient;",
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
.field public static final onPostMessage:Lo/getScrapCount$ICustomTabsCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getScrapCount$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/getScrapCount$ICustomTabsCallback$Stub;-><init>()V

    sput-object v0, Lo/getScrapCount$ICustomTabsCallback$Stub;->onPostMessage:Lo/getScrapCount$ICustomTabsCallback$Stub;

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
    .locals 5

    .line 2035
    new-instance v0, Lo/propertyName$onPostMessage;

    invoke-direct {v0}, Lo/propertyName$onPostMessage;-><init>()V

    .line 2036
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v2, "timeout"

    const-wide/16 v3, 0x1e

    .line 2596
    invoke-static {v2, v3, v4, v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lo/propertyName$onPostMessage;->notify:I

    .line 2037
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {v1}, Lo/getScrapCount;->extraCallback(Lo/getScrapCount;)Lo/deserializeToClass;

    move-result-object v1

    .line 2726
    iput-object v1, v0, Lo/propertyName$onPostMessage;->asInterface:Lo/deserializeToClass;

    const/4 v1, 0x0

    .line 2727
    iput-object v1, v0, Lo/propertyName$onPostMessage;->getInterfaceDescriptor:Lo/changeComparator;

    .line 2038
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->extraCallback()Lo/bindViewToPosition;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lo/bindViewToPosition;->onMessageChannelReady(Lo/propertyName$onPostMessage;Landroid/content/Context;)V

    .line 2039
    :cond_0
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2040
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {v1}, Lo/getScrapCount;->onPostMessage(Lo/getScrapCount;)Lo/expectMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2830
    iput-object v1, v0, Lo/propertyName$onPostMessage;->mayLaunchUrl:Lo/expectMap;

    goto :goto_0

    .line 2829
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3040
    :cond_2
    :goto_0
    new-instance v1, Lo/propertyName;

    invoke-direct {v1, v0}, Lo/propertyName;-><init>(Lo/propertyName$onPostMessage;)V

    return-object v1
.end method
