.class final Lo/removeEventListener$1;
.super Lo/updateChildren;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lo/updateChildren;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/fullLimitUpdateChild;
    .locals 1

    .line 102
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    return-object v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
