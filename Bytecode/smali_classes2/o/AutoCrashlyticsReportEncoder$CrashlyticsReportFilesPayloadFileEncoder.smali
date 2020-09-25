.class public Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final bytes:Lo/SessionProtobufHelper;


# direct methods
.method private constructor <init>(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    return-void
.end method

.method public static fromByteString(Lo/SessionProtobufHelper;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;
    .locals 1

    const-string v0, "Provided ByteString must not be null."

    .line 50
    invoke-static {p0, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;-><init>(Lo/SessionProtobufHelper;)V

    return-object v0
.end method

.method public static fromBytes([B)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;
    .locals 1

    const-string v0, "Provided bytes array must not be null."

    .line 42
    invoke-static {p0, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-static {p0}, Lo/SessionProtobufHelper;->onNavigationEvent([B)Lo/SessionProtobufHelper;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;-><init>(Lo/SessionProtobufHelper;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    invoke-virtual {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->compareTo(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;)I
    .locals 1

    .line 85
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    iget-object p1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    invoke-static {v0, p1}, Lo/eventFromJson;->compareByteStrings(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 75
    instance-of v0, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;

    iget-object p1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toByteString()Lo/SessionProtobufHelper;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public toBytes()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Blob { bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadFileEncoder;->bytes:Lo/SessionProtobufHelper;

    invoke-static {v1}, Lo/eventFromJson;->toDebugString(Lo/SessionProtobufHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
