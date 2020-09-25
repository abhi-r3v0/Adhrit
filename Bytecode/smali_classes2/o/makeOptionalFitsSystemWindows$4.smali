.class final Lo/makeOptionalFitsSystemWindows$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackStateCompat$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/makeOptionalFitsSystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/makeOptionalFitsSystemWindows;


# direct methods
.method constructor <init>(Lo/makeOptionalFitsSystemWindows;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v1}, Lo/makeOptionalFitsSystemWindows;->onTransact(Lo/makeOptionalFitsSystemWindows;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 177
    iget-object v2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v2}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lo/makeOptionalFitsSystemWindows;->extraCallback(Landroid/widget/ImageView;I)V

    .line 178
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lo/getHint;

    .line 179
    iget-object v2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v2}, Lo/makeOptionalFitsSystemWindows;->asInterface(Lo/makeOptionalFitsSystemWindows;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0, p1}, Lo/makeOptionalFitsSystemWindows;->onPostMessage(Lo/makeOptionalFitsSystemWindows;I)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->onTransact(Lo/makeOptionalFitsSystemWindows;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    iget-object v2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v2}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F

    move-result v2

    iget-object v3, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v3}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F

    move-result v3

    iget-object v4, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v4}, Lo/makeOptionalFitsSystemWindows;->onRelationshipValidationResult(Lo/makeOptionalFitsSystemWindows;)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float v3, v3, v4

    sub-float v4, v1, p2

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 185
    iget-object v3, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v3}, Lo/makeOptionalFitsSystemWindows;->getInterfaceDescriptor(Lo/makeOptionalFitsSystemWindows;)Landroid/animation/ArgbEvaluator;

    move-result-object v3

    iget-object v4, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v4}, Lo/makeOptionalFitsSystemWindows;->newSession(Lo/makeOptionalFitsSystemWindows;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v5}, Lo/makeOptionalFitsSystemWindows;->asInterface(Lo/makeOptionalFitsSystemWindows;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p2, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lo/getHint;

    .line 187
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    invoke-static {v0, v2}, Lo/makeOptionalFitsSystemWindows;->extraCallback(Landroid/widget/ImageView;I)V

    .line 191
    :cond_1
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lo/makeOptionalFitsSystemWindows;->onPostMessage(Lo/makeOptionalFitsSystemWindows;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->onTransact(Lo/makeOptionalFitsSystemWindows;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 193
    iget-object v2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v2}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F

    move-result v2

    iget-object v3, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v3}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F

    move-result v3

    iget-object v4, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v4}, Lo/makeOptionalFitsSystemWindows;->onRelationshipValidationResult(Lo/makeOptionalFitsSystemWindows;)F

    move-result v4

    sub-float/2addr v4, v1

    mul-float v3, v3, v4

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 194
    iget-object v2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v2}, Lo/makeOptionalFitsSystemWindows;->getInterfaceDescriptor(Lo/makeOptionalFitsSystemWindows;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v3}, Lo/makeOptionalFitsSystemWindows;->asInterface(Lo/makeOptionalFitsSystemWindows;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v4}, Lo/makeOptionalFitsSystemWindows;->newSession(Lo/makeOptionalFitsSystemWindows;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lo/getHint;

    .line 196
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    invoke-static {v0, v1}, Lo/makeOptionalFitsSystemWindows;->extraCallback(Landroid/widget/ImageView;I)V

    :cond_2
    add-int/lit8 p1, p1, 0x2

    .line 200
    :goto_1
    iget-object p2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {p2}, Lo/makeOptionalFitsSystemWindows;->onTransact(Lo/makeOptionalFitsSystemWindows;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 201
    iget-object p2, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {p2}, Lo/makeOptionalFitsSystemWindows;->onTransact(Lo/makeOptionalFitsSystemWindows;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->ICustomTabsCallback$Stub(Lo/makeOptionalFitsSystemWindows;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p2, v0}, Lo/makeOptionalFitsSystemWindows;->extraCallback(Landroid/widget/ImageView;I)V

    .line 203
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lo/getHint;

    .line 204
    iget-object v0, p0, Lo/makeOptionalFitsSystemWindows$4;->onPostMessage:Lo/makeOptionalFitsSystemWindows;

    invoke-static {v0}, Lo/makeOptionalFitsSystemWindows;->asInterface(Lo/makeOptionalFitsSystemWindows;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
