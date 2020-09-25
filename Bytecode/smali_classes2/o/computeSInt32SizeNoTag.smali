.class final Lo/computeSInt32SizeNoTag;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/computeDoubleSize<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/reflect/Type;

.field private final onNavigationEvent:Lo/writeStringNoTag;


# direct methods
.method constructor <init>(Lo/writeStringNoTag;Lo/computeDoubleSize;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeStringNoTag;",
            "Lo/computeDoubleSize<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 34
    iput-object p1, p0, Lo/computeSInt32SizeNoTag;->onNavigationEvent:Lo/writeStringNoTag;

    .line 35
    iput-object p2, p0, Lo/computeSInt32SizeNoTag;->extraCallback:Lo/computeDoubleSize;

    .line 36
    iput-object p3, p0, Lo/computeSInt32SizeNoTag;->onMessageChannelReady:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkNoSpaceLeft;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/computeSInt32SizeNoTag;->extraCallback:Lo/computeDoubleSize;

    invoke-virtual {v0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final write(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeTagSize;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/computeSInt32SizeNoTag;->extraCallback:Lo/computeDoubleSize;

    .line 54
    iget-object v1, p0, Lo/computeSInt32SizeNoTag;->onMessageChannelReady:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 1076
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 1078
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    :cond_1
    iget-object v2, p0, Lo/computeSInt32SizeNoTag;->onMessageChannelReady:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_2

    .line 56
    iget-object v0, p0, Lo/computeSInt32SizeNoTag;->onNavigationEvent:Lo/writeStringNoTag;

    invoke-static {v1}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lo/computeBytesSizeNoTag$extraCallback;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lo/computeSInt32SizeNoTag;->extraCallback:Lo/computeDoubleSize;

    instance-of v2, v1, Lo/computeBytesSizeNoTag$extraCallback;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 69
    :cond_2
    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void
.end method
