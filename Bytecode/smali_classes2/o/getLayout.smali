.class final Lo/getLayout;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getVideoLoadingProgressView;


# instance fields
.field private final synthetic onNavigationEvent:Lo/ChannelListActivity$2;


# direct methods
.method constructor <init>(Lo/ChannelListActivity$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getLayout;->onNavigationEvent:Lo/ChannelListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)B
    .locals 1

    .line 3
    iget-object v0, p0, Lo/getLayout;->onNavigationEvent:Lo/ChannelListActivity$2;

    invoke-virtual {v0, p1}, Lo/ChannelListActivity$2;->onMessageChannelReady(I)B

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/getLayout;->onNavigationEvent:Lo/ChannelListActivity$2;

    invoke-virtual {v0}, Lo/ChannelListActivity$2;->extraCallback()I

    move-result v0

    return v0
.end method
