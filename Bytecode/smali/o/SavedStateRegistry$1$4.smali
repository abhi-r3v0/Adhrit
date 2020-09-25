.class final Lo/SavedStateRegistry$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getStrokeWidth;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SavedStateRegistry$1;->onMessageChannelReady()Lo/getStrokeWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 15
    check-cast p1, Lo/containsPosition$onNavigationEvent;

    check-cast p2, Lo/containsPosition$onNavigationEvent;

    .line 1018
    invoke-interface {p1}, Lo/containsPosition$onNavigationEvent;->onNavigationEvent()J

    move-result-wide v0

    .line 1019
    invoke-interface {p2}, Lo/containsPosition$onNavigationEvent;->onNavigationEvent()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
