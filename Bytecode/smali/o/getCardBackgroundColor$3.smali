.class final Lo/getCardBackgroundColor$3;
.super Lo/recalculatePositionOfItemAt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCardBackgroundColor;->onMessageChannelReady(Landroid/view/View;Lo/getContentPaddingRight;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getContentPaddingRight;


# direct methods
.method constructor <init>(Lo/getContentPaddingRight;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/getCardBackgroundColor$3;->onPostMessage:Lo/getContentPaddingRight;

    invoke-direct {p0}, Lo/recalculatePositionOfItemAt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lo/getCardBackgroundColor$3;->onPostMessage:Lo/getContentPaddingRight;

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Lo/getContentPaddingRight;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lo/getCardBackgroundColor$3;->onPostMessage:Lo/getContentPaddingRight;

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lo/getContentPaddingRight;->extraCallback()V

    :cond_0
    return-void
.end method
