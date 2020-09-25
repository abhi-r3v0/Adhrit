.class final Lo/computeSInt64SizeNoTag$24;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/computeFloatSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/computeDoubleSize;

.field private synthetic onNavigationEvent:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lo/computeDoubleSize;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lo/computeSInt64SizeNoTag$24;->onNavigationEvent:Ljava/lang/Class;

    iput-object p2, p0, Lo/computeSInt64SizeNoTag$24;->ICustomTabsCallback:Lo/computeDoubleSize;

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

    .line 837
    iget-object p2, p0, Lo/computeSInt64SizeNoTag$24;->onNavigationEvent:Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lo/computeSInt64SizeNoTag$24;->ICustomTabsCallback:Lo/computeDoubleSize;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/computeSInt64SizeNoTag$24;->onNavigationEvent:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/computeSInt64SizeNoTag$24;->ICustomTabsCallback:Lo/computeDoubleSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
