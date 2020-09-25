.class final Lo/drawSelectorCompat$onMessageChannelReady;
.super Lo/drawSelectorCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/drawSelectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Lo/drawSelectorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(IIII)Lo/drawSelectorCompat$extraCallback;
    .locals 0

    .line 253
    sget-object p1, Lo/drawSelectorCompat$extraCallback;->onPostMessage:Lo/drawSelectorCompat$extraCallback;

    return-object p1
.end method

.method public final onPostMessage(IIII)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
