.class final Lo/setOverlayMode$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setOverlayMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/setOverlayMode;


# direct methods
.method constructor <init>(Lo/setOverlayMode;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lo/setOverlayMode$4;->onMessageChannelReady:Lo/setOverlayMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 155
    iget-object v0, p0, Lo/setOverlayMode$4;->onMessageChannelReady:Lo/setOverlayMode;

    .line 1030
    iget-object v1, v0, Lo/setOverlayMode;->ICustomTabsCallback:Lo/isOverflowMenuShowing;

    .line 155
    invoke-virtual {v1}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2511
    :goto_0
    iget-boolean v2, v0, Lo/setOverlayMode;->onTransact:Z

    if-eq v1, v2, :cond_1

    .line 2512
    iput-boolean v1, v0, Lo/setOverlayMode;->onTransact:Z

    .line 3166
    iget-object v0, v0, Lo/setOverlayMode;->onMessageChannelReady:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method
