.class final Lo/drawSelectorCompat$onPostMessage;
.super Lo/drawSelectorCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/drawSelectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lo/drawSelectorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(IIII)Lo/drawSelectorCompat$extraCallback;
    .locals 2

    .line 1266
    sget-object v0, Lo/drawSelectorCompat$onPostMessage;->extraCallback:Lo/drawSelectorCompat;

    .line 1268
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/drawSelectorCompat;->onPostMessage(IIII)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1266
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 275
    sget-object p1, Lo/drawSelectorCompat$extraCallback;->onPostMessage:Lo/drawSelectorCompat$extraCallback;

    return-object p1

    .line 276
    :cond_0
    sget-object v0, Lo/drawSelectorCompat$onPostMessage;->extraCallback:Lo/drawSelectorCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/drawSelectorCompat;->onNavigationEvent(IIII)Lo/drawSelectorCompat$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(IIII)F
    .locals 1

    .line 266
    sget-object v0, Lo/drawSelectorCompat$onPostMessage;->extraCallback:Lo/drawSelectorCompat;

    .line 268
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/drawSelectorCompat;->onPostMessage(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 266
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
