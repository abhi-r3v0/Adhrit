.class public final Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;
.super Lo/CrashlyticsReport$Session$OperatingSystem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$OperatingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private final existenceFilter:Lo/CrashlyticsReport$Session$Event$Application$Builder;

.field private final targetId:I


# direct methods
.method public constructor <init>(ILo/CrashlyticsReport$Session$Event$Application$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$OperatingSystem;-><init>(Lo/CrashlyticsReport$Session$OperatingSystem$4;)V

    .line 146
    iput p1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->targetId:I

    .line 147
    iput-object p2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->existenceFilter:Lo/CrashlyticsReport$Session$Event$Application$Builder;

    return-void
.end method


# virtual methods
.method public final getExistenceFilter()Lo/CrashlyticsReport$Session$Event$Application$Builder;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->existenceFilter:Lo/CrashlyticsReport$Session$Event$Application$Builder;

    return-object v0
.end method

.method public final getTargetId()I
    .locals 1

    .line 152
    iget v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->targetId:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExistenceFilterWatchChange{targetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", existenceFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->existenceFilter:Lo/CrashlyticsReport$Session$Event$Application$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
