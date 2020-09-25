.class public Lo/setContents;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setContents$onPostMessage;
    }
.end annotation


# instance fields
.field private final document:Lo/setDiskUsed;

.field private final type:Lo/setContents$onPostMessage;


# direct methods
.method private constructor <init>(Lo/setContents$onPostMessage;Lo/setDiskUsed;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/setContents;->type:Lo/setContents$onPostMessage;

    .line 42
    iput-object p2, p0, Lo/setContents;->document:Lo/setDiskUsed;

    return-void
.end method

.method public static create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;
    .locals 1

    .line 33
    new-instance v0, Lo/setContents;

    invoke-direct {v0, p0, p1}, Lo/setContents;-><init>(Lo/setContents$onPostMessage;Lo/setDiskUsed;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 55
    instance-of v0, p1, Lo/setContents;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    check-cast p1, Lo/setContents;

    .line 60
    iget-object v0, p0, Lo/setContents;->type:Lo/setContents$onPostMessage;

    iget-object v2, p1, Lo/setContents;->type:Lo/setContents$onPostMessage;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setContents;->document:Lo/setDiskUsed;

    iget-object p1, p1, Lo/setContents;->document:Lo/setDiskUsed;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getDocument()Lo/setDiskUsed;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/setContents;->document:Lo/setDiskUsed;

    return-object v0
.end method

.method public getType()Lo/setContents$onPostMessage;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/setContents;->type:Lo/setContents$onPostMessage;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 66
    iget-object v0, p0, Lo/setContents;->type:Lo/setContents$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x763

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v1, p0, Lo/setContents;->document:Lo/setDiskUsed;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocumentViewChange("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setContents;->document:Lo/setDiskUsed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setContents;->type:Lo/setContents$onPostMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
