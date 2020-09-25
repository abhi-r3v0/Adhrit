.class public final Lo/toString;
.super Lo/isBrowsable;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isBrowsable<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/isBrowsable;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/toString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/toString<",
            "TV;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lo/toString;

    invoke-direct {v0}, Lo/toString;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lo/isBrowsable;->extraCallback(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/Throwable;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lo/isBrowsable;->onNavigationEvent(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
