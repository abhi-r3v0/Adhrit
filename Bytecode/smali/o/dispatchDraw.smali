.class public final Lo/dispatchDraw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
.implements Lo/consumeTextFutureAndSetBlocking;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lo/consumeTextFutureAndSetBlocking;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/dispatchFitSystemWindows;

.field private final onPostMessage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 34
    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lo/dispatchDraw;->onPostMessage:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 35
    check-cast p2, Lo/dispatchFitSystemWindows;

    iput-object p2, p0, Lo/dispatchDraw;->extraCallback:Lo/dispatchFitSystemWindows;

    return-void

    .line 2029
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BitmapPool must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Bitmap must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static onPostMessage(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)Lo/dispatchDraw;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lo/dispatchDraw;

    invoke-direct {v0, p0, p1}, Lo/dispatchDraw;-><init>(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/dispatchDraw;->onPostMessage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public final extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/dispatchDraw;->extraCallback:Lo/dispatchFitSystemWindows;

    iget-object v1, p0, Lo/dispatchDraw;->onPostMessage:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/dispatchFitSystemWindows;->extraCallback(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 52
    iget-object v0, p0, Lo/dispatchDraw;->onPostMessage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onPostMessage()Ljava/lang/Object;
    .locals 1

    .line 2047
    iget-object v0, p0, Lo/dispatchDraw;->onPostMessage:Landroid/graphics/Bitmap;

    return-object v0
.end method
