.class public final Lo/setDiskUsed;
.super Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDiskUsed$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final KEY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final documentState:Lo/setDiskUsed$onMessageChannelReady;

.field private objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lo/setDiskUsed;->KEY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;)V

    .line 55
    iput-object p4, p0, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    .line 56
    iput-object p3, p0, Lo/setDiskUsed;->objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-void
.end method

.method public static keyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lo/setDiskUsed;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lo/setDiskUsed;->KEY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic lambda$static$0(Lo/setDiskUsed;Lo/setDiskUsed;)I
    .locals 0

    .line 39
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->compareTo(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lo/setDiskUsed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 90
    :cond_1
    check-cast p1, Lo/setDiskUsed;

    .line 92
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    iget-object v3, p1, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setDiskUsed;->objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    iget-object p1, p1, Lo/setDiskUsed;->objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 95
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/setDiskUsed;->objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-object v0
.end method

.method public final getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/setDiskUsed;->objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->get(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method public final hasCommittedMutations()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    sget-object v1, Lo/setDiskUsed$onMessageChannelReady;->COMMITTED_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasLocalMutations()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    sget-object v1, Lo/setDiskUsed$onMessageChannelReady;->LOCAL_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasPendingWrites()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/setDiskUsed;->hasCommittedMutations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 100
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lo/setDiskUsed;->objectValue:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Document{key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", documentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/setDiskUsed;->documentState:Lo/setDiskUsed$onMessageChannelReady;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
