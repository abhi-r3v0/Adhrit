.class public final Lo/AFDeepLinkManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final asBinder:Lo/AFDeepLinkManager;


# instance fields
.field public final ICustomTabsCallback:Z

.field public final ICustomTabsCallback$Stub:Lo/onPostMessage$extraCallback;

.field private ICustomTabsService:I

.field public final asInterface:Lo/isEncrypt;

.field public final extraCallback:Z

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Z

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

.field public final onTransact:Landroid/graphics/ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5096
    new-instance v0, Lo/logVerbose;

    invoke-direct {v0}, Lo/logVerbose;-><init>()V

    .line 5264
    new-instance v1, Lo/AFDeepLinkManager;

    invoke-direct {v1, v0}, Lo/AFDeepLinkManager;-><init>(Lo/logVerbose;)V

    .line 22
    sput-object v1, Lo/AFDeepLinkManager;->asBinder:Lo/AFDeepLinkManager;

    return-void
.end method

.method private constructor <init>(Lo/logVerbose;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iget v0, p1, Lo/logVerbose;->ICustomTabsCallback:I

    .line 69
    iput v0, p0, Lo/AFDeepLinkManager;->onPostMessage:I

    .line 1093
    iget v0, p1, Lo/logVerbose;->extraCallback:I

    .line 70
    iput v0, p0, Lo/AFDeepLinkManager;->ICustomTabsService:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lo/AFDeepLinkManager;->ICustomTabsCallback:Z

    .line 72
    iput-boolean v0, p0, Lo/AFDeepLinkManager;->onMessageChannelReady:Z

    .line 73
    iput-boolean v0, p0, Lo/AFDeepLinkManager;->onNavigationEvent:Z

    .line 74
    iput-boolean v0, p0, Lo/AFDeepLinkManager;->extraCallback:Z

    .line 1208
    iget-object p1, p1, Lo/logVerbose;->onMessageChannelReady:Landroid/graphics/Bitmap$Config;

    .line 75
    iput-object p1, p0, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lo/AFDeepLinkManager;->asInterface:Lo/isEncrypt;

    .line 77
    iput-object p1, p0, Lo/AFDeepLinkManager;->ICustomTabsCallback$Stub:Lo/onPostMessage$extraCallback;

    .line 78
    iput-object p1, p0, Lo/AFDeepLinkManager;->onTransact:Landroid/graphics/ColorSpace;

    return-void
.end method

.method public static onMessageChannelReady()Lo/AFDeepLinkManager;
    .locals 1

    .line 87
    sget-object v0, Lo/AFDeepLinkManager;->asBinder:Lo/AFDeepLinkManager;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Lo/AFDeepLinkManager;

    .line 106
    iget v2, p0, Lo/AFDeepLinkManager;->onPostMessage:I

    iget v3, p1, Lo/AFDeepLinkManager;->onPostMessage:I

    if-eq v2, v3, :cond_2

    return v1

    .line 107
    :cond_2
    iget v2, p0, Lo/AFDeepLinkManager;->ICustomTabsService:I

    iget v3, p1, Lo/AFDeepLinkManager;->ICustomTabsService:I

    if-eq v2, v3, :cond_3

    return v1

    .line 112
    :cond_3
    iget-object v2, p0, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 121
    iget v0, p0, Lo/AFDeepLinkManager;->onPostMessage:I

    mul-int/lit8 v0, v0, 0x1f

    .line 122
    iget v1, p0, Lo/AFDeepLinkManager;->ICustomTabsService:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-object v1, p0, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageDecodeOptions{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4119
    new-instance v1, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 3140
    iget v2, p0, Lo/AFDeepLinkManager;->onPostMessage:I

    const-string v4, "minDecodeIntervalMs"

    .line 3141
    invoke-virtual {v1, v4, v2}, Lo/setPivotY$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;I)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    iget v2, p0, Lo/AFDeepLinkManager;->ICustomTabsService:I

    const-string v4, "maxDimensionPx"

    .line 3142
    invoke-virtual {v1, v4, v2}, Lo/setPivotY$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;I)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const-string v2, "decodePreviewFrame"

    .line 3143
    invoke-virtual {v1, v2, v3}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const-string/jumbo v2, "useLastFrameForPreview"

    .line 3144
    invoke-virtual {v1, v2, v3}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const-string v2, "decodeAllFrames"

    .line 3145
    invoke-virtual {v1, v2, v3}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const-string v2, "forceStaticImage"

    .line 3146
    invoke-virtual {v1, v2, v3}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    iget-object v2, p0, Lo/AFDeepLinkManager;->onRelationshipValidationResult:Landroid/graphics/Bitmap$Config;

    .line 3147
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitmapConfigName"

    invoke-virtual {v1, v3, v2}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "customImageDecoder"

    .line 3148
    invoke-virtual {v1, v3, v2}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const-string v3, "bitmapTransformation"

    .line 3149
    invoke-virtual {v1, v3, v2}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    const-string v3, "colorSpace"

    .line 3150
    invoke-virtual {v1, v3, v2}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
