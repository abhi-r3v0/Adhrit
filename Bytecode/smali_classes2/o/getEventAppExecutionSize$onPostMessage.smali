.class public final Lo/getEventAppExecutionSize$onPostMessage;
.super Lo/computeRawVarint32Size;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventAppExecutionSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/getEventAppExecutionSize<",
        "TT;*>;>",
        "Lo/computeRawVarint32Size<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getEventAppExecutionSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getEventAppExecutionSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Lo/computeRawVarint32Size;-><init>()V

    .line 1500
    iput-object p1, p0, Lo/getEventAppExecutionSize$onPostMessage;->onMessageChannelReady:Lo/getEventAppExecutionSize;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2506
    iget-object v0, p0, Lo/getEventAppExecutionSize$onPostMessage;->onMessageChannelReady:Lo/getEventAppExecutionSize;

    invoke-static {v0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p1

    return-object p1
.end method
