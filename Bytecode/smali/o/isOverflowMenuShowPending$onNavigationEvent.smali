.class final Lo/isOverflowMenuShowPending$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isOverflowMenuShowPending$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isOverflowMenuShowPending;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/isOverflowMenuShowPending$ICustomTabsCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/isOverflowMenuShowPending$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final ICustomTabsCallback(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onNavigationEvent()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(F)Z
    .locals 1

    .line 214
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Lo/ActionMenuView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
