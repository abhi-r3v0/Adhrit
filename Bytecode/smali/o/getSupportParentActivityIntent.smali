.class public final Lo/getSupportParentActivityIntent;
.super Lo/onCreateSupportNavigateUpTaskStack;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/onCreateSupportNavigateUpTaskStack<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/onCreateSupportNavigateUpTaskStack;-><init>()V

    return-void
.end method

.method public static onNavigationEvent()Lo/getSupportParentActivityIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/getSupportParentActivityIntent<",
            "TV;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lo/getSupportParentActivityIntent;

    invoke-direct {v0}, Lo/getSupportParentActivityIntent;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lo/onCreateSupportNavigateUpTaskStack;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final extraCallback(Lo/getBatteryLevel;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getBatteryLevel<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lo/onCreateSupportNavigateUpTaskStack;->extraCallback(Lo/getBatteryLevel;)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Throwable;)Z
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lo/onCreateSupportNavigateUpTaskStack;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
