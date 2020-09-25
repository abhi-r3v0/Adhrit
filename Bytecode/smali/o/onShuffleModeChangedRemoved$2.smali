.class Lo/onShuffleModeChangedRemoved$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onShuffleModeChangedRemoved;->extraCallback(Landroid/view/MenuItem;Lo/onShuffleModeChangedRemoved$onNavigationEvent;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onShuffleModeChangedRemoved$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onShuffleModeChangedRemoved$onNavigationEvent;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lo/onShuffleModeChangedRemoved$2;->onPostMessage:Lo/onShuffleModeChangedRemoved$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 310
    iget-object v0, p0, Lo/onShuffleModeChangedRemoved$2;->onPostMessage:Lo/onShuffleModeChangedRemoved$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/onShuffleModeChangedRemoved$onNavigationEvent;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 305
    iget-object v0, p0, Lo/onShuffleModeChangedRemoved$2;->onPostMessage:Lo/onShuffleModeChangedRemoved$onNavigationEvent;

    invoke-interface {v0, p1}, Lo/onShuffleModeChangedRemoved$onNavigationEvent;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
