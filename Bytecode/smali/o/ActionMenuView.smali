.class public Lo/ActionMenuView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/createCheckBox;

.field public ICustomTabsCallback$Stub:F

.field public ICustomTabsCallback$Stub$Proxy:Landroid/graphics/PointF;

.field private ICustomTabsService:F

.field public asBinder:I

.field public asInterface:F

.field public final extraCallback:Landroid/view/animation/Interpolator;

.field private getInterfaceDescriptor:F

.field public newSession:Landroid/graphics/PointF;

.field public final onMessageChannelReady:F

.field public onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:I

.field public onTransact:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 21
    iput v0, p0, Lo/ActionMenuView;->asInterface:F

    .line 22
    iput v0, p0, Lo/ActionMenuView;->ICustomTabsCallback$Stub:F

    const v0, 0x2ec8fb09

    .line 24
    iput v0, p0, Lo/ActionMenuView;->onRelationshipValidationResult:I

    .line 25
    iput v0, p0, Lo/ActionMenuView;->asBinder:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lo/ActionMenuView;->getInterfaceDescriptor:F

    .line 28
    iput v0, p0, Lo/ActionMenuView;->ICustomTabsService:F

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lo/ActionMenuView;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/PointF;

    .line 33
    iput-object v1, p0, Lo/ActionMenuView;->newSession:Landroid/graphics/PointF;

    .line 51
    iput-object v1, p0, Lo/ActionMenuView;->ICustomTabsCallback:Lo/createCheckBox;

    .line 52
    iput-object p1, p0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    .line 54
    iput-object v1, p0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    .line 55
    iput v0, p0, Lo/ActionMenuView;->onMessageChannelReady:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lo/ActionMenuView;->onTransact:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/createCheckBox;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 21
    iput v0, p0, Lo/ActionMenuView;->asInterface:F

    .line 22
    iput v0, p0, Lo/ActionMenuView;->ICustomTabsCallback$Stub:F

    const v0, 0x2ec8fb09

    .line 24
    iput v0, p0, Lo/ActionMenuView;->onRelationshipValidationResult:I

    .line 25
    iput v0, p0, Lo/ActionMenuView;->asBinder:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lo/ActionMenuView;->getInterfaceDescriptor:F

    .line 28
    iput v0, p0, Lo/ActionMenuView;->ICustomTabsService:F

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lo/ActionMenuView;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/PointF;

    .line 33
    iput-object v0, p0, Lo/ActionMenuView;->newSession:Landroid/graphics/PointF;

    .line 39
    iput-object p1, p0, Lo/ActionMenuView;->ICustomTabsCallback:Lo/createCheckBox;

    .line 40
    iput-object p2, p0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    .line 41
    iput-object p3, p0, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    .line 42
    iput-object p4, p0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    .line 43
    iput p5, p0, Lo/ActionMenuView;->onMessageChannelReady:F

    .line 44
    iput-object p6, p0, Lo/ActionMenuView;->onTransact:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final extraCallback()F
    .locals 3

    .line 60
    iget-object v0, p0, Lo/ActionMenuView;->ICustomTabsCallback:Lo/createCheckBox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    iget v1, p0, Lo/ActionMenuView;->getInterfaceDescriptor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 64
    iget v1, p0, Lo/ActionMenuView;->onMessageChannelReady:F

    .line 1146
    iget v0, v0, Lo/createCheckBox;->newSession:F

    sub-float/2addr v1, v0

    .line 64
    iget-object v0, p0, Lo/ActionMenuView;->ICustomTabsCallback:Lo/createCheckBox;

    .line 1201
    iget v2, v0, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v0, v0, Lo/createCheckBox;->newSession:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 64
    iput v1, p0, Lo/ActionMenuView;->getInterfaceDescriptor:F

    .line 66
    :cond_1
    iget v0, p0, Lo/ActionMenuView;->getInterfaceDescriptor:F

    return v0
.end method

.method public final onPostMessage()F
    .locals 4

    .line 70
    iget-object v0, p0, Lo/ActionMenuView;->ICustomTabsCallback:Lo/createCheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    iget v0, p0, Lo/ActionMenuView;->ICustomTabsService:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lo/ActionMenuView;->onTransact:Ljava/lang/Float;

    if-nez v0, :cond_1

    .line 75
    iput v1, p0, Lo/ActionMenuView;->ICustomTabsService:F

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lo/ActionMenuView;->extraCallback()F

    move-result v0

    .line 78
    iget-object v1, p0, Lo/ActionMenuView;->onTransact:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v2, p0, Lo/ActionMenuView;->onMessageChannelReady:F

    sub-float/2addr v1, v2

    .line 79
    iget-object v2, p0, Lo/ActionMenuView;->ICustomTabsCallback:Lo/createCheckBox;

    .line 2201
    iget v3, v2, Lo/createCheckBox;->getInterfaceDescriptor:F

    iget v2, v2, Lo/createCheckBox;->newSession:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    .line 80
    iput v0, p0, Lo/ActionMenuView;->ICustomTabsService:F

    .line 83
    :cond_2
    :goto_0
    iget v0, p0, Lo/ActionMenuView;->ICustomTabsService:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyframe{startValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/ActionMenuView;->onMessageChannelReady:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ActionMenuView;->onTransact:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ActionMenuView;->extraCallback:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
