.class final Lo/bK;
.super Lo/bN;
.source ""


# instance fields
.field private final onNavigationEvent:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/bN;-><init>()V

    .line 2
    invoke-static {p1}, Lo/gw;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Matcher;

    iput-object p1, p0, Lo/bK;->onNavigationEvent:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 6
    iget-object v0, p0, Lo/bK;->onNavigationEvent:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 7
    iget-object v0, p0, Lo/bK;->onNavigationEvent:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lo/bK;->onNavigationEvent:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lo/bK;->onNavigationEvent:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    return p1
.end method
