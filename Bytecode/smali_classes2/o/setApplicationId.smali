.class final synthetic Lo/setApplicationId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getStorageBucket;


# static fields
.field static final ICustomTabsCallback:Lo/getStorageBucket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setApplicationId;

    invoke-direct {v0}, Lo/setApplicationId;-><init>()V

    sput-object v0, Lo/setApplicationId;->ICustomTabsCallback:Lo/getStorageBucket;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p1}, Lo/getGcmSenderId;->onMessageChannelReady(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    return-object p1
.end method
