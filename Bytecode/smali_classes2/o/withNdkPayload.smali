.class public final Lo/withNdkPayload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/withNdkPayload;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lo/withNdkPayload;


# instance fields
.field private final timestamp:Lo/getStream;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lo/withNdkPayload;

    new-instance v1, Lo/getStream;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lo/getStream;-><init>(JI)V

    invoke-direct {v0, v1}, Lo/withNdkPayload;-><init>(Lo/getStream;)V

    sput-object v0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    return-void
.end method

.method public constructor <init>(Lo/getStream;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/withNdkPayload;->timestamp:Lo/getStream;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lo/withNdkPayload;

    invoke-virtual {p0, p1}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lo/withNdkPayload;)I
    .locals 1

    .line 41
    iget-object v0, p0, Lo/withNdkPayload;->timestamp:Lo/getStream;

    iget-object p1, p1, Lo/withNdkPayload;->timestamp:Lo/getStream;

    invoke-virtual {v0, p1}, Lo/getStream;->compareTo(Lo/getStream;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lo/withNdkPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 52
    :cond_1
    check-cast p1, Lo/withNdkPayload;

    .line 53
    invoke-virtual {p0, p1}, Lo/withNdkPayload;->compareTo(Lo/withNdkPayload;)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getTimestamp()Lo/getStream;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/withNdkPayload;->timestamp:Lo/getStream;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SnapshotVersion(seconds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/withNdkPayload;->timestamp:Lo/getStream;

    .line 64
    invoke-virtual {v1}, Lo/getStream;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/withNdkPayload;->timestamp:Lo/getStream;

    .line 66
    invoke-virtual {v1}, Lo/getStream;->getNanoseconds()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
