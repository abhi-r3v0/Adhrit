.class final Lo/sendExtras$4;
.super Lo/fromQueueItem$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendExtras;->onNavigationEvent(Ljava/lang/Object;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/graphics/Rect;

.field final synthetic onNavigationEvent:Lo/sendExtras;


# direct methods
.method constructor <init>(Lo/sendExtras;Landroid/graphics/Rect;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lo/sendExtras$4;->onNavigationEvent:Lo/sendExtras;

    iput-object p2, p0, Lo/sendExtras$4;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-direct {p0}, Lo/fromQueueItem$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Landroid/graphics/Rect;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/sendExtras$4;->ICustomTabsCallback:Landroid/graphics/Rect;

    return-object v0
.end method
