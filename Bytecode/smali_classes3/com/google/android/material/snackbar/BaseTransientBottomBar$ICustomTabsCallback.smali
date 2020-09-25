.class public final Lcom/google/android/material/snackbar/BaseTransientBottomBar$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field onNavigationEvent:Lo/FirebaseAuthMultiFactorException$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    .line 2386
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2140
    iput v1, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onNavigationEvent:F

    const v1, 0x3f19999a    # 0.6f

    .line 3386
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3149
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->asBinder:F

    const/4 v0, 0x0

    .line 4122
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onMessageChannelReady:I

    return-void
.end method
