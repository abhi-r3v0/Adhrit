.class public Lo/usedBytes;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private byteMessage:[B

.field private opcode:B

.field private stringMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lo/usedBytes;->stringMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 29
    iput-byte p1, p0, Lo/usedBytes;->opcode:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/usedBytes;->byteMessage:[B

    const/4 p1, 0x2

    .line 24
    iput-byte p1, p0, Lo/usedBytes;->opcode:B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lo/usedBytes;->byteMessage:[B

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/usedBytes;->stringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isBinary()Z
    .locals 2

    .line 37
    iget-byte v0, p0, Lo/usedBytes;->opcode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 2

    .line 33
    iget-byte v0, p0, Lo/usedBytes;->opcode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
