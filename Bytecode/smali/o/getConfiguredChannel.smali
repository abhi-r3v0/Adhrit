.class public final Lo/getConfiguredChannel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getConfiguredChannel$extraCallback;,
        Lo/getConfiguredChannel$ICustomTabsCallback;,
        Lo/getConfiguredChannel$onMessageChannelReady;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:F

.field ICustomTabsCallback$Stub$Proxy:Z

.field ICustomTabsService:F

.field asBinder:I

.field asInterface:F

.field final extraCallback:[F

.field extraCommand:I

.field getInterfaceDescriptor:F

.field mayLaunchUrl:J

.field newSession:Z

.field onMessageChannelReady:I

.field final onNavigationEvent:[I

.field onPostMessage:I

.field onRelationshipValidationResult:I

.field onTransact:I

.field postMessage:Z

.field requestPostMessageChannel:J

.field updateVisuals:I

.field warmup:F


# direct methods
.method constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 55
    iput-object v1, p0, Lo/getConfiguredChannel;->extraCallback:[F

    new-array v0, v0, [I

    .line 56
    iput-object v0, p0, Lo/getConfiguredChannel;->onNavigationEvent:[I

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lo/getConfiguredChannel;->onPostMessage:I

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lo/getConfiguredChannel;->onMessageChannelReady:I

    const v2, 0x4cffffff    # 1.3421772E8f

    .line 61
    iput v2, p0, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    .line 62
    iput v0, p0, Lo/getConfiguredChannel;->onTransact:I

    .line 63
    iput v0, p0, Lo/getConfiguredChannel;->asBinder:I

    .line 64
    iput v0, p0, Lo/getConfiguredChannel;->onRelationshipValidationResult:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub:F

    .line 67
    iput v0, p0, Lo/getConfiguredChannel;->asInterface:F

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lo/getConfiguredChannel;->warmup:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 69
    iput v0, p0, Lo/getConfiguredChannel;->ICustomTabsService:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 70
    iput v0, p0, Lo/getConfiguredChannel;->getInterfaceDescriptor:F

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lo/getConfiguredChannel;->ICustomTabsCallback$Stub$Proxy:Z

    .line 73
    iput-boolean v0, p0, Lo/getConfiguredChannel;->newSession:Z

    .line 74
    iput-boolean v0, p0, Lo/getConfiguredChannel;->postMessage:Z

    .line 76
    iput v1, p0, Lo/getConfiguredChannel;->updateVisuals:I

    .line 77
    iput v0, p0, Lo/getConfiguredChannel;->extraCommand:I

    const-wide/16 v0, 0x3e8

    .line 78
    iput-wide v0, p0, Lo/getConfiguredChannel;->requestPostMessageChannel:J

    return-void
.end method
