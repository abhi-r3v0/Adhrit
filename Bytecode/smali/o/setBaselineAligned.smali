.class public final Lo/setBaselineAligned;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/drawDividersHorizontal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/drawDividersHorizontal<",
        "Lo/toGlobalMotionEvent;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Lo/toGlobalMotionEvent;",
            ">;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "[B>;"
        }
    .end annotation

    .line 22
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/toGlobalMotionEvent;

    .line 1170
    iget-object p1, p1, Lo/toGlobalMotionEvent;->onNavigationEvent:Lo/toGlobalMotionEvent$extraCallback;

    iget-object p1, p1, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    .line 2159
    iget-object p1, p1, Lo/getShowDividers;->onPostMessage:Lo/setSupportImageTintList;

    invoke-interface {p1}, Lo/setSupportImageTintList;->ICustomTabsCallback()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 24
    new-instance p2, Lo/onForwardingStarted;

    invoke-static {p1}, Lo/getSoftInputMode;->ICustomTabsCallback(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lo/onForwardingStarted;-><init>([B)V

    return-object p2
.end method
