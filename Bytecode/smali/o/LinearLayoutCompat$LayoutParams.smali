.class public abstract Lo/LinearLayoutCompat$LayoutParams;
.super Lo/getPromptPosition;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getPromptPosition<",
        "Landroid/widget/ImageView;",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private onPostMessage:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lo/getPromptPosition;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 109
    iget-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lo/getPromptPosition;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 3124
    invoke-virtual {p0, v0}, Lo/LinearLayoutCompat$LayoutParams;->onNavigationEvent(Ljava/lang/Object;)V

    .line 3129
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1

    .line 3130
    check-cast v0, Landroid/graphics/drawable/Animatable;

    iput-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 3131
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 3133
    :cond_1
    iput-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 4053
    :goto_0
    iget-object v0, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 4124
    invoke-virtual {p0, p1}, Lo/LinearLayoutCompat$LayoutParams;->onNavigationEvent(Ljava/lang/Object;)V

    .line 4129
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 4130
    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 4131
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4133
    iput-object p1, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lo/getPromptPosition;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1124
    invoke-virtual {p0, v0}, Lo/LinearLayoutCompat$LayoutParams;->onNavigationEvent(Ljava/lang/Object;)V

    .line 1129
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 1130
    check-cast v0, Landroid/graphics/drawable/Animatable;

    iput-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 1131
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 1133
    :cond_0
    iput-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 2053
    :goto_0
    iget-object v0, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract onNavigationEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public final onPostMessage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lo/getPromptPosition;->onPostMessage(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0, v0}, Lo/LinearLayoutCompat$LayoutParams;->onNavigationEvent(Ljava/lang/Object;)V

    .line 2129
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 2130
    check-cast v0, Landroid/graphics/drawable/Animatable;

    iput-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 2131
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_0

    .line 2133
    :cond_0
    iput-object v0, p0, Lo/LinearLayoutCompat$LayoutParams;->onPostMessage:Landroid/graphics/drawable/Animatable;

    .line 3053
    :goto_0
    iget-object v0, p0, Lo/getPromptPosition;->onNavigationEvent:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
