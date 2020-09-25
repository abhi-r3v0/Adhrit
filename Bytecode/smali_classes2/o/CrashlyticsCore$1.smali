.class public final Lo/CrashlyticsCore$1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final injection:I

.field private final type:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null dependency anInterface."

    .line 44
    invoke-static {p1, v0}, Lo/component25;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lo/CrashlyticsCore$1;->anInterface:Ljava/lang/Class;

    .line 45
    iput p2, p0, Lo/CrashlyticsCore$1;->type:I

    .line 46
    iput p3, p0, Lo/CrashlyticsCore$1;->injection:I

    return-void
.end method

.method public static optional(Ljava/lang/Class;)Lo/CrashlyticsCore$1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/CrashlyticsCore$1;"
        }
    .end annotation

    .line 50
    new-instance v0, Lo/CrashlyticsCore$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lo/CrashlyticsCore$1;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static optionalProvider(Ljava/lang/Class;)Lo/CrashlyticsCore$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/CrashlyticsCore$1;"
        }
    .end annotation

    .line 62
    new-instance v0, Lo/CrashlyticsCore$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lo/CrashlyticsCore$1;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static required(Ljava/lang/Class;)Lo/CrashlyticsCore$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/CrashlyticsCore$1;"
        }
    .end annotation

    .line 54
    new-instance v0, Lo/CrashlyticsCore$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/CrashlyticsCore$1;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static requiredProvider(Ljava/lang/Class;)Lo/CrashlyticsCore$1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/CrashlyticsCore$1;"
        }
    .end annotation

    .line 66
    new-instance v0, Lo/CrashlyticsCore$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Lo/CrashlyticsCore$1;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOf(Ljava/lang/Class;)Lo/CrashlyticsCore$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/CrashlyticsCore$1;"
        }
    .end annotation

    .line 58
    new-instance v0, Lo/CrashlyticsCore$1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo/CrashlyticsCore$1;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method

.method public static setOfProvider(Ljava/lang/Class;)Lo/CrashlyticsCore$1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/CrashlyticsCore$1;"
        }
    .end annotation

    .line 70
    new-instance v0, Lo/CrashlyticsCore$1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lo/CrashlyticsCore$1;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 91
    instance-of v0, p1, Lo/CrashlyticsCore$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lo/CrashlyticsCore$1;

    .line 93
    iget-object v0, p0, Lo/CrashlyticsCore$1;->anInterface:Ljava/lang/Class;

    iget-object v2, p1, Lo/CrashlyticsCore$1;->anInterface:Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/CrashlyticsCore$1;->type:I

    iget v2, p1, Lo/CrashlyticsCore$1;->type:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/CrashlyticsCore$1;->injection:I

    iget p1, p1, Lo/CrashlyticsCore$1;->injection:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final getInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lo/CrashlyticsCore$1;->anInterface:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 101
    iget-object v0, p0, Lo/CrashlyticsCore$1;->anInterface:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 103
    iget v2, p0, Lo/CrashlyticsCore$1;->type:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 105
    iget v1, p0, Lo/CrashlyticsCore$1;->injection:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isDirectInjection()Z
    .locals 1

    .line 86
    iget v0, p0, Lo/CrashlyticsCore$1;->injection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRequired()Z
    .locals 2

    .line 78
    iget v0, p0, Lo/CrashlyticsCore$1;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSet()Z
    .locals 2

    .line 82
    iget v0, p0, Lo/CrashlyticsCore$1;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsCore$1;->anInterface:Ljava/lang/Class;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v1, p0, Lo/CrashlyticsCore$1;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "required"

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "optional"

    goto :goto_0

    :cond_1
    const-string v1, "set"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direct="

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/CrashlyticsCore$1;->injection:I

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 117
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
