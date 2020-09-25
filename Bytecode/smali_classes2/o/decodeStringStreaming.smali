.class public final Lo/decodeStringStreaming;
.super Lo/ensureIndexed$onPostMessage;
.source ""


# instance fields
.field public final ICustomTabsCallback:Lo/writeStringNoTag;


# direct methods
.method public constructor <init>(Lo/writeStringNoTag;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/ensureIndexed$onPostMessage;-><init>()V

    .line 58
    iput-object p1, p0, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "*",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p2, p0, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-static {p1}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p1

    .line 72
    new-instance p2, Lo/decodeString;

    iget-object p3, p0, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-direct {p2, p3, p1}, Lo/decodeString;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;)V

    return-object p2
.end method

.method public final onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "Lo/getChildKey;",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object p2, p0, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-static {p1}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p1

    .line 65
    new-instance p2, Lo/appendBytes;

    iget-object p3, p0, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-direct {p2, p3, p1}, Lo/appendBytes;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;)V

    return-object p2
.end method
