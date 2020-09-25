.class public final Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;
.super Lo/CrashlyticsReport$Session$OperatingSystem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$OperatingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private final documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private final newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

.field private final removedTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$OperatingSystem;-><init>(Lo/CrashlyticsReport$Session$OperatingSystem$4;)V

    .line 63
    iput-object p1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->updatedTargetIds:Ljava/util/List;

    .line 64
    iput-object p2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->removedTargetIds:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 66
    iput-object p4, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;

    .line 114
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->updatedTargetIds:Ljava/util/List;

    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->updatedTargetIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 117
    :cond_2
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->removedTargetIds:Ljava/util/List;

    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->removedTargetIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 120
    :cond_3
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 123
    :cond_4
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    iget-object p1, p1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final getDocumentKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object v0
.end method

.method public final getNewDocument()Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    return-object v0
.end method

.method public final getRemovedTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->removedTargetIds:Ljava/util/List;

    return-object v0
.end method

.method public final getUpdatedTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->updatedTargetIds:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 128
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->updatedTargetIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->removedTargetIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

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

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocumentChange{updatedTargetIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->updatedTargetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removedTargetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->removedTargetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->documentKey:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newDocument="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->newDocument:Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
