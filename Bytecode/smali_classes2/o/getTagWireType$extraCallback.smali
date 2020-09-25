.class final Lo/getTagWireType$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTagWireType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

.field public final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "TK;",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "TV;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/getTagWireType$extraCallback;->onPostMessage:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 59
    iput-object p2, p0, Lo/getTagWireType$extraCallback;->onMessageChannelReady:Ljava/lang/Object;

    .line 60
    iput-object p3, p0, Lo/getTagWireType$extraCallback;->extraCallback:Lo/DefaultCreateReportSpiCall$onMessageChannelReady;

    .line 61
    iput-object p4, p0, Lo/getTagWireType$extraCallback;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method
