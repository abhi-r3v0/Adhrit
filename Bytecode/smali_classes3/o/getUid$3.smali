.class final Lo/getUid$3;
.super Lo/reportActiveExperiment;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getUid;->onNavigationEvent(Lo/getExperimentsToRemove;FFF)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getUid;


# direct methods
.method constructor <init>(Lo/getUid;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lo/getUid$3;->onPostMessage:Lo/getUid;

    invoke-direct {p0}, Lo/reportActiveExperiment;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    .line 590
    iget-object v0, p0, Lo/getUid$3;->onPostMessage:Lo/getUid;

    .line 1066
    iput p1, v0, Lo/getUid;->extraCommand:F

    .line 591
    invoke-super {p0, p1, p2, p3}, Lo/reportActiveExperiment;->ICustomTabsCallback(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 584
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    .line 1590
    iget-object v0, p0, Lo/getUid$3;->onPostMessage:Lo/getUid;

    .line 2066
    iput p1, v0, Lo/getUid;->extraCommand:F

    .line 1591
    invoke-super {p0, p1, p2, p3}, Lo/reportActiveExperiment;->ICustomTabsCallback(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
