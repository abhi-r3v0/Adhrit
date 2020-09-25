.class public final Lo/computeStringSizeNoTag;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/computeStringSizeNoTag$onPostMessage;
    }
.end annotation

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
.field private final ICustomTabsCallback:Lo/writeRawByte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeRawByte<",
            "TT;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/computeFloatSize;

.field private final onMessageChannelReady:Lo/computeInt64Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeInt64Size<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/writeStringNoTag;

.field private final onPostMessage:Lo/writeSFixed64NoTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeSFixed64NoTag<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/computeInt64Size;Lo/writeSFixed64NoTag;Lo/writeStringNoTag;Lo/writeRawByte;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeInt64Size<",
            "TT;>;",
            "Lo/writeSFixed64NoTag<",
            "TT;>;",
            "Lo/writeStringNoTag;",
            "Lo/writeRawByte<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

    .line 54
    iput-object p1, p0, Lo/computeStringSizeNoTag;->onMessageChannelReady:Lo/computeInt64Size;

    .line 55
    iput-object p2, p0, Lo/computeStringSizeNoTag;->onPostMessage:Lo/writeSFixed64NoTag;

    .line 56
    iput-object p3, p0, Lo/computeStringSizeNoTag;->onNavigationEvent:Lo/writeStringNoTag;

    .line 57
    iput-object p4, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback:Lo/writeRawByte;

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lo/computeStringSizeNoTag;->extraCallback:Lo/computeFloatSize;

    return-void
.end method


# virtual methods
.method public final read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 3
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

    .line 62
    iget-object v0, p0, Lo/computeStringSizeNoTag;->onPostMessage:Lo/writeSFixed64NoTag;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1086
    iget-object v0, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback$Stub:Lo/computeDoubleSize;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    iget-object v0, p0, Lo/computeStringSizeNoTag;->onNavigationEvent:Lo/writeStringNoTag;

    iget-object v2, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback:Lo/writeRawByte;

    invoke-virtual {v0, v1, v2}, Lo/writeStringNoTag;->onNavigationEvent(Lo/computeFloatSize;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    iput-object v0, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback$Stub:Lo/computeDoubleSize;

    .line 63
    :goto_0
    invoke-virtual {v0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    invoke-static {p1}, Lo/computeUInt64SizeNoTag;->onPostMessage(Lo/checkNoSpaceLeft;)Lo/writeEnumNoTag;

    move-result-object p1

    .line 2075
    instance-of p1, p1, Lo/writeSInt64NoTag;

    if-eqz p1, :cond_2

    return-object v1

    .line 69
    :cond_2
    iget-object p1, p0, Lo/computeStringSizeNoTag;->onPostMessage:Lo/writeSFixed64NoTag;

    invoke-interface {p1}, Lo/writeSFixed64NoTag;->onNavigationEvent()Ljava/lang/Object;

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

    .line 73
    iget-object v0, p0, Lo/computeStringSizeNoTag;->onMessageChannelReady:Lo/computeInt64Size;

    if-nez v0, :cond_1

    .line 3086
    iget-object v0, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback$Stub:Lo/computeDoubleSize;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3089
    :cond_0
    iget-object v0, p0, Lo/computeStringSizeNoTag;->onNavigationEvent:Lo/writeStringNoTag;

    const/4 v1, 0x0

    iget-object v2, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback:Lo/writeRawByte;

    invoke-virtual {v0, v1, v2}, Lo/writeStringNoTag;->onNavigationEvent(Lo/computeFloatSize;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    iput-object v0, p0, Lo/computeStringSizeNoTag;->ICustomTabsCallback$Stub:Lo/computeDoubleSize;

    .line 74
    :goto_0
    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 78
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    .line 81
    :cond_2
    invoke-interface {v0}, Lo/computeInt64Size;->extraCallback()Lo/writeEnumNoTag;

    move-result-object p2

    .line 4072
    sget-object v0, Lo/computeSInt64SizeNoTag;->cancel:Lo/computeDoubleSize;

    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void
.end method
