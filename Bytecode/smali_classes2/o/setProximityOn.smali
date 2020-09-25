.class public final Lo/setProximityOn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/setProximityOn;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_DATABASE_ID:Ljava/lang/String; = "(default)"


# instance fields
.field private final databaseId:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lo/setProximityOn;->projectId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    return-void
.end method

.method public static forDatabase(Ljava/lang/String;Ljava/lang/String;)Lo/setProximityOn;
    .locals 1

    .line 30
    new-instance v0, Lo/setProximityOn;

    invoke-direct {v0, p0, p1}, Lo/setProximityOn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forProject(Ljava/lang/String;)Lo/setProximityOn;
    .locals 1

    const-string v0, "(default)"

    .line 26
    invoke-static {p0, v0}, Lo/setProximityOn;->forDatabase(Ljava/lang/String;Ljava/lang/String;)Lo/setProximityOn;

    move-result-object p0

    return-object p0
.end method

.method public static fromName(Ljava/lang/String;)Lo/setProximityOn;
    .locals 5

    .line 44
    invoke-static {p0}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 47
    invoke-virtual {p0, v3}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "projects"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p0, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "databases"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v3

    const-string v3, "Tried to parse an invalid resource name: %s"

    .line 45
    invoke-static {v0, v3, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v0, Lo/setProximityOn;

    invoke-virtual {p0, v2}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lo/setProximityOn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lo/setProximityOn;

    invoke-virtual {p0, p1}, Lo/setProximityOn;->compareTo(Lo/setProximityOn;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lo/setProximityOn;)I
    .locals 2

    .line 90
    iget-object v0, p0, Lo/setProximityOn;->projectId:Ljava/lang/String;

    iget-object v1, p1, Lo/setProximityOn;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    iget-object p1, p1, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Lo/setProximityOn;

    .line 78
    iget-object v2, p0, Lo/setProximityOn;->projectId:Ljava/lang/String;

    iget-object v3, p1, Lo/setProximityOn;->projectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    iget-object p1, p1, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getDatabaseId()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProjectId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/setProximityOn;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 83
    iget-object v0, p0, Lo/setProximityOn;->projectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v1, p0, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setProximityOn;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setProximityOn;->databaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
