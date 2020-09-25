.class final Lo/bW;
.super Lo/setAccountActive;
.source ""


# instance fields
.field private final synthetic onMessageChannelReady:Lo/ca;


# direct methods
.method constructor <init>(Lo/ca;Lo/cb;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/bW;->onMessageChannelReady:Lo/ca;

    invoke-direct {p0, p2, p3}, Lo/setAccountActive;-><init>(Lo/cb;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final onMessageChannelReady(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final onNavigationEvent(I)I
    .locals 2

    .line 2
    iget-object v0, p0, Lo/bW;->onMessageChannelReady:Lo/ca;

    iget-object v0, v0, Lo/ca;->extraCallback:Lo/bA;

    iget-object v1, p0, Lo/bW;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lo/bA;->extraCallback(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
