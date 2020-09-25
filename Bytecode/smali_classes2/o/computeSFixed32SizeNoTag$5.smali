.class final Lo/computeSFixed32SizeNoTag$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeSFixed32SizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 0
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
    iget-object p1, p2, Lo/writeRawByte;->onMessageChannelReady:Ljava/lang/Class;

    .line 42
    const-class p2, Ljava/sql/Date;

    if-ne p1, p2, :cond_0

    .line 43
    new-instance p1, Lo/computeSFixed32SizeNoTag;

    invoke-direct {p1}, Lo/computeSFixed32SizeNoTag;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
