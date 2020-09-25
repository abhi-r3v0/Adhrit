.class final Lo/cd;
.super Lo/setAccountActive;
.source ""


# instance fields
.field private final synthetic onPostMessage:Lo/bN;


# direct methods
.method constructor <init>(Lo/bT;Lo/cb;Ljava/lang/CharSequence;Lo/bN;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lo/cd;->onPostMessage:Lo/bN;

    invoke-direct {p0, p2, p3}, Lo/setAccountActive;-><init>(Lo/cb;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)I
    .locals 0

    .line 3
    iget-object p1, p0, Lo/cd;->onPostMessage:Lo/bN;

    invoke-virtual {p1}, Lo/bN;->onMessageChannelReady()I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/cd;->onPostMessage:Lo/bN;

    invoke-virtual {v0, p1}, Lo/bN;->onPostMessage(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/cd;->onPostMessage:Lo/bN;

    invoke-virtual {p1}, Lo/bN;->onNavigationEvent()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
