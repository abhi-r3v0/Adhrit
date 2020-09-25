.class final Lo/getScrapCount$onNavigationEvent;
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
        "Lo/expectMap;",
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
        "Lokhttp3/CertificatePinner;",
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
.field public static final onPostMessage:Lo/getScrapCount$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getScrapCount$onNavigationEvent;

    invoke-direct {v0}, Lo/getScrapCount$onNavigationEvent;-><init>()V

    sput-object v0, Lo/getScrapCount$onNavigationEvent;->onPostMessage:Lo/getScrapCount$onNavigationEvent;

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
    .locals 8

    .line 1025
    new-instance v0, Lo/expectMap$extraCallback;

    invoke-direct {v0}, Lo/expectMap$extraCallback;-><init>()V

    const-string/jumbo v1, "sha256/qmAALt8JOtHn5NTLjyIdIHszhD+lur8PxYOuSZ4yUrs="

    .line 1026
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gtz v3, :cond_0

    .line 1333
    aget-object v4, v1, v2

    .line 1334
    iget-object v5, v0, Lo/expectMap$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    new-instance v6, Lo/expectMap$onPostMessage;

    const-string v7, "*.dreamplug.in"

    invoke-direct {v6, v7, v4}, Lo/expectMap$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1341
    :cond_0
    new-instance v1, Lo/expectMap;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v0, v0, Lo/expectMap$extraCallback;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lo/expectMap;-><init>(Ljava/util/Set;Lo/trackChildChange;)V

    return-object v1
.end method
