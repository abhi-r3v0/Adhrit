.class final Lo/getFirstBaselineToTopHeight$1;
.super Lo/getFirstBaselineToTopHeight;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstBaselineToTopHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lo/getFirstBaselineToTopHeight;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(ZLo/setImageURI;Lo/getSupportImageTintMode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady(Lo/setImageURI;)Z
    .locals 1

    .line 68
    sget-object v0, Lo/setImageURI;->onMessageChannelReady:Lo/setImageURI;

    if-eq p1, v0, :cond_0

    sget-object v0, Lo/setImageURI;->extraCallback:Lo/setImageURI;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
