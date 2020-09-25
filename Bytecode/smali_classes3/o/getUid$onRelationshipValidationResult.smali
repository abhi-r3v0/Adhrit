.class abstract Lo/getUid$onRelationshipValidationResult;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getUid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field private ICustomTabsCallback:F

.field private synthetic onMessageChannelReady:Lo/getUid;

.field private onNavigationEvent:F

.field private onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/getUid;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lo/getUid$onRelationshipValidationResult;->onMessageChannelReady:Lo/getUid;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getUid;B)V
    .locals 0

    .line 778
    invoke-direct {p0, p1}, Lo/getUid$onRelationshipValidationResult;-><init>(Lo/getUid;)V

    return-void
.end method


# virtual methods
.method protected abstract extraCallback()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 801
    iget-object p1, p0, Lo/getUid$onRelationshipValidationResult;->onMessageChannelReady:Lo/getUid;

    iget v0, p0, Lo/getUid$onRelationshipValidationResult;->ICustomTabsCallback:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lo/getUid;->onPostMessage(F)V

    const/4 p1, 0x0

    .line 802
    iput-boolean p1, p0, Lo/getUid$onRelationshipValidationResult;->onPostMessage:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 787
    iget-boolean v0, p0, Lo/getUid$onRelationshipValidationResult;->onPostMessage:Z

    if-nez v0, :cond_1

    .line 788
    iget-object v0, p0, Lo/getUid$onRelationshipValidationResult;->onMessageChannelReady:Lo/getUid;

    iget-object v0, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/getUid$onRelationshipValidationResult;->onMessageChannelReady:Lo/getUid;

    iget-object v0, v0, Lo/getUid;->extraCallback:Lo/setFirebaseUIVersion;

    .line 1642
    iget-object v0, v0, Lo/setFirebaseUIVersion;->getDefaultImpl:Lo/setFirebaseUIVersion$extraCallback;

    iget v0, v0, Lo/setFirebaseUIVersion$extraCallback;->getInterfaceDescriptor:F

    .line 788
    :goto_0
    iput v0, p0, Lo/getUid$onRelationshipValidationResult;->onNavigationEvent:F

    .line 789
    invoke-virtual {p0}, Lo/getUid$onRelationshipValidationResult;->extraCallback()F

    move-result v0

    iput v0, p0, Lo/getUid$onRelationshipValidationResult;->ICustomTabsCallback:F

    const/4 v0, 0x1

    .line 790
    iput-boolean v0, p0, Lo/getUid$onRelationshipValidationResult;->onPostMessage:Z

    .line 793
    :cond_1
    iget-object v0, p0, Lo/getUid$onRelationshipValidationResult;->onMessageChannelReady:Lo/getUid;

    iget v1, p0, Lo/getUid$onRelationshipValidationResult;->onNavigationEvent:F

    iget v2, p0, Lo/getUid$onRelationshipValidationResult;->ICustomTabsCallback:F

    sub-float/2addr v2, v1

    .line 796
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    int-to-float p1, p1

    .line 793
    invoke-virtual {v0, p1}, Lo/getUid;->onPostMessage(F)V

    return-void
.end method
