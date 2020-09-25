.class public final Lo/getIdentifierUtf8Bytes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Application$Organization;


# instance fields
.field private operand:Lo/writeRawMessageSetExtension;


# direct methods
.method public constructor <init>(Lo/writeRawMessageSetExtension;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lo/withSessionEndFields;->isNumber(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NumericIncrementTransformOperation expects a NumberValue operand"

    .line 36
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    return-void
.end method

.method private operandAsDouble()D
    .locals 3

    .line 103
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    invoke-static {v0}, Lo/withSessionEndFields;->isDouble(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    .line 3246
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3247
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 105
    :cond_1
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    invoke-static {v0}, Lo/withSessionEndFields;->isInteger(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    .line 4204
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4205
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    long-to-double v0, v0

    return-wide v0

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \'operand\' to be of Number type, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {v0, v1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private operandAsLong()J
    .locals 3

    .line 115
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    invoke-static {v0}, Lo/withSessionEndFields;->isDouble(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    .line 4246
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 4247
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    double-to-long v0, v0

    return-wide v0

    .line 117
    :cond_1
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    invoke-static {v0}, Lo/withSessionEndFields;->isInteger(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    .line 5204
    iget v1, v0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5205
    iget-object v0, v0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \'operand\' to be of Number type, but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {v0, v1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private safeIncrement(JJ)J
    .locals 3

    add-long v0, p1, p3

    xor-long/2addr p1, v0

    xor-long/2addr p3, v0

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    cmp-long p1, v0, p3

    if-ltz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_1
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method


# virtual methods
.method public final applyToLocalView(Lo/writeRawMessageSetExtension;Lo/getStream;)Lo/writeRawMessageSetExtension;
    .locals 4

    .line 44
    invoke-virtual {p0, p1}, Lo/getIdentifierUtf8Bytes;->computeBaseValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object p2

    .line 47
    invoke-static {p2}, Lo/withSessionEndFields;->isInteger(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    invoke-static {v0}, Lo/withSessionEndFields;->isInteger(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    iget p1, p2, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p1, v3, :cond_0

    .line 1205
    iget-object p1, p2, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 48
    :cond_0
    invoke-direct {p0}, Lo/getIdentifierUtf8Bytes;->operandAsLong()J

    move-result-wide p1

    invoke-direct {p0, v1, v2, p1, p2}, Lo/getIdentifierUtf8Bytes;->safeIncrement(JJ)J

    move-result-wide p1

    .line 49
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(J)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 50
    :cond_1
    invoke-static {p2}, Lo/withSessionEndFields;->isInteger(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2204
    iget p1, p2, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    if-ne p1, v3, :cond_2

    .line 2205
    iget-object p1, p2, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    :cond_2
    long-to-double p1, v1

    .line 51
    invoke-direct {p0}, Lo/getIdentifierUtf8Bytes;->operandAsDouble()D

    move-result-wide v0

    add-double/2addr p1, v0

    .line 52
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(D)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1

    .line 55
    :cond_3
    invoke-static {p2}, Lo/withSessionEndFields;->isDouble(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Expected NumberValue to be of type DoubleValue, but was "

    .line 54
    invoke-static {v0, p1, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2246
    iget p1, p2, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2247
    iget-object p1, p2, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    :cond_4
    const-wide/16 p1, 0x0

    .line 58
    :goto_0
    invoke-direct {p0}, Lo/getIdentifierUtf8Bytes;->operandAsDouble()D

    move-result-wide v0

    add-double/2addr p1, v0

    .line 59
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(D)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method

.method public final applyToRemoteDocument(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 0

    return-object p2
.end method

.method public final computeBaseValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 2

    .line 78
    invoke-static {p1}, Lo/withSessionEndFields;->isNumber(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 80
    :cond_0
    invoke-static {}, Lo/writeRawMessageSetExtension;->ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lo/writeRawMessageSetExtension$extraCallback;->extraCallback(J)Lo/writeRawMessageSetExtension$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeRawMessageSetExtension;

    return-object p1
.end method

.method public final getOperand()Lo/writeRawMessageSetExtension;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/getIdentifierUtf8Bytes;->operand:Lo/writeRawMessageSetExtension;

    return-object v0
.end method
