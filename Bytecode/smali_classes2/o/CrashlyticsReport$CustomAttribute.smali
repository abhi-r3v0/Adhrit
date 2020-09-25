.class public final Lo/CrashlyticsReport$CustomAttribute;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mask:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    return-void
.end method

.method public static fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
            ">;)",
            "Lo/CrashlyticsReport$CustomAttribute;"
        }
    .end annotation

    .line 30
    new-instance v0, Lo/CrashlyticsReport$CustomAttribute;

    invoke-direct {v0, p0}, Lo/CrashlyticsReport$CustomAttribute;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public final covers(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Z
    .locals 2

    .line 63
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 64
    invoke-virtual {v1, p1}, Lo/setRamUsed;->isPrefixOf(Lo/setRamUsed;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$CustomAttribute;

    .line 49
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    iget-object p1, p1, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getMask()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 74
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FieldMask{mask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsReport$CustomAttribute;->mask:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
