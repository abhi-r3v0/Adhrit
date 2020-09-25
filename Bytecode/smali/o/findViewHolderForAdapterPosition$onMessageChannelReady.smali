.class public final Lo/findViewHolderForAdapterPosition$onMessageChannelReady;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForAdapterPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/widget/SlotMachineView$getShadowView$1",
        "Landroid/view/View;",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;


# direct methods
.method constructor <init>(Lo/findViewHolderForAdapterPosition;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lo/findViewHolderForAdapterPosition$onMessageChannelReady;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget-object v0, p0, Lo/findViewHolderForAdapterPosition$onMessageChannelReady;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 195
    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$onMessageChannelReady;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v1}, Lo/findViewHolderForAdapterPosition;->asBinder(Lo/findViewHolderForAdapterPosition;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v3, v0, 0xa

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$onMessageChannelReady;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v1}, Lo/findViewHolderForAdapterPosition;->asBinder(Lo/findViewHolderForAdapterPosition;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v1, p0, Lo/findViewHolderForAdapterPosition$onMessageChannelReady;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v1}, Lo/findViewHolderForAdapterPosition;->onTransact(Lo/findViewHolderForAdapterPosition;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 199
    iget-object v0, p0, Lo/findViewHolderForAdapterPosition$onMessageChannelReady;->ICustomTabsCallback:Lo/findViewHolderForAdapterPosition;

    invoke-static {v0}, Lo/findViewHolderForAdapterPosition;->onTransact(Lo/findViewHolderForAdapterPosition;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
