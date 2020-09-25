.class public final Lo/setNdkPayload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MERGE_ALL_FIELDS:Lo/setNdkPayload;

.field static final OVERWRITE:Lo/setNdkPayload;


# instance fields
.field private final fieldMask:Lo/CrashlyticsReport$CustomAttribute;

.field private final merge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lo/setNdkPayload;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/setNdkPayload;-><init>(ZLo/CrashlyticsReport$CustomAttribute;)V

    sput-object v0, Lo/setNdkPayload;->OVERWRITE:Lo/setNdkPayload;

    .line 37
    new-instance v0, Lo/setNdkPayload;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/setNdkPayload;-><init>(ZLo/CrashlyticsReport$CustomAttribute;)V

    sput-object v0, Lo/setNdkPayload;->MERGE_ALL_FIELDS:Lo/setNdkPayload;

    return-void
.end method

.method private constructor <init>(ZLo/CrashlyticsReport$CustomAttribute;)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Cannot specify a fieldMask for non-merge sets()"

    .line 43
    invoke-static {v1, v2, v0}, Lo/toStringMap$onNavigationEvent;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iput-boolean p1, p0, Lo/setNdkPayload;->merge:Z

    .line 45
    iput-object p2, p0, Lo/setNdkPayload;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    return-void
.end method

.method public static merge()Lo/setNdkPayload;
    .locals 1

    .line 66
    sget-object v0, Lo/setNdkPayload;->MERGE_ALL_FIELDS:Lo/setNdkPayload;

    return-object v0
.end method

.method public static mergeFieldPaths(Ljava/util/List;)Lo/setNdkPayload;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;",
            ">;)",
            "Lo/setNdkPayload;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    .line 125
    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Lo/setNdkPayload;

    const/4 v1, 0x1

    invoke-static {v0}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lo/setNdkPayload;-><init>(ZLo/CrashlyticsReport$CustomAttribute;)V

    return-object p0
.end method

.method public static mergeFields(Ljava/util/List;)Lo/setNdkPayload;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/setNdkPayload;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    invoke-static {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Lo/setNdkPayload;

    const/4 v1, 0x1

    invoke-static {v0}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lo/setNdkPayload;-><init>(ZLo/CrashlyticsReport$CustomAttribute;)V

    return-object p0
.end method

.method public static varargs mergeFields([Ljava/lang/String;)Lo/setNdkPayload;
    .locals 4

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 105
    invoke-static {v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->fromDotSeparatedPath(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;

    move-result-object v3

    invoke-virtual {v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventDeviceEncoder;->getInternalPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance p0, Lo/setNdkPayload;

    invoke-static {v0}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lo/setNdkPayload;-><init>(ZLo/CrashlyticsReport$CustomAttribute;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    check-cast p1, Lo/setNdkPayload;

    .line 142
    iget-boolean v2, p0, Lo/setNdkPayload;->merge:Z

    iget-boolean v3, p1, Lo/setNdkPayload;->merge:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 145
    :cond_2
    iget-object v2, p0, Lo/setNdkPayload;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    iget-object p1, p1, Lo/setNdkPayload;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getFieldMask()Lo/CrashlyticsReport$CustomAttribute;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/setNdkPayload;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 150
    iget-boolean v0, p0, Lo/setNdkPayload;->merge:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object v1, p0, Lo/setNdkPayload;->fieldMask:Lo/CrashlyticsReport$CustomAttribute;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method final isMerge()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lo/setNdkPayload;->merge:Z

    return v0
.end method
