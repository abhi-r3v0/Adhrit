.class public final Lo/CrashlyticsReport$CustomAttribute$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final fieldPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

.field private final operation:Lo/CrashlyticsReport$Session$Application$Organization;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->fieldPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 27
    iput-object p2, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->operation:Lo/CrashlyticsReport$Session$Application$Organization;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 49
    iget-object v1, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->fieldPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    iget-object v2, p1, Lo/CrashlyticsReport$CustomAttribute$Builder;->fieldPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 52
    :cond_2
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->operation:Lo/CrashlyticsReport$Session$Application$Organization;

    iget-object p1, p1, Lo/CrashlyticsReport$CustomAttribute$Builder;->operation:Lo/CrashlyticsReport$Session$Application$Organization;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->fieldPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-object v0
.end method

.method public final getOperation()Lo/CrashlyticsReport$Session$Application$Organization;
    .locals 1

    .line 35
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->operation:Lo/CrashlyticsReport$Session$Application$Organization;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 57
    iget-object v0, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->fieldPath:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lo/CrashlyticsReport$CustomAttribute$Builder;->operation:Lo/CrashlyticsReport$Session$Application$Organization;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
