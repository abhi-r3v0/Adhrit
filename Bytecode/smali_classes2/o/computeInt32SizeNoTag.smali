.class public final Lo/computeInt32SizeNoTag;
.super Lo/checkNoSpaceLeft;
.source ""


# static fields
.field private static final onPostMessage:Ljava/io/Reader;

.field private static final onTransact:Ljava/lang/Object;


# instance fields
.field public ICustomTabsCallback:[Ljava/lang/Object;

.field private asBinder:[I

.field private asInterface:[Ljava/lang/String;

.field public extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lo/computeInt32SizeNoTag$4;

    invoke-direct {v0}, Lo/computeInt32SizeNoTag$4;-><init>()V

    sput-object v0, Lo/computeInt32SizeNoTag;->onPostMessage:Ljava/io/Reader;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/computeInt32SizeNoTag;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/writeEnumNoTag;)V
    .locals 2

    .line 67
    sget-object v0, Lo/computeInt32SizeNoTag;->onPostMessage:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lo/checkNoSpaceLeft;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    .line 52
    iput-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 53
    iput v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    new-array v1, v0, [Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    new-array v0, v0, [I

    .line 64
    iput-object v0, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    .line 68
    invoke-virtual {p0, p1}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/writeRawBytes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8314
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 104
    sget-object v1, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    if-eq v0, v1, :cond_0

    sget-object v1, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lo/writeRawBytes;->asBinder:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 11155
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 11156
    aput-object v3, v0, v1

    .line 192
    check-cast v2, Lo/writeSFixed32NoTag;

    .line 13091
    iget-object v0, v2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 12102
    iget-object v0, v2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 12105
    :cond_0
    invoke-virtual {v2}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 193
    :goto_0
    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    if-lez v1, :cond_1

    .line 194
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1
    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 209
    sget-object v1, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    if-eq v0, v1, :cond_1

    sget-object v1, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14151
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 213
    check-cast v0, Lo/writeSFixed32NoTag;

    .line 15114
    iget-object v1, v0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 14161
    invoke-virtual {v0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 15334
    :goto_1
    iget-boolean v2, p0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    if-nez v2, :cond_4

    .line 214
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 215
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16155
    :cond_4
    :goto_2
    iget v2, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 16156
    iget-object v3, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    if-lez v2, :cond_5

    .line 219
    iget-object v3, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_5
    return-wide v0
.end method

.method public final ICustomTabsService()Ljava/lang/String;
    .locals 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 296
    :goto_0
    iget v2, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    if-ge v1, v2, :cond_2

    .line 297
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lo/writeBoolNoTag;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 298
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_0
    aget-object v3, v2, v1

    instance-of v3, v3, Lo/writeSInt32NoTag;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 302
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 305
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    sget-object v0, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 9151
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 169
    check-cast v0, Ljava/util/Iterator;

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    iget v3, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final asInterface()Lo/writeRawBytes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    :goto_0
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lo/writeRawBytes;->ICustomTabsCallback$Stub:Lo/writeRawBytes;

    return-object v0

    .line 6151
    :cond_0
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    .line 113
    instance-of v3, v2, Ljava/util/Iterator;

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, -0x2

    .line 114
    aget-object v0, v1, v0

    instance-of v0, v0, Lo/writeSInt32NoTag;

    .line 115
    check-cast v2, Ljava/util/Iterator;

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    return-object v0

    .line 120
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 124
    sget-object v0, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    return-object v0

    :cond_3
    sget-object v0, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    return-object v0

    .line 126
    :cond_4
    instance-of v0, v2, Lo/writeSInt32NoTag;

    if-eqz v0, :cond_5

    .line 127
    sget-object v0, Lo/writeRawBytes;->ICustomTabsCallback:Lo/writeRawBytes;

    return-object v0

    .line 128
    :cond_5
    instance-of v0, v2, Lo/writeBoolNoTag;

    if-eqz v0, :cond_6

    .line 129
    sget-object v0, Lo/writeRawBytes;->onMessageChannelReady:Lo/writeRawBytes;

    return-object v0

    .line 130
    :cond_6
    instance-of v0, v2, Lo/writeSFixed32NoTag;

    if-eqz v0, :cond_a

    .line 131
    check-cast v2, Lo/writeSFixed32NoTag;

    .line 7134
    iget-object v0, v2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 133
    sget-object v0, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    return-object v0

    .line 8091
    :cond_7
    iget-object v0, v2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 135
    sget-object v0, Lo/writeRawBytes;->asBinder:Lo/writeRawBytes;

    return-object v0

    .line 8114
    :cond_8
    iget-object v0, v2, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 137
    sget-object v0, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    return-object v0

    .line 139
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_a
    instance-of v0, v2, Lo/writeSInt64NoTag;

    if-eqz v0, :cond_b

    .line 142
    sget-object v0, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    return-object v0

    .line 143
    :cond_b
    sget-object v0, Lo/computeInt32SizeNoTag;->onTransact:Ljava/lang/Object;

    if-ne v2, v0, :cond_c

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 253
    sget-object v2, Lo/computeInt32SizeNoTag;->onTransact:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    .line 254
    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    return-void
.end method

.method public final extraCallback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lo/writeRawBytes;->onMessageChannelReady:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 1151
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 73
    check-cast v0, Lo/writeBoolNoTag;

    .line 74
    invoke-virtual {v0}, Lo/writeBoolNoTag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public final getInterfaceDescriptor()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    sget-object v1, Lo/writeRawBytes;->onNavigationEvent:Lo/writeRawBytes;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asBinder()Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 21155
    :cond_0
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 21156
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    if-lez v0, :cond_1

    .line 264
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 267
    :cond_1
    :goto_0
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    if-lez v0, :cond_2

    .line 268
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_2
    return-void
.end method

.method public final newSession()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 226
    sget-object v1, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    if-eq v0, v1, :cond_1

    sget-object v1, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17151
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 230
    check-cast v0, Lo/writeSFixed32NoTag;

    .line 18114
    iget-object v1, v0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 17206
    invoke-virtual {v0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 18155
    :goto_1
    iget v2, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 18156
    iget-object v3, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    if-lez v2, :cond_3

    .line 233
    iget-object v3, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    :cond_3
    return-wide v0
.end method

.method public final onMessageChannelReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    sget-object v0, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 1155
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 1156
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 2155
    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 2156
    aput-object v2, v1, v0

    if-lez v0, :cond_0

    .line 83
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lo/writeRawBytes;->ICustomTabsCallback:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 3151
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 89
    check-cast v0, Lo/writeSInt32NoTag;

    .line 4123
    iget-object v0, v0, Lo/writeSInt32NoTag;->extraCallback:Lo/computeEnumSize;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 285
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    iget-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v0, v0, 0x1

    .line 287
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    .line 289
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/computeInt32SizeNoTag;->asInterface:[Ljava/lang/String;

    .line 291
    :cond_0
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final onPostMessage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    sget-object v0, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 4155
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 4156
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 5155
    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 5156
    aput-object v2, v1, v0

    if-lez v0, :cond_0

    .line 98
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    sget-object v0, Lo/writeRawBytes;->onRelationshipValidationResult:Lo/writeRawBytes;

    invoke-virtual {p0, v0}, Lo/computeInt32SizeNoTag;->ICustomTabsCallback(Lo/writeRawBytes;)V

    .line 13155
    iget v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 13156
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    if-lez v0, :cond_0

    .line 203
    iget-object v1, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :cond_0
    return-void
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 179
    sget-object v1, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    if-eq v0, v1, :cond_1

    sget-object v1, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10155
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    .line 10156
    aput-object v3, v0, v1

    .line 183
    check-cast v2, Lo/writeSFixed32NoTag;

    invoke-virtual {v2}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    if-lez v1, :cond_2

    .line 185
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v0

    .line 240
    sget-object v1, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    if-eq v0, v1, :cond_1

    sget-object v1, Lo/writeRawBytes;->asInterface:Lo/writeRawBytes;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/writeRawBytes;->onTransact:Lo/writeRawBytes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " at path "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19151
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 244
    check-cast v0, Lo/writeSFixed32NoTag;

    .line 20114
    iget-object v1, v0, Lo/writeSFixed32NoTag;->onNavigationEvent:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 19228
    invoke-virtual {v0}, Lo/writeEnumNoTag;->ICustomTabsCallback()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lo/writeEnumNoTag;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 20155
    :goto_1
    iget v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/computeInt32SizeNoTag;->extraCallback:I

    .line 20156
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->ICustomTabsCallback:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    if-lez v1, :cond_3

    .line 247
    iget-object v2, p0, Lo/computeInt32SizeNoTag;->asBinder:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_3
    return v0
.end method
