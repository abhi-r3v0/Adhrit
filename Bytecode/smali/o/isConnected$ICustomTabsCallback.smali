.class final Lo/isConnected$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isConnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field final synthetic onPostMessage:Lo/isConnected;


# direct methods
.method constructor <init>(Lo/isConnected;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lo/isConnected$ICustomTabsCallback;->onPostMessage:Lo/isConnected;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lo/isConnected$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 407
    iget-object v0, p0, Lo/isConnected$ICustomTabsCallback;->ICustomTabsCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Lo/isConnected$ICustomTabsCallback;->onPostMessage:Lo/isConnected;

    invoke-virtual {v1, p1}, Lo/compareTo;->onNavigationEvent(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
