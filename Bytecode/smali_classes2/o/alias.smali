.class final Lo/alias;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/access$802;

.field private static final onNavigationEvent:Lo/access$802;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lo/alias;->onNavigationEvent()Lo/access$802;

    move-result-object v0

    sput-object v0, Lo/alias;->onNavigationEvent:Lo/access$802;

    .line 8
    new-instance v0, Lo/channelId;

    invoke-direct {v0}, Lo/channelId;-><init>()V

    sput-object v0, Lo/alias;->ICustomTabsCallback:Lo/access$802;

    return-void
.end method

.method static ICustomTabsCallback()Lo/access$802;
    .locals 1

    .line 2
    sget-object v0, Lo/alias;->ICustomTabsCallback:Lo/access$802;

    return-object v0
.end method

.method private static onNavigationEvent()Lo/access$802;
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

    check-cast v0, Lo/access$802;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onPostMessage()Lo/access$802;
    .locals 1

    .line 1
    sget-object v0, Lo/alias;->onNavigationEvent:Lo/access$802;

    return-object v0
.end method
