.class final Lo/toCircle;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Lo/nativeTranscodeJpegWithExifOrientation;

.field private static final onNavigationEvent:Lo/nativeTranscodeJpegWithExifOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/toCircle;->extraCallback()Lo/nativeTranscodeJpegWithExifOrientation;

    move-result-object v0

    sput-object v0, Lo/toCircle;->onNavigationEvent:Lo/nativeTranscodeJpegWithExifOrientation;

    new-instance v0, Lo/createImageTranscoder;

    invoke-direct {v0}, Lo/createImageTranscoder;-><init>()V

    sput-object v0, Lo/toCircle;->ICustomTabsCallback:Lo/nativeTranscodeJpegWithExifOrientation;

    return-void
.end method

.method private static extraCallback()Lo/nativeTranscodeJpegWithExifOrientation;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nativeTranscodeJpegWithExifOrientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static onNavigationEvent()Lo/nativeTranscodeJpegWithExifOrientation;
    .locals 1

    sget-object v0, Lo/toCircle;->onNavigationEvent:Lo/nativeTranscodeJpegWithExifOrientation;

    return-object v0
.end method

.method static onPostMessage()Lo/nativeTranscodeJpegWithExifOrientation;
    .locals 1

    sget-object v0, Lo/toCircle;->ICustomTabsCallback:Lo/nativeTranscodeJpegWithExifOrientation;

    return-object v0
.end method
