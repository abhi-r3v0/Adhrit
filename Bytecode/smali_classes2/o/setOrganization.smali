.class public Lo/setOrganization;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setOrganization$onPostMessage;
    }
.end annotation


# instance fields
.field private final direction:Lo/setOrganization$onPostMessage;

.field final field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;


# direct methods
.method private constructor <init>(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    .line 58
    iput-object p2, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-void
.end method

.method public static getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;
    .locals 1

    .line 42
    new-instance v0, Lo/setOrganization;

    invoke-direct {v0, p0, p1}, Lo/setOrganization;-><init>(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)V

    return-object v0
.end method


# virtual methods
.method compare(Lo/setDiskUsed;Lo/setDiskUsed;)I
    .locals 3

    .line 62
    iget-object v0, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    sget-object v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->KEY_PATH:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    invoke-virtual {v0}, Lo/setOrganization$onPostMessage;->getComparisonModifier()I

    move-result v0

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result p1

    :goto_0
    mul-int v0, v0, p1

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {p1, v0}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {p2, v0}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Trying to compare documents on fields that don\'t exist."

    .line 67
    invoke-static {v1, v2, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    invoke-virtual {v0}, Lo/setOrganization$onPostMessage;->getComparisonModifier()I

    move-result v0

    invoke-static {p1, p2}, Lo/withSessionEndFields;->compare(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)I

    move-result p1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 75
    instance-of v1, p1, Lo/setOrganization;

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    check-cast p1, Lo/setOrganization;

    .line 80
    iget-object v1, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    iget-object v2, p1, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    iget-object p1, p1, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getDirection()Lo/setOrganization$onPostMessage;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    return-object v0
.end method

.method public getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 86
    iget-object v0, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x383

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object v1, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/setOrganization;->direction:Lo/setOrganization$onPostMessage;

    sget-object v2, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setOrganization;->field:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    invoke-virtual {v1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
