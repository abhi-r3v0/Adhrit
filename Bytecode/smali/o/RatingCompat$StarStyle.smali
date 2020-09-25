.class public final Lo/RatingCompat$StarStyle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RatingCompat$StarStyle$onMessageChannelReady;,
        Lo/RatingCompat$StarStyle$onPostMessage;,
        Lo/RatingCompat$StarStyle$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 2481
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v0

    .line 2489
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2012
    invoke-virtual {p1}, Lo/ActivityChooserView;->getInterfaceDescriptor()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3288
    iget p1, p1, Lo/ActivityChooserView;->asInterface:I

    add-int/lit8 p1, p1, 0x1

    .line 1014
    div-int/2addr v0, p1

    .line 1017
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ViewDataBinding$4;

    .line 4015
    iget-object v1, v1, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    add-int/2addr p2, v0

    .line 1022
    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1023
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    return-void
.end method
