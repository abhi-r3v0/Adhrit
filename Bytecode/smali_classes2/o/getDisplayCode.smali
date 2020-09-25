.class final Lo/getDisplayCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Lo/setVariant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVariant<",
            "*>;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/setVariant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVariant<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/getVariant;

    invoke-direct {v0}, Lo/getVariant;-><init>()V

    sput-object v0, Lo/getDisplayCode;->onMessageChannelReady:Lo/setVariant;

    .line 10
    invoke-static {}, Lo/getDisplayCode;->ICustomTabsCallback()Lo/setVariant;

    move-result-object v0

    sput-object v0, Lo/getDisplayCode;->extraCallback:Lo/setVariant;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/setVariant;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setVariant<",
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

    check-cast v0, Lo/setVariant;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onMessageChannelReady()Lo/setVariant;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setVariant<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lo/getDisplayCode;->onMessageChannelReady:Lo/setVariant;

    return-object v0
.end method

.method static onPostMessage()Lo/setVariant;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setVariant<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lo/getDisplayCode;->extraCallback:Lo/setVariant;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
