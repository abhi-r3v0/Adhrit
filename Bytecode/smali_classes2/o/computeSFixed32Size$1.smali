.class final Lo/computeSFixed32Size$1;
.super Lo/computeDoubleSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeSFixed32Size;->create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/computeDoubleSize<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/computeDoubleSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation
.end field

.field private synthetic asInterface:Lo/computeSFixed32Size;

.field private synthetic extraCallback:Lo/writeStringNoTag;

.field private synthetic onMessageChannelReady:Z

.field private synthetic onNavigationEvent:Lo/writeRawByte;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/computeSFixed32Size;ZZLo/writeStringNoTag;Lo/writeRawByte;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lo/computeSFixed32Size$1;->asInterface:Lo/computeSFixed32Size;

    iput-boolean p2, p0, Lo/computeSFixed32Size$1;->onPostMessage:Z

    iput-boolean p3, p0, Lo/computeSFixed32Size$1;->onMessageChannelReady:Z

    iput-object p4, p0, Lo/computeSFixed32Size$1;->extraCallback:Lo/writeStringNoTag;

    iput-object p5, p0, Lo/computeSFixed32Size$1;->onNavigationEvent:Lo/writeRawByte;

    invoke-direct {p0}, Lo/computeDoubleSize;-><init>()V

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

    .line 127
    iget-boolean v0, p0, Lo/computeSFixed32Size$1;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->getInterfaceDescriptor()V

    const/4 p1, 0x0

    return-object p1

    .line 1143
    :cond_0
    iget-object v0, p0, Lo/computeSFixed32Size$1;->ICustomTabsCallback:Lo/computeDoubleSize;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v0, p0, Lo/computeSFixed32Size$1;->extraCallback:Lo/writeStringNoTag;

    iget-object v1, p0, Lo/computeSFixed32Size$1;->asInterface:Lo/computeSFixed32Size;

    iget-object v2, p0, Lo/computeSFixed32Size$1;->onNavigationEvent:Lo/writeRawByte;

    invoke-virtual {v0, v1, v2}, Lo/writeStringNoTag;->onNavigationEvent(Lo/computeFloatSize;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    iput-object v0, p0, Lo/computeSFixed32Size$1;->ICustomTabsCallback:Lo/computeDoubleSize;

    .line 131
    :goto_0
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

    .line 135
    iget-boolean v0, p0, Lo/computeSFixed32Size$1;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lo/computeTagSize;->extraCallback()Lo/computeTagSize;

    return-void

    .line 2143
    :cond_0
    iget-object v0, p0, Lo/computeSFixed32Size$1;->ICustomTabsCallback:Lo/computeDoubleSize;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2146
    :cond_1
    iget-object v0, p0, Lo/computeSFixed32Size$1;->extraCallback:Lo/writeStringNoTag;

    iget-object v1, p0, Lo/computeSFixed32Size$1;->asInterface:Lo/computeSFixed32Size;

    iget-object v2, p0, Lo/computeSFixed32Size$1;->onNavigationEvent:Lo/writeRawByte;

    invoke-virtual {v0, v1, v2}, Lo/writeStringNoTag;->onNavigationEvent(Lo/computeFloatSize;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    iput-object v0, p0, Lo/computeSFixed32Size$1;->ICustomTabsCallback:Lo/computeDoubleSize;

    .line 139
    :goto_0
    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void
.end method
