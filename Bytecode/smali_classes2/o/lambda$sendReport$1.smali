.class public final Lo/lambda$sendReport$1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Lo/writeStringNoTag;Ljava/lang/Class;Ljava/lang/Object;)Lo/computeDoubleSize;
    .locals 3

    if-eqz p2, :cond_1

    .line 1098
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1100
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    .line 46
    :goto_0
    invoke-static {p2}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v0

    if-eq p1, p2, :cond_4

    .line 1113
    instance-of p2, v0, Lo/DataTransportCrashlyticsReportSender$$Lambda$2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    instance-of p2, v0, Lo/computeBytesSizeNoTag$extraCallback;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    .line 1556
    invoke-static {p1}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p0

    .line 2113
    instance-of p1, p0, Lo/DataTransportCrashlyticsReportSender$$Lambda$2;

    if-nez p1, :cond_3

    instance-of p1, p0, Lo/computeBytesSizeNoTag$extraCallback;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static onPostMessage(Lo/writeStringNoTag;Lo/writeRawByte;Ljava/lang/Object;)Lo/computeDoubleSize;
    .locals 3

    .line 3101
    iget-object v0, p1, Lo/writeRawByte;->onNavigationEvent:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 4098
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 4100
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 79
    :goto_0
    invoke-static {p2}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v1

    if-eq v0, p2, :cond_4

    .line 4113
    instance-of p2, v1, Lo/DataTransportCrashlyticsReportSender$$Lambda$2;

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    instance-of p2, v1, Lo/computeBytesSizeNoTag$extraCallback;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    .line 82
    invoke-virtual {p0, p1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p0

    .line 5113
    instance-of p1, p0, Lo/DataTransportCrashlyticsReportSender$$Lambda$2;

    if-nez p1, :cond_3

    instance-of p1, p0, Lo/computeBytesSizeNoTag$extraCallback;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    return-object p0

    :cond_4
    return-object v1
.end method
