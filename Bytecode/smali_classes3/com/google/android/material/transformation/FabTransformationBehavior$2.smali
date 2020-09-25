.class final Lcom/google/android/material/transformation/FabTransformationBehavior$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transformation/FabTransformationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/unregisterEventNames;


# direct methods
.method constructor <init>(Lo/unregisterEventNames;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$2;->extraCallback:Lo/unregisterEventNames;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$2;->extraCallback:Lo/unregisterEventNames;

    invoke-interface {p1}, Lo/unregisterEventNames;->ICustomTabsCallback()Lo/unregisterEventNames$onMessageChannelReady;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 407
    iput v0, p1, Lo/unregisterEventNames$onMessageChannelReady;->onNavigationEvent:F

    .line 408
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$2;->extraCallback:Lo/unregisterEventNames;

    invoke-interface {v0, p1}, Lo/unregisterEventNames;->setRevealInfo(Lo/unregisterEventNames$onMessageChannelReady;)V

    return-void
.end method
