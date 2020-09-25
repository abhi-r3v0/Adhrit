.class final Lo/bO;
.super Lo/bL;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final onNavigationEvent:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/bL;-><init>()V

    .line 2
    invoke-static {p1}, Lo/gw;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Pattern;

    iput-object p1, p0, Lo/bO;->onNavigationEvent:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/CharSequence;)Lo/bN;
    .locals 2

    .line 4
    new-instance v0, Lo/bK;

    iget-object v1, p0, Lo/bO;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/bK;-><init>(Ljava/util/regex/Matcher;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lo/bO;->onNavigationEvent:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
