.class public final Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
.super Lo/setRamUsed;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setRamUsed<",
        "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

.field public static final KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "__name__"

    .line 24
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromSingleSegment(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 25
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;-><init>(Ljava/util/List;)V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->EMPTY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lo/setRamUsed;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static fromSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;"
        }
    .end annotation

    .line 38
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->EMPTY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-object p0

    :cond_0
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 8

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "). Paths must not be empty, begin with \'.\', end with \'.\', or contain \'..\'"

    const-string v6, "Invalid field path ("

    if-ge v2, v4, :cond_6

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x5c

    if-ne v4, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trailing escape character is not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v7, 0x2e

    if-ne v4, v7, :cond_4

    if-nez v3, :cond_3

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v5, 0x60

    if-ne v4, v5, :cond_5

    xor-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    :cond_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance p0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;-><init>(Ljava/util/List;)V

    return-object p0

    .line 90
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromSingleSegment(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1

    .line 33
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 10

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    const/16 v6, 0x5f

    if-eq v0, v6, :cond_3

    if-lt v0, v5, :cond_1

    if-le v0, v3, :cond_3

    :cond_1
    if-lt v0, v4, :cond_2

    if-le v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x1

    const/4 v7, 0x1

    .line 112
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 113
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v6, :cond_7

    if-lt v8, v5, :cond_4

    if-le v8, v3, :cond_7

    :cond_4
    if-lt v8, v4, :cond_5

    if-le v8, v2, :cond_7

    :cond_5
    const/16 v9, 0x30

    if-lt v8, v9, :cond_6

    const/16 v9, 0x39

    if-le v8, v9, :cond_7

    :cond_6
    return v1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method


# virtual methods
.method public final canonicalString()Ljava/lang/String;
    .locals 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_0

    const-string v2, "."

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    iget-object v2, p0, Lo/setRamUsed;->segments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\\"

    const-string v4, "\\\\"

    .line 130
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "`"

    const-string v4, "\\`"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x60

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final createPathWithSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;"
        }
    .end annotation

    .line 43
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-direct {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method final bridge synthetic createPathWithSegments(Ljava/util/List;)Lo/setRamUsed;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->createPathWithSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    return-object p1
.end method

.method public final isKeyField()Z
    .locals 1

    .line 142
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
