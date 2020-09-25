.class abstract Lo/computeBytesSizeNoTag$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeBytesSizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lo/computeBytesSizeNoTag$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 189
    iput-boolean p2, p0, Lo/computeBytesSizeNoTag$onMessageChannelReady;->onNavigationEvent:Z

    .line 190
    iput-boolean p3, p0, Lo/computeBytesSizeNoTag$onMessageChannelReady;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method abstract extraCallback(Lo/checkNoSpaceLeft;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract extraCallback(Lo/computeTagSize;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
