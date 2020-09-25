.class final Lo/computeSInt64SizeNoTag$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeSInt64SizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 1
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

    .line 1094
    iget-object p2, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 575
    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 579
    :cond_0
    const-class p2, Ljava/util/Date;

    .line 1556
    invoke-static {p2}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p1

    .line 580
    new-instance p2, Lo/computeSInt64SizeNoTag$16$1;

    invoke-direct {p2, p1}, Lo/computeSInt64SizeNoTag$16$1;-><init>(Lo/computeDoubleSize;)V

    return-object p2
.end method
