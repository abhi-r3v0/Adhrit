.class final Lo/drawSelectorCompat$ICustomTabsCallback;
.super Lo/drawSelectorCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/drawSelectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lo/drawSelectorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(IIII)Lo/drawSelectorCompat$extraCallback;
    .locals 0

    .line 189
    sget-object p1, Lo/drawSelectorCompat$extraCallback;->onPostMessage:Lo/drawSelectorCompat$extraCallback;

    return-object p1
.end method

.method public final onPostMessage(IIII)F
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 183
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method
