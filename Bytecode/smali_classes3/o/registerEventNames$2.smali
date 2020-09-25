.class public final Lo/registerEventNames$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/registerEventNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/unregisterEventNames;


# direct methods
.method public constructor <init>(Lo/unregisterEventNames;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/registerEventNames$2;->onNavigationEvent:Lo/unregisterEventNames;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 131
    iget-object p1, p0, Lo/registerEventNames$2;->onNavigationEvent:Lo/unregisterEventNames;

    invoke-interface {p1}, Lo/unregisterEventNames;->onNavigationEvent()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lo/registerEventNames$2;->onNavigationEvent:Lo/unregisterEventNames;

    invoke-interface {p1}, Lo/unregisterEventNames;->onPostMessage()V

    return-void
.end method
