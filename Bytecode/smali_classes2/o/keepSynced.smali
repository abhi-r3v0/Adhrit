.class public final Lo/keepSynced;
.super Lo/updateChildren;
.source ""


# instance fields
.field private final extraCallback:Lo/fullLimitUpdateChild;

.field private final onPostMessage:Lo/getRef;


# direct methods
.method public constructor <init>(Lo/getRef;Lo/fullLimitUpdateChild;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/updateChildren;-><init>()V

    .line 28
    iput-object p1, p0, Lo/keepSynced;->onPostMessage:Lo/getRef;

    .line 29
    iput-object p2, p0, Lo/keepSynced;->extraCallback:Lo/fullLimitUpdateChild;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/fullLimitUpdateChild;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/keepSynced;->extraCallback:Lo/fullLimitUpdateChild;

    return-object v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 38
    iget-object v0, p0, Lo/keepSynced;->onPostMessage:Lo/getRef;

    invoke-static {v0}, Lo/removeEventRegistration;->onPostMessage(Lo/getRef;)J

    move-result-wide v0

    return-wide v0
.end method
