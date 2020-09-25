.class public final Lo/Properties;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/Properties$$Parcelable;

.field public static final extraCallback:Ljava/util/concurrent/Executor;

.field private static final onMessageChannelReady:Lo/Properties$$Parcelable;

.field public static final onNavigationEvent:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getFooter;

    invoke-direct {v0}, Lo/getFooter;-><init>()V

    sput-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v0, Lo/PropertiesJsonAdapter;

    invoke-direct {v0}, Lo/PropertiesJsonAdapter;-><init>()V

    sput-object v0, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lo/Properties;->extraCallback(Ljava/util/concurrent/Executor;)Lo/Properties$$Parcelable;

    move-result-object v0

    sput-object v0, Lo/Properties;->onMessageChannelReady:Lo/Properties$$Parcelable;

    sget-object v0, Lo/Properties;->onNavigationEvent:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lo/Properties;->extraCallback(Ljava/util/concurrent/Executor;)Lo/Properties$$Parcelable;

    move-result-object v0

    sput-object v0, Lo/Properties;->ICustomTabsCallback:Lo/Properties$$Parcelable;

    return-void
.end method

.method public static extraCallback(Ljava/util/concurrent/Executor;)Lo/Properties$$Parcelable;
    .locals 2

    new-instance v0, Lo/SubProviderJsonAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/SubProviderJsonAdapter;-><init>(Ljava/util/concurrent/Executor;Lo/getFooter;)V

    return-object v0
.end method
