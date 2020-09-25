.class public final Lo/setTextColor;
.super Lo/setPosition;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/afDebugLog;

.field private final onPostMessage:Lo/Ι;


# direct methods
.method public constructor <init>(Lo/afDebugLog;Lo/Ι;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lo/setPosition;-><init>()V

    .line 30
    iput-object p1, p0, Lo/setTextColor;->ICustomTabsCallback:Lo/afDebugLog;

    .line 31
    iput-object p2, p0, Lo/setTextColor;->onPostMessage:Lo/Ι;

    return-void
.end method


# virtual methods
.method public final onPostMessage(IILandroid/graphics/Bitmap$Config;)Lo/getRootAlpha;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p1, p2, p3}, Lo/setDeepLinkData;->onNavigationEvent(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 48
    iget-object v1, p0, Lo/setTextColor;->ICustomTabsCallback:Lo/afDebugLog;

    invoke-interface {v1, v0}, Lo/afDebugLog;->extraCallback(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    mul-int v2, p1, p2

    .line 51
    invoke-static {p3}, Lo/setDeepLinkData;->extraCallback(Landroid/graphics/Bitmap$Config;)I

    move-result v3

    mul-int v2, v2, v3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 53
    iget-object p1, p0, Lo/setTextColor;->onPostMessage:Lo/Ι;

    iget-object p2, p0, Lo/setTextColor;->ICustomTabsCallback:Lo/afDebugLog;

    .line 2053
    iget-object p1, p1, Lo/Ι;->onNavigationEvent:Lo/getRootAlpha$onPostMessage;

    invoke-static {v0, p2, p1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1

    .line 1111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
