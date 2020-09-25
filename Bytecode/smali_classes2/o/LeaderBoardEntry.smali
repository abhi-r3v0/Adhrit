.class final Lo/LeaderBoardEntry;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SuggestedAmountJsonAdapter;


# instance fields
.field private final synthetic onPostMessage:Lo/Fields;


# direct methods
.method constructor <init>(Lo/Fields;)V
    .locals 0

    iput-object p1, p0, Lo/LeaderBoardEntry;->onPostMessage:Lo/Fields;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/LeaderBoardEntry;->onPostMessage:Lo/Fields;

    invoke-static {v0}, Lo/Fields;->onMessageChannelReady(Lo/Fields;)Lo/EntityJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/LeaderBoardEntry;->onPostMessage:Lo/Fields;

    invoke-virtual {v0, v1}, Lo/EntityJsonAdapter;->onPostMessage(Lo/LeaderBoardJsonAdapter;)V

    return-void
.end method
