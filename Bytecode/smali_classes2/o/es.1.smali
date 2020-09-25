.class final Lo/es;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/eq;

.field private static final onPostMessage:Lo/eq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lo/es;->ICustomTabsCallback()Lo/eq;

    move-result-object v0

    sput-object v0, Lo/es;->ICustomTabsCallback:Lo/eq;

    .line 8
    new-instance v0, Lo/setStartTime;

    invoke-direct {v0}, Lo/setStartTime;-><init>()V

    sput-object v0, Lo/es;->onPostMessage:Lo/eq;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/eq;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/eq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onNavigationEvent()Lo/eq;
    .locals 1

    .line 2
    sget-object v0, Lo/es;->onPostMessage:Lo/eq;

    return-object v0
.end method

.method static onPostMessage()Lo/eq;
    .locals 1

    .line 1
    sget-object v0, Lo/es;->ICustomTabsCallback:Lo/eq;

    return-object v0
.end method
