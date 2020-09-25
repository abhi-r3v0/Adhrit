.class final Lo/setScrimColor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final ICustomTabsCallback:Landroid/graphics/RectF;

.field ICustomTabsCallback$Stub:F

.field ICustomTabsService:F

.field asBinder:F

.field asInterface:F

.field extraCallback:F

.field newSession:F

.field final onMessageChannelReady:Landroid/graphics/RectF;

.field onNavigationEvent:F

.field onPostMessage:F

.field onRelationshipValidationResult:F

.field onTransact:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    iput v0, p0, Lo/setScrimColor;->newSession:F

    .line 76
    iput v0, p0, Lo/setScrimColor;->ICustomTabsService:F

    return-void
.end method
