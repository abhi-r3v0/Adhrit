.class final Lo/sendExtras$1;
.super Lo/fromQueueItem$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendExtras;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/sendExtras;

.field final synthetic onNavigationEvent:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lo/sendExtras;Landroid/graphics/Rect;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lo/sendExtras$1;->ICustomTabsCallback:Lo/sendExtras;

    iput-object p2, p0, Lo/sendExtras$1;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-direct {p0}, Lo/fromQueueItem$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Landroid/graphics/Rect;
    .locals 1

    .line 304
    iget-object v0, p0, Lo/sendExtras$1;->onNavigationEvent:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lo/sendExtras$1;->onNavigationEvent:Landroid/graphics/Rect;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
