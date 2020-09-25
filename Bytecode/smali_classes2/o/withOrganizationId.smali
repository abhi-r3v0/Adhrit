.class public abstract Lo/withOrganizationId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CrashlyticsReport$Session$Application$Organization;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/withOrganizationId$extraCallback;,
        Lo/withOrganizationId$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/withOrganizationId;->elements:Ljava/util/List;

    return-void
.end method

.method static coercedFieldValuesArray(Lo/writeRawMessageSetExtension;)Lo/toByteString$onMessageChannelReady;
    .locals 2

    .line 89
    invoke-static {p0}, Lo/withSessionEndFields;->isArray(Lo/writeRawMessageSetExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1673
    iget v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 1674
    iget-object p0, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    check-cast p0, Lo/toByteString;

    goto :goto_0

    .line 1676
    :cond_0
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->toBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/toByteString$onMessageChannelReady;

    return-object p0

    .line 93
    :cond_1
    invoke-static {}, Lo/toByteString;->onNavigationEvent()Lo/toByteString$onMessageChannelReady;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract apply(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
.end method

.method public applyToLocalView(Lo/writeRawMessageSetExtension;Lo/getStream;)Lo/writeRawMessageSetExtension;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lo/withOrganizationId;->apply(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method public applyToRemoteDocument(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lo/withOrganizationId;->apply(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object p1

    return-object p1
.end method

.method public computeBaseValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    check-cast p1, Lo/withOrganizationId;

    .line 71
    iget-object v0, p0, Lo/withOrganizationId;->elements:Ljava/util/List;

    iget-object p1, p1, Lo/withOrganizationId;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/withOrganizationId;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Lo/withOrganizationId;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
