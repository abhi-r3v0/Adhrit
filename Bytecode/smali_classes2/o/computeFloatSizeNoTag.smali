.class public final Lo/computeFloatSizeNoTag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeFloatSizeNoTag$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/computeFixed64Size;


# direct methods
.method public constructor <init>(Lo/computeFixed64Size;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/computeFloatSizeNoTag;->onMessageChannelReady:Lo/computeFixed64Size;

    return-void
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 1101
    iget-object v0, p2, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v1, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 48
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    invoke-static {v0, v1}, Lo/computeFixed32Size;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v1

    invoke-virtual {p1, v1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lo/computeFloatSizeNoTag;->onMessageChannelReady:Lo/computeFixed64Size;

    invoke-virtual {v2, p2}, Lo/computeFixed64Size;->ICustomTabsCallback(Lo/writeRawByte;)Lo/computeDoubleSizeNoTag;

    move-result-object p2

    .line 57
    new-instance v2, Lo/computeFloatSizeNoTag$onMessageChannelReady;

    invoke-direct {v2, p1, v0, v1, p2}, Lo/computeFloatSizeNoTag$onMessageChannelReady;-><init>(Lo/writeStringNoTag;Ljava/lang/reflect/Type;Lo/computeDoubleSize;Lo/computeDoubleSizeNoTag;)V

    return-object v2
.end method
