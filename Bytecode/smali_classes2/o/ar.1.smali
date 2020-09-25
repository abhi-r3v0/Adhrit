.class final Lo/ar;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gg<",
            "*>;"
        }
    .end annotation
.end field

.field private static final extraCallback:Lo/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gg<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/ao;

    invoke-direct {v0}, Lo/ao;-><init>()V

    sput-object v0, Lo/ar;->ICustomTabsCallback:Lo/gg;

    .line 10
    invoke-static {}, Lo/ar;->onMessageChannelReady()Lo/gg;

    move-result-object v0

    sput-object v0, Lo/ar;->extraCallback:Lo/gg;

    return-void
.end method

.method static ICustomTabsCallback()Lo/gg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/gg<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lo/ar;->extraCallback:Lo/gg;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static onMessageChannelReady()Lo/gg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/gg<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onPostMessage()Lo/gg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/gg<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lo/ar;->ICustomTabsCallback:Lo/gg;

    return-object v0
.end method
