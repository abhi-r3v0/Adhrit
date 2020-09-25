.class public final Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DOCUMENT_ID_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

.field private static final RESERVED:Ljava/util/regex/Pattern;


# instance fields
.field private final internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "[~*/\\[\\]]"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->RESERVED:Ljava/util/regex/Pattern;

    .line 68
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-direct {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    sput-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->DOCUMENT_ID_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromSegments(Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-void
.end method

.method public static documentId()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;
    .locals 1

    .line 77
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->DOCUMENT_ID_INSTANCE:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    return-object v0
.end method

.method static fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;
    .locals 3

    const-string v0, "Provided field path must not be null."

    .line 82
    invoke-static {p0, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->RESERVED:Ljava/util/regex/Pattern;

    .line 84
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Use FieldPath.of() for field names containing \'~*/[]\'."

    .line 83
    invoke-static {v0, v2, v1}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "\\."

    const/4 v1, -0x1

    .line 88
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->of([Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 90
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid field path ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). Paths must not be empty, begin with \'.\', end with \'.\', or contain \'..\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs of([Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;
    .locals 6

    .line 57
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Invalid field path. Provided path must not be empty."

    invoke-static {v0, v4, v3}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 59
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 60
    aget-object v3, p0, v0

    if-eqz v3, :cond_1

    aget-object v3, p0, v0

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid field name at argument "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". Field names must not be null or empty."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 60
    invoke-static {v3, v4, v5}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    .line 113
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    iget-object p1, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method final getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 118
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->internalPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
