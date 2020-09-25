.class final Lo/populateHMAC;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lo/populateHMAC;->ICustomTabsCallback:I

    .line 27
    iput p2, p0, Lo/populateHMAC;->onNavigationEvent:I

    .line 28
    iput p3, p0, Lo/populateHMAC;->extraCallback:I

    .line 29
    iput p4, p0, Lo/populateHMAC;->onPostMessage:I

    return-void
.end method
