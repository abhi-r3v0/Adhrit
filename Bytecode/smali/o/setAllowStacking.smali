.class final Lo/setAllowStacking;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDecorPadding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setAllowStacking$extraCallback;,
        Lo/setAllowStacking$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/setStacked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setStacked<",
            "Lo/setAllowStacking$extraCallback;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setAllowStacking$onNavigationEvent;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lo/setAllowStacking$onNavigationEvent;

    invoke-direct {v0}, Lo/setAllowStacking$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/setAllowStacking;->onPostMessage:Lo/setAllowStacking$onNavigationEvent;

    .line 14
    new-instance v0, Lo/setStacked;

    invoke-direct {v0}, Lo/setStacked;-><init>()V

    iput-object v0, p0, Lo/setAllowStacking;->onNavigationEvent:Lo/setStacked;

    return-void
.end method

.method static onPostMessage(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/graphics/Bitmap;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/setAllowStacking;->onNavigationEvent:Lo/setStacked;

    invoke-virtual {v0}, Lo/setStacked;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final ICustomTabsCallback(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .line 25
    iget-object v0, p0, Lo/setAllowStacking;->onPostMessage:Lo/setAllowStacking$onNavigationEvent;

    .line 4011
    iget-object v1, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMinWidthMinor;

    if-nez v1, :cond_0

    .line 4013
    invoke-virtual {v0}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v1

    .line 3068
    :cond_0
    check-cast v1, Lo/setAllowStacking$extraCallback;

    .line 4092
    iput p1, v1, Lo/setAllowStacking$extraCallback;->onMessageChannelReady:I

    .line 4093
    iput p2, v1, Lo/setAllowStacking$extraCallback;->onPostMessage:I

    .line 4094
    iput-object p3, v1, Lo/setAllowStacking$extraCallback;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    .line 27
    iget-object p1, p0, Lo/setAllowStacking;->onNavigationEvent:Lo/setStacked;

    invoke-virtual {p1, v1}, Lo/setStacked;->ICustomTabsCallback(Lo/getMinWidthMinor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public final onMessageChannelReady(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 47
    invoke-static {p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {p1, p2, p3}, Lo/setAllowStacking;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 18
    iget-object v0, p0, Lo/setAllowStacking;->onPostMessage:Lo/setAllowStacking$onNavigationEvent;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 2011
    iget-object v4, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getMinWidthMinor;

    if-nez v4, :cond_0

    .line 2013
    invoke-virtual {v0}, Lo/ContentFrameLayout;->onMessageChannelReady()Lo/getMinWidthMinor;

    move-result-object v4

    .line 1068
    :cond_0
    check-cast v4, Lo/setAllowStacking$extraCallback;

    .line 2092
    iput v1, v4, Lo/setAllowStacking$extraCallback;->onMessageChannelReady:I

    .line 2093
    iput v2, v4, Lo/setAllowStacking$extraCallback;->onPostMessage:I

    .line 2094
    iput-object v3, v4, Lo/setAllowStacking$extraCallback;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    .line 20
    iget-object v0, p0, Lo/setAllowStacking;->onNavigationEvent:Lo/setStacked;

    invoke-virtual {v0, v4, p1}, Lo/setStacked;->onNavigationEvent(Lo/getMinWidthMinor;Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 5056
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lo/setAllowStacking;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributeStrategy:\n  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setAllowStacking;->onNavigationEvent:Lo/setStacked;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
