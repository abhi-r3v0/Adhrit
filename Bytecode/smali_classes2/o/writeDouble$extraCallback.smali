.class final Lo/writeDouble$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/getTagWireType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getTagWireType<",
            "Ljava/lang/String;",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 97
    sget-object v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->onRelationshipValidationResult:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    sget-object v1, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->warmup:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 103
    invoke-static {}, Lo/writeRawMessageSetExtension;->onNavigationEvent()Lo/writeRawMessageSetExtension;

    move-result-object v2

    .line 1104
    new-instance v3, Lo/getTagWireType;

    const-string v4, ""

    invoke-direct {v3, v0, v4, v1, v2}, Lo/getTagWireType;-><init>(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)V

    .line 99
    sput-object v3, Lo/writeDouble$extraCallback;->ICustomTabsCallback:Lo/getTagWireType;

    return-void
.end method
