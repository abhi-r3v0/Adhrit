.class final Lo/writeSFixed64$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeSFixed64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/getTagWireType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getTagWireType<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 434
    sget-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 1104
    new-instance v2, Lo/getTagWireType;

    const-string v3, ""

    invoke-direct {v2, v0, v3, v1, v3}, Lo/getTagWireType;-><init>(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)V

    .line 436
    sput-object v2, Lo/writeSFixed64$onPostMessage;->onMessageChannelReady:Lo/getTagWireType;

    return-void
.end method
