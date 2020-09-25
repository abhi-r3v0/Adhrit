.class final Lo/getEventAppExecutionSize$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBinaryImageSize$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventAppExecutionSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getBinaryImageSize$ICustomTabsCallback<",
        "Lo/getEventAppExecutionSize$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field final extraCallback:Lo/getEventLogSize$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$onNavigationEvent<",
            "*>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Z

.field final onNavigationEvent:I

.field final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getEventLogSize$onNavigationEvent;ILo/DefaultCreateReportSpiCall$onMessageChannelReady;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getEventLogSize$onNavigationEvent<",
            "*>;I",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "ZZ)V"
        }
    .end annotation

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    iput-object p1, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->extraCallback:Lo/getEventLogSize$onNavigationEvent;

    .line 1086
    iput p2, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    .line 1087
    iput-object p3, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 1088
    iput-boolean p4, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    .line 1089
    iput-boolean p5, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onPostMessage:Z

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1077
    check-cast p1, Lo/getEventAppExecutionSize$ICustomTabsCallback;

    .line 2137
    iget v0, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    iget p1, p1, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final extraCallback()Lo/DefaultCreateReportSpiCall$onMessageChannelReady;
    .locals 1

    .line 1105
    iget-object v0, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    return-object v0
.end method

.method public final onMessageChannelReady()Lo/DefaultCreateReportSpiCall$extraCallback;
    .locals 1

    .line 1110
    iget-object v0, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->ICustomTabsCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 1160
    iget-object v0, v0, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;->requestPostMessageChannel:Lo/DefaultCreateReportSpiCall$extraCallback;

    return-object v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 1100
    iget v0, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onNavigationEvent:I

    return v0
.end method

.method public final onPostMessage(Lo/WireFormat$FieldType$2$extraCallback;Lo/WireFormat$FieldType$2;)Lo/WireFormat$FieldType$2$extraCallback;
    .locals 0

    .line 1131
    check-cast p1, Lo/getEventAppExecutionSize$onNavigationEvent;

    check-cast p2, Lo/getEventAppExecutionSize;

    invoke-virtual {p1, p2}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lo/getEventAppExecutionSize$ICustomTabsCallback;->onMessageChannelReady:Z

    return v0
.end method
