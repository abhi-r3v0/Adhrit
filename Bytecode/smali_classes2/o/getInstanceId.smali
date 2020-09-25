.class abstract Lo/getInstanceId;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/getInstanceId;

.field private static final extraCallback:Lo/getInstanceId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lo/getApiKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getApiKey;-><init>(Lo/doBestEffortWrite;)V

    sput-object v0, Lo/getInstanceId;->extraCallback:Lo/getInstanceId;

    .line 6
    new-instance v0, Lo/getApi;

    invoke-direct {v0, v1}, Lo/getApi;-><init>(Lo/doBestEffortWrite;)V

    sput-object v0, Lo/getInstanceId;->ICustomTabsCallback:Lo/getInstanceId;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/doBestEffortWrite;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/getInstanceId;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/getInstanceId;
    .locals 1

    .line 3
    sget-object v0, Lo/getInstanceId;->ICustomTabsCallback:Lo/getInstanceId;

    return-object v0
.end method

.method static onMessageChannelReady()Lo/getInstanceId;
    .locals 1

    .line 2
    sget-object v0, Lo/getInstanceId;->extraCallback:Lo/getInstanceId;

    return-object v0
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;J)V
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method
