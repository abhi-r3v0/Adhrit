.class public final Lo/signInWithEmailLink$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/signInWithEmailLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/animation/ValueAnimator;

.field public final extraCallback:[I


# direct methods
.method public constructor <init>([ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lo/signInWithEmailLink$onNavigationEvent;->extraCallback:[I

    .line 122
    iput-object p2, p0, Lo/signInWithEmailLink$onNavigationEvent;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    return-void
.end method
