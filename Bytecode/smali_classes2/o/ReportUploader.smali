.class final Lo/ReportUploader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/getDefaultDefault;

.field private static final onNavigationEvent:Lo/getDefaultDefault;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lo/ReportUploader;->ICustomTabsCallback()Lo/getDefaultDefault;

    move-result-object v0

    sput-object v0, Lo/ReportUploader;->ICustomTabsCallback:Lo/getDefaultDefault;

    .line 35
    new-instance v0, Lo/findReports;

    invoke-direct {v0}, Lo/findReports;-><init>()V

    sput-object v0, Lo/ReportUploader;->onNavigationEvent:Lo/getDefaultDefault;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback()Lo/getDefaultDefault;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 47
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getDefaultDefault;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onMessageChannelReady()Lo/getDefaultDefault;
    .locals 1

    .line 42
    sget-object v0, Lo/ReportUploader;->onNavigationEvent:Lo/getDefaultDefault;

    return-object v0
.end method

.method static onNavigationEvent()Lo/getDefaultDefault;
    .locals 1

    .line 38
    sget-object v0, Lo/ReportUploader;->ICustomTabsCallback:Lo/getDefaultDefault;

    return-object v0
.end method
