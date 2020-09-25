.class final Lo/computeBytesSizeNoTag$5;
.super Lo/computeBytesSizeNoTag$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/computeBytesSizeNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/reflect/Field;

.field private synthetic ICustomTabsCallback$Stub:Z

.field private synthetic asBinder:Lo/writeStringNoTag;

.field private synthetic asInterface:Lo/computeDoubleSize;

.field private synthetic onPostMessage:Z

.field private synthetic onRelationshipValidationResult:Lo/writeRawByte;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLo/computeDoubleSize;Lo/writeStringNoTag;Lo/writeRawByte;Z)V
    .locals 0

    .line 120
    iput-object p4, p0, Lo/computeBytesSizeNoTag$5;->ICustomTabsCallback:Ljava/lang/reflect/Field;

    iput-boolean p5, p0, Lo/computeBytesSizeNoTag$5;->onPostMessage:Z

    iput-object p6, p0, Lo/computeBytesSizeNoTag$5;->asInterface:Lo/computeDoubleSize;

    iput-object p7, p0, Lo/computeBytesSizeNoTag$5;->asBinder:Lo/writeStringNoTag;

    iput-object p8, p0, Lo/computeBytesSizeNoTag$5;->onRelationshipValidationResult:Lo/writeRawByte;

    iput-boolean p9, p0, Lo/computeBytesSizeNoTag$5;->ICustomTabsCallback$Stub:Z

    invoke-direct {p0, p1, p2, p3}, Lo/computeBytesSizeNoTag$onMessageChannelReady;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/checkNoSpaceLeft;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/computeBytesSizeNoTag$5;->asInterface:Lo/computeDoubleSize;

    invoke-virtual {v0, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 132
    iget-boolean v0, p0, Lo/computeBytesSizeNoTag$5;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lo/computeBytesSizeNoTag$5;->ICustomTabsCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method final extraCallback(Lo/computeTagSize;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lo/computeBytesSizeNoTag$5;->ICustomTabsCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 125
    iget-boolean v0, p0, Lo/computeBytesSizeNoTag$5;->onPostMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/computeBytesSizeNoTag$5;->asInterface:Lo/computeDoubleSize;

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lo/computeSInt32SizeNoTag;

    iget-object v1, p0, Lo/computeBytesSizeNoTag$5;->asBinder:Lo/writeStringNoTag;

    iget-object v2, p0, Lo/computeBytesSizeNoTag$5;->asInterface:Lo/computeDoubleSize;

    iget-object v3, p0, Lo/computeBytesSizeNoTag$5;->onRelationshipValidationResult:Lo/writeRawByte;

    .line 1101
    iget-object v3, v3, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    .line 126
    invoke-direct {v0, v1, v2, v3}, Lo/computeSInt32SizeNoTag;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;Ljava/lang/reflect/Type;)V

    .line 127
    :goto_0
    invoke-virtual {v0, p1, p2}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lo/computeBytesSizeNoTag$onMessageChannelReady;->onNavigationEvent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    iget-object v0, p0, Lo/computeBytesSizeNoTag$5;->ICustomTabsCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
