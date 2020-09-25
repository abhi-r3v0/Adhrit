.class final Lo/shouldIncludeCompoundHash$4;
.super Lo/getConnectionUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getConnectionUrl<",
        "Lo/resume;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/shouldIncludeCompoundHash;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$4;->extraCallback:Lo/shouldIncludeCompoundHash;

    invoke-direct {p0}, Lo/getConnectionUrl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()V
    .locals 2

    .line 127
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$4;->extraCallback:Lo/shouldIncludeCompoundHash;

    .line 1065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onMessageChannelReady;

    .line 127
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$4;->extraCallback:Lo/shouldIncludeCompoundHash;

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash$onMessageChannelReady;->onMessageChannelReady(Lo/shouldIncludeCompoundHash;)V

    return-void
.end method

.method protected final onMessageChannelReady()V
    .locals 2

    .line 132
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$4;->extraCallback:Lo/shouldIncludeCompoundHash;

    .line 2065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->onNavigationEvent:Lo/shouldIncludeCompoundHash$onMessageChannelReady;

    .line 132
    iget-object v1, p0, Lo/shouldIncludeCompoundHash$4;->extraCallback:Lo/shouldIncludeCompoundHash;

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash$onMessageChannelReady;->extraCallback(Lo/shouldIncludeCompoundHash;)V

    return-void
.end method
