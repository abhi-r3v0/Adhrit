.class final Lo/search$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/search;


# direct methods
.method constructor <init>(Lo/search;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lo/search$1;->onNavigationEvent:Lo/search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 67
    iget-object v0, p0, Lo/search$1;->onNavigationEvent:Lo/search;

    invoke-virtual {v0}, Lo/search;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/search$1;->onNavigationEvent:Lo/search;

    iget-object v0, v0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isModal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lo/search$1;->onNavigationEvent:Lo/search;

    iget-object v0, v0, Lo/search;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lo/search$1;->onNavigationEvent:Lo/search;

    iget-object v0, v0, Lo/search;->onPostMessage:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/search$1;->onNavigationEvent:Lo/search;

    invoke-virtual {v0}, Lo/search;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
