.class public final Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;
.super Lo/CrashlyticsReport$Session$OperatingSystem;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReport$Session$OperatingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final cause:Lo/emptyMap;

.field private final changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

.field private final resumeToken:Lo/SessionProtobufHelper;

.field private final targetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 189
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$Builder;->EMPTY_RESUME_TOKEN:Lo/SessionProtobufHelper;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;Ljava/util/List;Lo/SessionProtobufHelper;Lo/emptyMap;)V

    return-void
.end method

.method public constructor <init>(Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;Ljava/util/List;Lo/SessionProtobufHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/SessionProtobufHelper;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, p2, p3, v0}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;Ljava/util/List;Lo/SessionProtobufHelper;Lo/emptyMap;)V

    return-void
.end method

.method public constructor <init>(Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;Ljava/util/List;Lo/SessionProtobufHelper;Lo/emptyMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/SessionProtobufHelper;",
            "Lo/emptyMap;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$OperatingSystem;-><init>(Lo/CrashlyticsReport$Session$OperatingSystem$4;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 203
    sget-object v3, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Got cause for a target change that was not a removal"

    invoke-static {v3, v5, v4}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iput-object p1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 207
    iput-object p2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->targetIds:Ljava/util/List;

    .line 208
    iput-object p3, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->resumeToken:Lo/SessionProtobufHelper;

    if-eqz p4, :cond_3

    .line 1516
    sget-object p1, Lo/emptyMap$onPostMessage;->onMessageChannelReady:Lo/emptyMap$onPostMessage;

    iget-object p2, p4, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_3

    .line 212
    iput-object p4, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    return-void

    .line 214
    :cond_3
    iput-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

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

    if-eqz p1, :cond_7

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;

    .line 259
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    if-eq v2, v3, :cond_2

    return v1

    .line 262
    :cond_2
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->targetIds:Ljava/util/List;

    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->targetIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 265
    :cond_3
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->resumeToken:Lo/SessionProtobufHelper;

    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->resumeToken:Lo/SessionProtobufHelper;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 269
    :cond_4
    iget-object v2, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    if-eqz v2, :cond_6

    .line 270
    iget-object v3, p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    if-eqz v3, :cond_5

    .line 2492
    iget-object v2, v2, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 270
    iget-object p1, p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    .line 3492
    iget-object p1, p1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 270
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    return v1

    .line 272
    :cond_6
    iget-object p1, p1, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    if-nez p1, :cond_7

    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final getCause()Lo/emptyMap;
    .locals 1

    .line 240
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    return-object v0
.end method

.method public final getChangeType()Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    return-object v0
.end method

.method public final getResumeToken()Lo/SessionProtobufHelper;
    .locals 1

    .line 234
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->resumeToken:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->targetIds:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 278
    iget-object v0, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->targetIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->resumeToken:Lo/SessionProtobufHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->cause:Lo/emptyMap;

    if-eqz v1, :cond_0

    .line 4492
    iget-object v1, v1, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 281
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

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WatchTargetChange{changeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->changeType:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->targetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
