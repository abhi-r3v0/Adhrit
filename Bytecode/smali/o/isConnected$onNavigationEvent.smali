.class final Lo/isConnected$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isConnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/isConnected;

.field private final onNavigationEvent:Landroid/view/MenuItem$OnActionExpandListener;


# direct methods
.method constructor <init>(Lo/isConnected;Landroid/view/MenuItem$OnActionExpandListener;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lo/isConnected$onNavigationEvent;->ICustomTabsCallback:Lo/isConnected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lo/isConnected$onNavigationEvent;->onNavigationEvent:Landroid/view/MenuItem$OnActionExpandListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .line 425
    iget-object v0, p0, Lo/isConnected$onNavigationEvent;->onNavigationEvent:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Lo/isConnected$onNavigationEvent;->ICustomTabsCallback:Lo/isConnected;

    invoke-virtual {v1, p1}, Lo/compareTo;->onNavigationEvent(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .line 420
    iget-object v0, p0, Lo/isConnected$onNavigationEvent;->onNavigationEvent:Landroid/view/MenuItem$OnActionExpandListener;

    iget-object v1, p0, Lo/isConnected$onNavigationEvent;->ICustomTabsCallback:Lo/isConnected;

    invoke-virtual {v1, p1}, Lo/compareTo;->onNavigationEvent(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
