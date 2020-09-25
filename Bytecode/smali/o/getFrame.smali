.class public final Lo/getFrame;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/setProgress;

.field public static final ICustomTabsCallback$Stub:Lo/setProgress;

.field public static final ICustomTabsCallback$Stub$Proxy:Lo/setProgress;

.field public static final asBinder:Lo/setProgress;

.field public static final asInterface:Lo/setProgress;

.field public static final extraCallback:Lo/setProgress;

.field public static final newSession:Lo/setProgress;

.field public static final onMessageChannelReady:Lo/setProgress;

.field public static final onNavigationEvent:Lo/setProgress;

.field public static final onPostMessage:Lo/setProgress;

.field public static final onRelationshipValidationResult:Lo/setProgress;

.field public static final onTransact:Lo/setProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lo/setProgress;

    const-string v1, "JPEG"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    .line 18
    new-instance v0, Lo/setProgress;

    const-string v1, "PNG"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->onMessageChannelReady:Lo/setProgress;

    .line 19
    new-instance v0, Lo/setProgress;

    const-string v1, "GIF"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->onPostMessage:Lo/setProgress;

    .line 20
    new-instance v0, Lo/setProgress;

    const-string v1, "BMP"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->extraCallback:Lo/setProgress;

    .line 21
    new-instance v0, Lo/setProgress;

    const-string v1, "ICO"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->onNavigationEvent:Lo/setProgress;

    .line 22
    new-instance v0, Lo/setProgress;

    const-string v1, "WEBP_SIMPLE"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->asInterface:Lo/setProgress;

    .line 23
    new-instance v0, Lo/setProgress;

    const-string v1, "WEBP_LOSSLESS"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->onRelationshipValidationResult:Lo/setProgress;

    .line 24
    new-instance v0, Lo/setProgress;

    const-string v1, "WEBP_EXTENDED"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->ICustomTabsCallback$Stub:Lo/setProgress;

    .line 25
    new-instance v0, Lo/setProgress;

    const-string v1, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->asBinder:Lo/setProgress;

    .line 27
    new-instance v0, Lo/setProgress;

    const-string v1, "WEBP_ANIMATED"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->onTransact:Lo/setProgress;

    .line 28
    new-instance v0, Lo/setProgress;

    const-string v1, "HEIF"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->ICustomTabsCallback$Stub$Proxy:Lo/setProgress;

    .line 29
    new-instance v0, Lo/setProgress;

    const-string v1, "DNG"

    invoke-direct {v0, v1}, Lo/setProgress;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getFrame;->newSession:Lo/setProgress;

    return-void
.end method

.method public static extraCallback(Lo/setProgress;)Z
    .locals 1

    .line 50
    sget-object v0, Lo/getFrame;->asInterface:Lo/setProgress;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/getFrame;->onRelationshipValidationResult:Lo/setProgress;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/getFrame;->ICustomTabsCallback$Stub:Lo/setProgress;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/getFrame;->asBinder:Lo/setProgress;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static onPostMessage(Lo/setProgress;)Z
    .locals 3

    .line 1050
    sget-object v0, Lo/getFrame;->asInterface:Lo/setProgress;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/getFrame;->onRelationshipValidationResult:Lo/setProgress;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/getFrame;->ICustomTabsCallback$Stub:Lo/setProgress;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo/getFrame;->asBinder:Lo/setProgress;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 40
    sget-object v0, Lo/getFrame;->onTransact:Lo/setProgress;

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method
