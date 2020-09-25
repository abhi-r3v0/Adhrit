.class Lo/ICustomTabsService$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService;->cancel()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lo/ICustomTabsService$3;->onNavigationEvent:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 2

    .line 963
    iget-object v0, p0, Lo/ICustomTabsService$3;->onNavigationEvent:Lo/ICustomTabsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lo/ICustomTabsService;->extraCallback(Lo/getVolumeAttributes;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
