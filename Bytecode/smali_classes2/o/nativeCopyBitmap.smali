.class final Lo/nativeCopyBitmap;
.super Ljava/lang/Object;


# static fields
.field private static final onMessageChannelReady:Lo/copyBitmap;

.field private static final onPostMessage:Lo/copyBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/nativeCopyBitmap;->onMessageChannelReady()Lo/copyBitmap;

    move-result-object v0

    sput-object v0, Lo/nativeCopyBitmap;->onPostMessage:Lo/copyBitmap;

    new-instance v0, Lo/DalvikPurgeableDecoder;

    invoke-direct {v0}, Lo/DalvikPurgeableDecoder;-><init>()V

    sput-object v0, Lo/nativeCopyBitmap;->onMessageChannelReady:Lo/copyBitmap;

    return-void
.end method

.method static extraCallback()Lo/copyBitmap;
    .locals 1

    sget-object v0, Lo/nativeCopyBitmap;->onPostMessage:Lo/copyBitmap;

    return-object v0
.end method

.method private static onMessageChannelReady()Lo/copyBitmap;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/copyBitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onPostMessage()Lo/copyBitmap;
    .locals 1

    sget-object v0, Lo/nativeCopyBitmap;->onMessageChannelReady:Lo/copyBitmap;

    return-object v0
.end method
