.class public final Lo/getTagWireType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTagWireType$extraCallback;
    }
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
.field final onPostMessage:Lo/getTagWireType$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getTagWireType$extraCallback<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "TK;",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "TV;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lo/getTagWireType$extraCallback;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/getTagWireType$extraCallback;-><init>(Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;Lo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Object;)V

    iput-object v0, p0, Lo/getTagWireType;->onPostMessage:Lo/getTagWireType$extraCallback;

    return-void
.end method
