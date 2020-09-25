.class final Lo/writeSessionEventLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/getSessionAppSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/getSessionAppSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lo/writeThread;

    invoke-direct {v0}, Lo/writeThread;-><init>()V

    sput-object v0, Lo/writeSessionEventLog;->extraCallback:Lo/getSessionAppSize;

    .line 35
    invoke-static {}, Lo/writeSessionEventLog;->ICustomTabsCallback()Lo/getSessionAppSize;

    move-result-object v0

    sput-object v0, Lo/writeSessionEventLog;->onMessageChannelReady:Lo/getSessionAppSize;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback()Lo/getSessionAppSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 39
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getSessionAppSize;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onMessageChannelReady()Lo/getSessionAppSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lo/writeSessionEventLog;->extraCallback:Lo/getSessionAppSize;

    return-object v0
.end method

.method static onPostMessage()Lo/getSessionAppSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getSessionAppSize<",
            "*>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lo/writeSessionEventLog;->onMessageChannelReady:Lo/getSessionAppSize;

    if-eqz v0, :cond_0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
