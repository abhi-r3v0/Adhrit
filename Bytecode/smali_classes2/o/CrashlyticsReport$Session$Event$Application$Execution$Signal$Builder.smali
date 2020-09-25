.class public final Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final databaseId:Lo/setProximityOn;

.field private final databaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/setProximityOn;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseId:Lo/setProximityOn;

    .line 100
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodedDatabaseId(Lo/setProximityOn;)Lo/setJailbroken;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName:Ljava/lang/String;

    return-void
.end method

.method private decodeBound(Lo/getInProgressFile;)Lo/getFilename;
    .locals 2

    .line 835
    new-instance v0, Lo/getFilename;

    .line 50979
    iget-object v1, p1, Lo/getInProgressFile;->values_:Lo/getEventLogSize$asBinder;

    .line 50980
    iget-boolean p1, p1, Lo/getInProgressFile;->before_:Z

    .line 835
    invoke-direct {v0, v1, p1}, Lo/getFilename;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method private decodeDocumentMask(Lo/writeUInt64;)Lo/CrashlyticsReport$CustomAttribute;
    .locals 4

    .line 28051
    iget-object v0, p1, Lo/writeUInt64;->fieldPaths_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    .line 372
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 28065
    iget-object v3, p1, Lo/writeUInt64;->fieldPaths_:Lo/getEventLogSize$asBinder;

    invoke-interface {v3, v2}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 374
    invoke-static {v3}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {v1}, Lo/CrashlyticsReport$CustomAttribute;->fromSet(Ljava/util/Set;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object p1

    return-object p1
.end method

.method private decodeFieldFilterOperator(Lo/writeEnum$extraCallback$onMessageChannelReady;)Lo/isCrashed$onNavigationEvent;
    .locals 2

    .line 770
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$FieldFilter$Operator:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unhandled FieldFilter.operator %d"

    .line 792
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 790
    :pswitch_0
    sget-object p1, Lo/isCrashed$onNavigationEvent;->NOT_IN:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 788
    :pswitch_1
    sget-object p1, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS_ANY:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 786
    :pswitch_2
    sget-object p1, Lo/isCrashed$onNavigationEvent;->IN:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 784
    :pswitch_3
    sget-object p1, Lo/isCrashed$onNavigationEvent;->ARRAY_CONTAINS:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 782
    :pswitch_4
    sget-object p1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 780
    :pswitch_5
    sget-object p1, Lo/isCrashed$onNavigationEvent;->GREATER_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 778
    :pswitch_6
    sget-object p1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 776
    :pswitch_7
    sget-object p1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 774
    :pswitch_8
    sget-object p1, Lo/isCrashed$onNavigationEvent;->LESS_THAN_OR_EQUAL:Lo/isCrashed$onNavigationEvent;

    return-object p1

    .line 772
    :pswitch_9
    sget-object p1, Lo/isCrashed$onNavigationEvent;->LESS_THAN:Lo/isCrashed$onNavigationEvent;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeFieldTransform(Lo/writeInt64$onPostMessage;)Lo/CrashlyticsReport$CustomAttribute$Builder;
    .locals 5

    .line 411
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$DocumentTransform$FieldTransform$TransformTypeCase:[I

    .line 28420
    iget v1, p1, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    invoke-static {v1}, Lo/writeInt64$onPostMessage$extraCallback;->onNavigationEvent(I)Lo/writeInt64$onPostMessage$extraCallback;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    .line 432
    new-instance v0, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 31442
    iget-object v1, p1, Lo/writeInt64$onPostMessage;->fieldPath_:Ljava/lang/String;

    .line 433
    invoke-static {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    new-instance v2, Lo/getIdentifierUtf8Bytes;

    .line 31608
    iget v4, p1, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    if-ne v4, v3, :cond_0

    .line 31609
    iget-object p1, p1, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    check-cast p1, Lo/writeRawMessageSetExtension;

    goto :goto_0

    .line 31611
    :cond_0
    invoke-static {}, Lo/writeRawMessageSetExtension;->onNavigationEvent()Lo/writeRawMessageSetExtension;

    move-result-object p1

    .line 434
    :goto_0
    invoke-direct {v2, p1}, Lo/getIdentifierUtf8Bytes;-><init>(Lo/writeRawMessageSetExtension;)V

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Unknown FieldTransform proto: %s"

    .line 436
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 427
    :cond_2
    new-instance v0, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 30442
    iget-object v1, p1, Lo/writeInt64$onPostMessage;->fieldPath_:Ljava/lang/String;

    .line 428
    invoke-static {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    new-instance v2, Lo/withOrganizationId$extraCallback;

    .line 31071
    iget v3, p1, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 31072
    iget-object p1, p1, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_1

    .line 31074
    :cond_3
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 430
    :goto_1
    invoke-virtual {p1}, Lo/toByteString;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/withOrganizationId$extraCallback;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-object v0

    .line 422
    :cond_4
    new-instance v0, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 29442
    iget-object v1, p1, Lo/writeInt64$onPostMessage;->fieldPath_:Ljava/lang/String;

    .line 423
    invoke-static {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    new-instance v2, Lo/withOrganizationId$onMessageChannelReady;

    .line 29960
    iget v3, p1, Lo/writeInt64$onPostMessage;->transformTypeCase_:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 29961
    iget-object p1, p1, Lo/writeInt64$onPostMessage;->transformType_:Ljava/lang/Object;

    check-cast p1, Lo/toByteString;

    goto :goto_2

    .line 29963
    :cond_5
    invoke-static {}, Lo/toByteString;->extraCallback()Lo/toByteString;

    move-result-object p1

    .line 425
    :goto_2
    invoke-virtual {p1}, Lo/toByteString;->onPostMessage()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/withOrganizationId$onMessageChannelReady;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1, v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-object v0

    .line 414
    :cond_6
    invoke-virtual {p1}, Lo/writeInt64$onPostMessage;->ICustomTabsCallback()Lo/writeInt64$onPostMessage$onNavigationEvent;

    move-result-object v0

    sget-object v3, Lo/writeInt64$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$onNavigationEvent;

    if-ne v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 417
    invoke-virtual {p1}, Lo/writeInt64$onPostMessage;->ICustomTabsCallback()Lo/writeInt64$onPostMessage$onNavigationEvent;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unknown transform setToServerValue: %s"

    .line 413
    invoke-static {v0, v1, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 418
    new-instance v0, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 28442
    iget-object p1, p1, Lo/writeInt64$onPostMessage;->fieldPath_:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    .line 420
    invoke-static {}, Lo/CrashlyticsReport$Session;->getInstance()Lo/CrashlyticsReport$Session;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lo/CrashlyticsReport$CustomAttribute$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/CrashlyticsReport$Session$Application$Organization;)V

    return-object v0
.end method

.method private decodeFilters(Lo/writeEnum$ICustomTabsCallback$Stub;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeEnum$ICustomTabsCallback$Stub;",
            ")",
            "Ljava/util/List<",
            "Lo/isCrashed;",
            ">;"
        }
    .end annotation

    .line 39725
    iget v0, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    invoke-static {v0}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->extraCallback(I)Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    move-result-object v0

    .line 654
    sget-object v1, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->onMessageChannelReady:Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    .line 39755
    iget v0, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    if-ne v0, v3, :cond_0

    .line 39756
    iget-object v0, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    check-cast v0, Lo/writeEnum$onMessageChannelReady;

    goto :goto_0

    .line 39758
    :cond_0
    invoke-static {}, Lo/writeEnum$onMessageChannelReady;->ICustomTabsCallback()Lo/writeEnum$onMessageChannelReady;

    move-result-object v0

    .line 40550
    :goto_0
    iget v0, v0, Lo/writeEnum$onMessageChannelReady;->op_:I

    invoke-static {v0}, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback(I)Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 40551
    sget-object v0, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    .line 656
    :cond_1
    sget-object v1, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 40755
    iget v4, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    if-ne v4, v3, :cond_3

    .line 40756
    iget-object v4, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    check-cast v4, Lo/writeEnum$onMessageChannelReady;

    goto :goto_2

    .line 40758
    :cond_3
    invoke-static {}, Lo/writeEnum$onMessageChannelReady;->ICustomTabsCallback()Lo/writeEnum$onMessageChannelReady;

    move-result-object v4

    .line 41550
    :goto_2
    iget v4, v4, Lo/writeEnum$onMessageChannelReady;->op_:I

    invoke-static {v4}, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback(I)Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    move-result-object v4

    if-nez v4, :cond_4

    .line 41551
    sget-object v4, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    :cond_4
    aput-object v4, v1, v2

    const-string v4, "Only AND-type composite filters are supported, got %d"

    .line 655
    invoke-static {v0, v4, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 41755
    iget v0, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    if-ne v0, v3, :cond_5

    .line 41756
    iget-object p1, p1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    check-cast p1, Lo/writeEnum$onMessageChannelReady;

    goto :goto_3

    .line 41758
    :cond_5
    invoke-static {}, Lo/writeEnum$onMessageChannelReady;->ICustomTabsCallback()Lo/writeEnum$onMessageChannelReady;

    move-result-object p1

    .line 42600
    :goto_3
    iget-object p1, p1, Lo/writeEnum$onMessageChannelReady;->filters_:Lo/getEventLogSize$asBinder;

    goto :goto_4

    .line 661
    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 664
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 665
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeEnum$ICustomTabsCallback$Stub;

    .line 666
    sget-object v4, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Filter$FilterTypeCase:[I

    .line 42725
    iget v5, v1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    invoke-static {v5}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->extraCallback(I)Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    move-result-object v5

    .line 666
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 42895
    iget v4, v1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    if-ne v4, v5, :cond_7

    .line 42896
    iget-object v1, v1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    check-cast v1, Lo/writeEnum$onRelationshipValidationResult;

    goto :goto_6

    .line 42898
    :cond_7
    invoke-static {}, Lo/writeEnum$onRelationshipValidationResult;->onNavigationEvent()Lo/writeEnum$onRelationshipValidationResult;

    move-result-object v1

    .line 675
    :goto_6
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeUnaryFilter(Lo/writeEnum$onRelationshipValidationResult;)Lo/isCrashed;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    new-array p1, v3, [Ljava/lang/Object;

    .line 43725
    iget v0, v1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    invoke-static {v0}, Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;->extraCallback(I)Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "Unrecognized Filter.filterType %d"

    .line 679
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 42825
    :cond_9
    iget v4, v1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    if-ne v4, v5, :cond_a

    .line 42826
    iget-object v1, v1, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    check-cast v1, Lo/writeEnum$extraCallback;

    goto :goto_7

    .line 42828
    :cond_a
    invoke-static {}, Lo/writeEnum$extraCallback;->ICustomTabsCallback()Lo/writeEnum$extraCallback;

    move-result-object v1

    .line 671
    :goto_7
    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeFieldFilter(Lo/writeEnum$extraCallback;)Lo/getOs;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Nested composite filters are not supported."

    .line 668
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :cond_c
    return-object v0
.end method

.method private decodeFoundDocument(Lo/closeInProgressStream;)Lo/setDiskUsed;
    .locals 5

    .line 11055
    iget v0, p1, Lo/closeInProgressStream;->resultCase_:I

    invoke-static {v0}, Lo/closeInProgressStream$onMessageChannelReady;->ICustomTabsCallback(I)Lo/closeInProgressStream$onMessageChannelReady;

    move-result-object v0

    .line 238
    sget-object v1, Lo/closeInProgressStream$onMessageChannelReady;->onPostMessage:Lo/closeInProgressStream$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Tried to deserialize a found document from a missing document."

    .line 237
    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 11085
    iget v0, p1, Lo/closeInProgressStream;->resultCase_:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 11086
    iget-object v0, p1, Lo/closeInProgressStream;->result_:Ljava/lang/Object;

    check-cast v0, Lo/writeDouble;

    goto :goto_0

    .line 11088
    :cond_0
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v0

    .line 12035
    :goto_0
    iget-object v0, v0, Lo/writeDouble;->name_:Ljava/lang/String;

    .line 240
    invoke-virtual {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 12085
    iget v3, p1, Lo/closeInProgressStream;->resultCase_:I

    if-ne v3, v2, :cond_1

    .line 12086
    iget-object v3, p1, Lo/closeInProgressStream;->result_:Ljava/lang/Object;

    check-cast v3, Lo/writeDouble;

    goto :goto_1

    .line 12088
    :cond_1
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v3

    .line 13110
    :goto_1
    iget-object v3, v3, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 12192
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 241
    invoke-static {v3}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->fromMap(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v3

    .line 14085
    iget v4, p1, Lo/closeInProgressStream;->resultCase_:I

    if-ne v4, v2, :cond_2

    .line 14086
    iget-object p1, p1, Lo/closeInProgressStream;->result_:Ljava/lang/Object;

    check-cast p1, Lo/writeDouble;

    goto :goto_2

    .line 14088
    :cond_2
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object p1

    .line 14406
    :goto_2
    iget-object v4, p1, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    if-nez v4, :cond_3

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    .line 242
    :goto_3
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    .line 243
    sget-object v4, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 244
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Got a document response with no snapshot version"

    .line 243
    invoke-static {v2, v4, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v1, Lo/setDiskUsed;

    sget-object v2, Lo/setDiskUsed$onMessageChannelReady;->SYNCED:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {v1, v0, p1, v3, v2}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object v1
.end method

.method private decodeMissingDocument(Lo/closeInProgressStream;)Lo/AutoValue_CrashlyticsReport_Session_User;
    .locals 5

    .line 15055
    iget v0, p1, Lo/closeInProgressStream;->resultCase_:I

    invoke-static {v0}, Lo/closeInProgressStream$onMessageChannelReady;->ICustomTabsCallback(I)Lo/closeInProgressStream$onMessageChannelReady;

    move-result-object v0

    .line 250
    sget-object v1, Lo/closeInProgressStream$onMessageChannelReady;->onNavigationEvent:Lo/closeInProgressStream$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Tried to deserialize a missing document from a found document."

    .line 249
    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15147
    iget v0, p1, Lo/closeInProgressStream;->resultCase_:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 15148
    iget-object v0, p1, Lo/closeInProgressStream;->result_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 252
    :goto_0
    invoke-virtual {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    .line 15288
    iget-object v2, p1, Lo/closeInProgressStream;->readTime_:Lo/getCustomHeaders;

    if-nez v2, :cond_1

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lo/closeInProgressStream;->readTime_:Lo/getCustomHeaders;

    .line 253
    :goto_1
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    .line 254
    sget-object v2, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 255
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Got a no document response with no snapshot version"

    .line 254
    invoke-static {v2, v4, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    new-instance v2, Lo/AutoValue_CrashlyticsReport_Session_User;

    invoke-direct {v2, v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    return-object v2
.end method

.method private decodeOrderBy(Lo/writeEnum$onTransact;)Lo/setOrganization;
    .locals 4

    .line 48909
    iget-object v0, p1, Lo/writeEnum$onTransact;->field_:Lo/writeEnum$asBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lo/writeEnum$asBinder;->onNavigationEvent()Lo/writeEnum$asBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/writeEnum$onTransact;->field_:Lo/writeEnum$asBinder;

    .line 49365
    :goto_0
    iget-object v0, v0, Lo/writeEnum$asBinder;->fieldPath_:Ljava/lang/String;

    .line 810
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 812
    sget-object v1, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$Direction:[I

    .line 49977
    iget v2, p1, Lo/writeEnum$onTransact;->direction_:I

    invoke-static {v2}, Lo/writeEnum$onNavigationEvent;->onPostMessage(I)Lo/writeEnum$onNavigationEvent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 49978
    sget-object v2, Lo/writeEnum$onNavigationEvent;->onMessageChannelReady:Lo/writeEnum$onNavigationEvent;

    .line 812
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 50977
    iget p1, p1, Lo/writeEnum$onTransact;->direction_:I

    invoke-static {p1}, Lo/writeEnum$onNavigationEvent;->onPostMessage(I)Lo/writeEnum$onNavigationEvent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 50978
    sget-object p1, Lo/writeEnum$onNavigationEvent;->onMessageChannelReady:Lo/writeEnum$onNavigationEvent;

    :cond_2
    aput-object p1, v0, v1

    const-string p1, "Unrecognized direction %d"

    .line 820
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 817
    :cond_3
    sget-object p1, Lo/setOrganization$onPostMessage;->DESCENDING:Lo/setOrganization$onPostMessage;

    goto :goto_1

    .line 814
    :cond_4
    sget-object p1, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    .line 822
    :goto_1
    invoke-static {p1, v0}, Lo/setOrganization;->getInstance(Lo/setOrganization$onPostMessage;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/setOrganization;

    move-result-object p1

    return-object p1
.end method

.method private decodePrecondition(Lo/writeSFixed32;)Lo/CrashlyticsReport$FilesPayload$File;
    .locals 4

    .line 350
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Precondition$ConditionTypeCase:[I

    .line 26054
    iget v1, p1, Lo/writeSFixed32;->conditionTypeCase_:I

    invoke-static {v1}, Lo/writeSFixed32$onPostMessage;->onMessageChannelReady(I)Lo/writeSFixed32$onPostMessage;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    .line 356
    sget-object p1, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    return-object p1

    :cond_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Unknown precondition"

    .line 358
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 27075
    :cond_1
    iget v0, p1, Lo/writeSFixed32;->conditionTypeCase_:I

    if-ne v0, v2, :cond_2

    .line 27076
    iget-object p1, p1, Lo/writeSFixed32;->conditionType_:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 354
    :cond_2
    invoke-static {v3}, Lo/CrashlyticsReport$FilesPayload$File;->exists(Z)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p1

    return-object p1

    .line 26131
    :cond_3
    iget v0, p1, Lo/writeSFixed32;->conditionTypeCase_:I

    if-ne v0, v1, :cond_4

    .line 26132
    iget-object p1, p1, Lo/writeSFixed32;->conditionType_:Ljava/lang/Object;

    check-cast p1, Lo/getCustomHeaders;

    goto :goto_0

    .line 26134
    :cond_4
    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    .line 352
    :goto_0
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    invoke-static {p1}, Lo/CrashlyticsReport$FilesPayload$File;->updateTime(Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p1

    return-object p1
.end method

.method private decodeQueryPath(Ljava/lang/String;)Lo/setJailbroken;
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeResourceName(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 159
    sget-object p1, Lo/setJailbroken;->EMPTY:Lo/setJailbroken;

    return-object p1

    .line 161
    :cond_0
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->extractLocalPathFromResourceName(Lo/setJailbroken;)Lo/setJailbroken;

    move-result-object p1

    return-object p1
.end method

.method private decodeResourceName(Ljava/lang/String;)Lo/setJailbroken;
    .locals 3

    .line 179
    invoke-static {p1}, Lo/setJailbroken;->fromString(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    .line 181
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->isValidResourceName(Lo/setJailbroken;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Tried to deserialize invalid key %s"

    .line 180
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private decodeUnaryFilter(Lo/writeEnum$onRelationshipValidationResult;)Lo/isCrashed;
    .locals 4

    .line 46455
    iget v0, p1, Lo/writeEnum$onRelationshipValidationResult;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 46456
    iget-object v0, p1, Lo/writeEnum$onRelationshipValidationResult;->operandType_:Ljava/lang/Object;

    check-cast v0, Lo/writeEnum$asBinder;

    goto :goto_0

    .line 46458
    :cond_0
    invoke-static {}, Lo/writeEnum$asBinder;->onNavigationEvent()Lo/writeEnum$asBinder;

    move-result-object v0

    .line 47365
    :goto_0
    iget-object v0, v0, Lo/writeEnum$asBinder;->fieldPath_:Ljava/lang/String;

    .line 721
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 722
    sget-object v2, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$StructuredQuery$UnaryFilter$Operator:[I

    .line 47396
    iget v3, p1, Lo/writeEnum$onRelationshipValidationResult;->op_:I

    invoke-static {v3}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady(I)Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    move-result-object v3

    if-nez v3, :cond_1

    .line 47397
    sget-object v3, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 722
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-eq v2, v1, :cond_5

    const/4 v1, 0x3

    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-eq v2, v1, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 48396
    iget p1, p1, Lo/writeEnum$onRelationshipValidationResult;->op_:I

    invoke-static {p1}, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady(I)Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    move-result-object p1

    if-nez p1, :cond_2

    .line 48397
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onNavigationEvent:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    :cond_2
    aput-object p1, v0, v1

    const-string p1, "Unrecognized UnaryFilter.operator %d"

    .line 732
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 730
    :cond_3
    sget-object p1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    sget-object v1, Lo/withSessionEndFields;->NULL_VALUE:Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1, v1}, Lo/getOs;->create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;

    move-result-object p1

    return-object p1

    .line 728
    :cond_4
    sget-object p1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    sget-object v1, Lo/withSessionEndFields;->NAN_VALUE:Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1, v1}, Lo/getOs;->create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;

    move-result-object p1

    return-object p1

    .line 726
    :cond_5
    sget-object p1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    sget-object v1, Lo/withSessionEndFields;->NULL_VALUE:Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1, v1}, Lo/getOs;->create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;

    move-result-object p1

    return-object p1

    .line 724
    :cond_6
    sget-object p1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    sget-object v1, Lo/withSessionEndFields;->NAN_VALUE:Lo/writeRawMessageSetExtension;

    invoke-static {v0, p1, v1}, Lo/getOs;->create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;

    move-result-object p1

    return-object p1
.end method

.method private encodeBound(Lo/getFilename;)Lo/getInProgressFile;
    .locals 2

    .line 828
    invoke-static {}, Lo/getInProgressFile;->ICustomTabsCallback()Lo/getInProgressFile$onPostMessage;

    move-result-object v0

    .line 829
    invoke-virtual {p1}, Lo/getFilename;->getPosition()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getInProgressFile$onPostMessage;->onMessageChannelReady(Ljava/lang/Iterable;)Lo/getInProgressFile$onPostMessage;

    .line 830
    invoke-virtual {p1}, Lo/getFilename;->isBefore()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/getInProgressFile$onPostMessage;->onNavigationEvent(Z)Lo/getInProgressFile$onPostMessage;

    .line 831
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getInProgressFile;

    return-object p1
.end method

.method private encodeDocumentMask(Lo/CrashlyticsReport$CustomAttribute;)Lo/writeUInt64;
    .locals 2

    .line 363
    invoke-static {}, Lo/writeUInt64;->ICustomTabsCallback()Lo/writeUInt64$onPostMessage;

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Lo/CrashlyticsReport$CustomAttribute;->getMask()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 365
    invoke-virtual {v1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeUInt64$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/writeUInt64$onPostMessage;

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeUInt64;

    return-object p1
.end method

.method private encodeFieldFilterOperator(Lo/isCrashed$onNavigationEvent;)Lo/writeEnum$extraCallback$onMessageChannelReady;
    .locals 2

    .line 742
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$core$Filter$Operator:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unknown operator %d"

    .line 764
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 762
    :pswitch_0
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->asBinder:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 760
    :pswitch_1
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->asInterface:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 758
    :pswitch_2
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onTransact:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 756
    :pswitch_3
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onRelationshipValidationResult:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 754
    :pswitch_4
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 752
    :pswitch_5
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 750
    :pswitch_6
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 748
    :pswitch_7
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onMessageChannelReady:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 746
    :pswitch_8
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->onNavigationEvent:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    .line 744
    :pswitch_9
    sget-object p1, Lo/writeEnum$extraCallback$onMessageChannelReady;->extraCallback:Lo/writeEnum$extraCallback$onMessageChannelReady;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeFieldPath(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeEnum$asBinder;
    .locals 1

    .line 737
    invoke-static {}, Lo/writeEnum$asBinder;->ICustomTabsCallback()Lo/writeEnum$asBinder$extraCallback;

    move-result-object v0

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeEnum$asBinder$extraCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/writeEnum$asBinder$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$asBinder;

    return-object p1
.end method

.method private encodeFieldTransform(Lo/CrashlyticsReport$CustomAttribute$Builder;)Lo/writeInt64$onPostMessage;
    .locals 2

    .line 380
    invoke-virtual {p1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getOperation()Lo/CrashlyticsReport$Session$Application$Organization;

    move-result-object v0

    .line 381
    instance-of v1, v0, Lo/CrashlyticsReport$Session;

    if-eqz v1, :cond_0

    .line 382
    invoke-static {}, Lo/writeInt64$onPostMessage;->onNavigationEvent()Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object v0

    .line 383
    invoke-virtual {p1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    sget-object v0, Lo/writeInt64$onPostMessage$onNavigationEvent;->ICustomTabsCallback:Lo/writeInt64$onPostMessage$onNavigationEvent;

    .line 384
    invoke-virtual {p1, v0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onPostMessage(Lo/writeInt64$onPostMessage$onNavigationEvent;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeInt64$onPostMessage;

    return-object p1

    .line 386
    :cond_0
    instance-of v1, v0, Lo/withOrganizationId$onMessageChannelReady;

    if-eqz v1, :cond_1

    .line 387
    check-cast v0, Lo/withOrganizationId$onMessageChannelReady;

    .line 388
    invoke-static {}, Lo/writeInt64$onPostMessage;->onNavigationEvent()Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 390
    invoke-static {}, Lo/toByteString;->onNavigationEvent()Lo/toByteString$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v0}, Lo/withOrganizationId;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/toByteString$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/toByteString$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onPostMessage(Lo/toByteString$onMessageChannelReady;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 391
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeInt64$onPostMessage;

    return-object p1

    .line 392
    :cond_1
    instance-of v1, v0, Lo/withOrganizationId$extraCallback;

    if-eqz v1, :cond_2

    .line 393
    check-cast v0, Lo/withOrganizationId$extraCallback;

    .line 394
    invoke-static {}, Lo/writeInt64$onPostMessage;->onNavigationEvent()Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object v1

    .line 395
    invoke-virtual {p1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 396
    invoke-static {}, Lo/toByteString;->onNavigationEvent()Lo/toByteString$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v0}, Lo/withOrganizationId;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/toByteString$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/toByteString$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->extraCallback(Lo/toByteString$onMessageChannelReady;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 397
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeInt64$onPostMessage;

    return-object p1

    .line 398
    :cond_2
    instance-of v1, v0, Lo/getIdentifierUtf8Bytes;

    if-eqz v1, :cond_3

    .line 399
    check-cast v0, Lo/getIdentifierUtf8Bytes;

    .line 401
    invoke-static {}, Lo/writeInt64$onPostMessage;->onNavigationEvent()Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object v1

    .line 402
    invoke-virtual {p1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 403
    invoke-virtual {v0}, Lo/getIdentifierUtf8Bytes;->getOperand()Lo/writeRawMessageSetExtension;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/writeInt64$onPostMessage$onMessageChannelReady;->onNavigationEvent(Lo/writeRawMessageSetExtension;)Lo/writeInt64$onPostMessage$onMessageChannelReady;

    move-result-object p1

    .line 404
    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeInt64$onPostMessage;

    return-object p1

    :cond_3
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "Unknown transform: %s"

    .line 406
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private encodeFilters(Ljava/util/List;)Lo/writeEnum$ICustomTabsCallback$Stub;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/isCrashed;",
            ">;)",
            "Lo/writeEnum$ICustomTabsCallback$Stub;"
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 637
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/isCrashed;

    .line 638
    instance-of v3, v2, Lo/getOs;

    if-eqz v3, :cond_0

    .line 639
    check-cast v2, Lo/getOs;

    invoke-virtual {p0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeUnaryOrFieldFilter(Lo/getOs;)Lo/writeEnum$ICustomTabsCallback$Stub;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 642
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 643
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object p1

    .line 645
    :cond_2
    invoke-static {}, Lo/writeEnum$onMessageChannelReady;->onNavigationEvent()Lo/writeEnum$onMessageChannelReady$onNavigationEvent;

    move-result-object p1

    .line 646
    sget-object v1, Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;

    invoke-virtual {p1, v1}, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;->ICustomTabsCallback(Lo/writeEnum$onMessageChannelReady$ICustomTabsCallback;)Lo/writeEnum$onMessageChannelReady$onNavigationEvent;

    .line 647
    invoke-virtual {p1, v0}, Lo/writeEnum$onMessageChannelReady$onNavigationEvent;->onPostMessage(Ljava/lang/Iterable;)Lo/writeEnum$onMessageChannelReady$onNavigationEvent;

    .line 648
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub;->ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->onMessageChannelReady(Lo/writeEnum$onMessageChannelReady$onNavigationEvent;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object p1
.end method

.method private encodeLabel(Lo/getBinaries;)Ljava/lang/String;
    .locals 3

    .line 478
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firebase$firestore$local$QueryPurpose:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string p1, "limbo-document"

    return-object p1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unrecognized query purpose: %s"

    .line 486
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    :cond_1
    const-string p1, "existence-filter-mismatch"

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private encodeOrderBy(Lo/setOrganization;)Lo/writeEnum$onTransact;
    .locals 3

    .line 799
    invoke-static {}, Lo/writeEnum$onTransact;->ICustomTabsCallback()Lo/writeEnum$onTransact$onPostMessage;

    move-result-object v0

    .line 800
    invoke-virtual {p1}, Lo/setOrganization;->getDirection()Lo/setOrganization$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/setOrganization$onPostMessage;->ASCENDING:Lo/setOrganization$onPostMessage;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    sget-object v1, Lo/writeEnum$onNavigationEvent;->extraCallback:Lo/writeEnum$onNavigationEvent;

    invoke-virtual {v0, v1}, Lo/writeEnum$onTransact$onPostMessage;->onMessageChannelReady(Lo/writeEnum$onNavigationEvent;)Lo/writeEnum$onTransact$onPostMessage;

    goto :goto_0

    .line 803
    :cond_0
    sget-object v1, Lo/writeEnum$onNavigationEvent;->onPostMessage:Lo/writeEnum$onNavigationEvent;

    invoke-virtual {v0, v1}, Lo/writeEnum$onTransact$onPostMessage;->onMessageChannelReady(Lo/writeEnum$onNavigationEvent;)Lo/writeEnum$onTransact$onPostMessage;

    .line 805
    :goto_0
    invoke-virtual {p1}, Lo/setOrganization;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeFieldPath(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeEnum$asBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeEnum$onTransact$onPostMessage;->onMessageChannelReady(Lo/writeEnum$asBinder;)Lo/writeEnum$onTransact$onPostMessage;

    .line 806
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$onTransact;

    return-object p1
.end method

.method private encodePrecondition(Lo/CrashlyticsReport$FilesPayload$File;)Lo/writeSFixed32;
    .locals 4

    .line 337
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload$File;->isNone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can\'t serialize an empty precondition"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lo/writeSFixed32;->onNavigationEvent()Lo/writeSFixed32$extraCallback;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload$File;->getUpdateTime()Lo/withNdkPayload;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload$File;->getUpdateTime()Lo/withNdkPayload;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeVersion(Lo/withNdkPayload;)Lo/getCustomHeaders;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeSFixed32$extraCallback;->onMessageChannelReady(Lo/getCustomHeaders;)Lo/writeSFixed32$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeSFixed32;

    return-object p1

    .line 342
    :cond_0
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload$File;->getExists()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload$File;->getExists()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/writeSFixed32$extraCallback;->onPostMessage(Z)Lo/writeSFixed32$extraCallback;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeSFixed32;

    return-object p1

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Unknown Precondition"

    .line 345
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method private encodeQueryPath(Lo/setJailbroken;)Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseId:Lo/setProximityOn;

    invoke-direct {p0, v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeResourceName(Lo/setProximityOn;Lo/setJailbroken;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeResourceName(Lo/setProximityOn;Lo/setJailbroken;)Ljava/lang/String;
    .locals 1

    .line 170
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodedDatabaseId(Lo/setProximityOn;)Lo/setJailbroken;

    move-result-object p1

    const-string v0, "documents"

    invoke-virtual {p1, v0}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    invoke-virtual {p1, p2}, Lo/setRamUsed;->append(Lo/setRamUsed;)Lo/setRamUsed;

    move-result-object p1

    check-cast p1, Lo/setJailbroken;

    invoke-virtual {p1}, Lo/setRamUsed;->canonicalString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static encodedDatabaseId(Lo/setProximityOn;)Lo/setJailbroken;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "projects"

    aput-object v2, v0, v1

    .line 189
    invoke-virtual {p0}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "databases"

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 188
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 187
    invoke-static {p0}, Lo/setJailbroken;->fromSegments(Ljava/util/List;)Lo/setJailbroken;

    move-result-object p0

    return-object p0
.end method

.method private static extractLocalPathFromResourceName(Lo/setJailbroken;)Lo/setJailbroken;
    .locals 4

    .line 198
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    invoke-virtual {p0, v3}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "documents"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string v2, "Tried to deserialize invalid key %s"

    .line 197
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 201
    invoke-virtual {p0, v0}, Lo/setRamUsed;->popFirst(I)Lo/setRamUsed;

    move-result-object p0

    check-cast p0, Lo/setJailbroken;

    return-object p0
.end method

.method private fromStatus(Lo/applyMultipartDataTo;)Lo/emptyMap;
    .locals 3

    .line 51035
    iget v0, p1, Lo/applyMultipartDataTo;->code_:I

    .line 931
    invoke-static {v0}, Lo/emptyMap;->onMessageChannelReady(I)Lo/emptyMap;

    move-result-object v0

    .line 51036
    iget-object p1, p1, Lo/applyMultipartDataTo;->message_:Ljava/lang/String;

    .line 51037
    iget-object v1, v0, Lo/emptyMap;->getInterfaceDescriptor:Ljava/lang/String;

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_0

    .line 51041
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    return-object v0

    .line 51040
    :cond_2
    new-instance v1, Lo/emptyMap;

    iget-object v2, v0, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    iget-object v0, v0, Lo/emptyMap;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1, v0}, Lo/emptyMap;-><init>(Lo/emptyMap$onPostMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static isValidResourceName(Lo/setJailbroken;)Z
    .locals 3

    .line 208
    invoke-virtual {p0}, Lo/setRamUsed;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "projects"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 210
    invoke-virtual {p0, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "databases"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public final databaseName()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public final decodeDocumentsTarget(Lo/writeString$onNavigationEvent;)Lo/setClsId;
    .locals 4

    .line 33122
    iget-object v0, p1, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 514
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "DocumentsTarget contained other than 1 document %d"

    invoke-static {v3, v0, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 33138
    iget-object p1, p1, Lo/writeString$onNavigationEvent;->documents_:Lo/getEventLogSize$asBinder;

    invoke-interface {p1, v1}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 517
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeQueryPath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->atPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Application;

    move-result-object p1

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object p1

    return-object p1
.end method

.method final decodeFieldFilter(Lo/writeEnum$extraCallback;)Lo/getOs;
    .locals 3

    .line 44545
    iget-object v0, p1, Lo/writeEnum$extraCallback;->field_:Lo/writeEnum$asBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lo/writeEnum$asBinder;->onNavigationEvent()Lo/writeEnum$asBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/writeEnum$extraCallback;->field_:Lo/writeEnum$asBinder;

    .line 45365
    :goto_0
    iget-object v0, v0, Lo/writeEnum$asBinder;->fieldPath_:Ljava/lang/String;

    .line 715
    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;->fromServerFormat(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 45613
    iget v1, p1, Lo/writeEnum$extraCallback;->op_:I

    invoke-static {v1}, Lo/writeEnum$extraCallback$onMessageChannelReady;->onPostMessage(I)Lo/writeEnum$extraCallback$onMessageChannelReady;

    move-result-object v1

    if-nez v1, :cond_1

    .line 45614
    sget-object v1, Lo/writeEnum$extraCallback$onMessageChannelReady;->ICustomTabsService:Lo/writeEnum$extraCallback$onMessageChannelReady;

    .line 716
    :cond_1
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeFieldFilterOperator(Lo/writeEnum$extraCallback$onMessageChannelReady;)Lo/isCrashed$onNavigationEvent;

    move-result-object v1

    .line 45673
    iget-object v2, p1, Lo/writeEnum$extraCallback;->value_:Lo/writeRawMessageSetExtension;

    if-nez v2, :cond_2

    invoke-static {}, Lo/writeRawMessageSetExtension;->onNavigationEvent()Lo/writeRawMessageSetExtension;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lo/writeEnum$extraCallback;->value_:Lo/writeRawMessageSetExtension;

    .line 717
    :goto_1
    invoke-static {v0, v1, p1}, Lo/getOs;->create(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/isCrashed$onNavigationEvent;Lo/writeRawMessageSetExtension;)Lo/getOs;

    move-result-object p1

    return-object p1
.end method

.method public final decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 4

    .line 139
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeResourceName(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object p1

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p1, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseId:Lo/setProximityOn;

    invoke-virtual {v1}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Tried to deserialize key from different project."

    .line 140
    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 144
    invoke-virtual {p1, v0}, Lo/setRamUsed;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseId:Lo/setProximityOn;

    invoke-virtual {v2}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Tried to deserialize key from different database."

    .line 143
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->extractLocalPathFromResourceName(Lo/setJailbroken;)Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final decodeMaybeDocument(Lo/closeInProgressStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 3

    .line 8055
    iget v0, p1, Lo/closeInProgressStream;->resultCase_:I

    invoke-static {v0}, Lo/closeInProgressStream$onMessageChannelReady;->ICustomTabsCallback(I)Lo/closeInProgressStream$onMessageChannelReady;

    move-result-object v0

    .line 227
    sget-object v1, Lo/closeInProgressStream$onMessageChannelReady;->onPostMessage:Lo/closeInProgressStream$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeFoundDocument(Lo/closeInProgressStream;)Lo/setDiskUsed;

    move-result-object p1

    return-object p1

    .line 9055
    :cond_0
    iget v0, p1, Lo/closeInProgressStream;->resultCase_:I

    invoke-static {v0}, Lo/closeInProgressStream$onMessageChannelReady;->ICustomTabsCallback(I)Lo/closeInProgressStream$onMessageChannelReady;

    move-result-object v0

    .line 229
    sget-object v1, Lo/closeInProgressStream$onMessageChannelReady;->onNavigationEvent:Lo/closeInProgressStream$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeMissingDocument(Lo/closeInProgressStream;)Lo/AutoValue_CrashlyticsReport_Session_User;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown result case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10055
    iget p1, p1, Lo/closeInProgressStream;->resultCase_:I

    invoke-static {p1}, Lo/closeInProgressStream$onMessageChannelReady;->ICustomTabsCallback(I)Lo/closeInProgressStream$onMessageChannelReady;

    move-result-object p1

    .line 232
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decodeMutation(Lo/writeSInt32;)Lo/CrashlyticsReport$FilesPayload;
    .locals 7

    .line 15507
    iget-object v0, p1, Lo/writeSInt32;->currentDocument_:Lo/writeSFixed32;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 15519
    iget-object v0, p1, Lo/writeSInt32;->currentDocument_:Lo/writeSFixed32;

    if-nez v0, :cond_1

    invoke-static {}, Lo/writeSFixed32;->ICustomTabsCallback()Lo/writeSFixed32;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lo/writeSInt32;->currentDocument_:Lo/writeSFixed32;

    .line 295
    :goto_1
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodePrecondition(Lo/writeSFixed32;)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    goto :goto_2

    .line 296
    :cond_2
    sget-object v0, Lo/CrashlyticsReport$FilesPayload$File;->NONE:Lo/CrashlyticsReport$FilesPayload$File;

    .line 298
    :goto_2
    sget-object v3, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$Write$OperationCase:[I

    .line 16058
    iget v4, p1, Lo/writeSInt32;->operationCase_:I

    invoke-static {v4}, Lo/writeSInt32$onMessageChannelReady;->extraCallback(I)Lo/writeSInt32$onMessageChannelReady;

    move-result-object v4

    .line 298
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_c

    const-string v4, ""

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    .line 329
    new-instance v1, Lo/CrashlyticsReport$Session$Application$Organization$Builder;

    .line 24232
    iget v2, p1, Lo/writeSInt32;->operationCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 24233
    iget-object p1, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 329
    :cond_3
    invoke-virtual {p0, v4}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lo/CrashlyticsReport$Session$Application$Organization$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    return-object v1

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    .line 25058
    iget p1, p1, Lo/writeSInt32;->operationCase_:I

    invoke-static {p1}, Lo/writeSInt32$onMessageChannelReady;->extraCallback(I)Lo/writeSInt32$onMessageChannelReady;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unknown mutation operation: %d"

    .line 332
    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 317
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22331
    iget v4, p1, Lo/writeSInt32;->operationCase_:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 22332
    iget-object v4, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    check-cast v4, Lo/writeInt64;

    goto :goto_3

    .line 22334
    :cond_6
    invoke-static {}, Lo/writeInt64;->ICustomTabsCallback()Lo/writeInt64;

    move-result-object v4

    .line 23178
    :goto_3
    iget-object v4, v4, Lo/writeInt64;->fieldTransforms_:Lo/getEventLogSize$asBinder;

    .line 319
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/writeInt64$onPostMessage;

    .line 320
    invoke-direct {p0, v6}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeFieldTransform(Lo/writeInt64$onPostMessage;)Lo/CrashlyticsReport$CustomAttribute$Builder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 322
    :cond_7
    invoke-virtual {v0}, Lo/CrashlyticsReport$FilesPayload$File;->getExists()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 324
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Transforms only support precondition \"exists == true\""

    .line 323
    invoke-static {v2, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 325
    new-instance v0, Lo/CrashlyticsReport$Session$Application$Builder;

    .line 23331
    iget v1, p1, Lo/writeSInt32;->operationCase_:I

    if-ne v1, v5, :cond_9

    .line 23332
    iget-object p1, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    check-cast p1, Lo/writeInt64;

    goto :goto_6

    .line 23334
    :cond_9
    invoke-static {}, Lo/writeInt64;->ICustomTabsCallback()Lo/writeInt64;

    move-result-object p1

    .line 24110
    :goto_6
    iget-object p1, p1, Lo/writeInt64;->document_:Ljava/lang/String;

    .line 326
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lo/CrashlyticsReport$Session$Application$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Ljava/util/List;)V

    return-object v0

    .line 314
    :cond_a
    new-instance v1, Lo/withEvents;

    .line 22150
    iget v2, p1, Lo/writeSInt32;->operationCase_:I

    if-ne v2, v5, :cond_b

    .line 22151
    iget-object p1, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 314
    :cond_b
    invoke-virtual {p0, v4}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lo/withEvents;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    return-object v1

    .line 16408
    :cond_c
    iget-object v3, p1, Lo/writeSInt32;->updateMask_:Lo/writeUInt64;

    if-eqz v3, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_11

    .line 301
    new-instance v1, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    .line 17088
    iget v3, p1, Lo/writeSInt32;->operationCase_:I

    if-ne v3, v2, :cond_e

    .line 17089
    iget-object v3, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    check-cast v3, Lo/writeDouble;

    goto :goto_7

    .line 17091
    :cond_e
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v3

    .line 18035
    :goto_7
    iget-object v3, v3, Lo/writeDouble;->name_:Ljava/lang/String;

    .line 302
    invoke-virtual {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    .line 18088
    iget v4, p1, Lo/writeSInt32;->operationCase_:I

    if-ne v4, v2, :cond_f

    .line 18089
    iget-object v2, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    check-cast v2, Lo/writeDouble;

    goto :goto_8

    .line 18091
    :cond_f
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v2

    .line 19110
    :goto_8
    iget-object v2, v2, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 18192
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 303
    invoke-static {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->fromMap(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v2

    .line 19427
    iget-object v4, p1, Lo/writeSInt32;->updateMask_:Lo/writeUInt64;

    if-nez v4, :cond_10

    invoke-static {}, Lo/writeUInt64;->onNavigationEvent()Lo/writeUInt64;

    move-result-object p1

    goto :goto_9

    :cond_10
    iget-object p1, p1, Lo/writeSInt32;->updateMask_:Lo/writeUInt64;

    .line 304
    :goto_9
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeDocumentMask(Lo/writeUInt64;)Lo/CrashlyticsReport$CustomAttribute;

    move-result-object p1

    invoke-direct {v1, v3, v2, p1, v0}, Lo/CrashlyticsReport$FilesPayload$File$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Lo/CrashlyticsReport$FilesPayload$File;)V

    return-object v1

    .line 307
    :cond_11
    new-instance v1, Lo/CrashlyticsReport$Session$Application;

    .line 20088
    iget v3, p1, Lo/writeSInt32;->operationCase_:I

    if-ne v3, v2, :cond_12

    .line 20089
    iget-object v3, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    check-cast v3, Lo/writeDouble;

    goto :goto_a

    .line 20091
    :cond_12
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v3

    .line 21035
    :goto_a
    iget-object v3, v3, Lo/writeDouble;->name_:Ljava/lang/String;

    .line 308
    invoke-virtual {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    .line 21088
    iget v4, p1, Lo/writeSInt32;->operationCase_:I

    if-ne v4, v2, :cond_13

    .line 21089
    iget-object p1, p1, Lo/writeSInt32;->operation_:Ljava/lang/Object;

    check-cast p1, Lo/writeDouble;

    goto :goto_b

    .line 21091
    :cond_13
    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object p1

    .line 22110
    :goto_b
    iget-object p1, p1, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 21192
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 309
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->fromMap(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    invoke-direct {v1, v3, p1, v0}, Lo/CrashlyticsReport$Session$Application;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$FilesPayload$File;)V

    return-object v1
.end method

.method public final decodeMutationResult(Lo/writeFixed64NoTag;Lo/withNdkPayload;)Lo/CrashlyticsReport$FilesPayload$Builder;
    .locals 4

    .line 32049
    iget-object v0, p1, Lo/writeFixed64NoTag;->updateTime_:Lo/getCustomHeaders;

    if-nez v0, :cond_0

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/writeFixed64NoTag;->updateTime_:Lo/getCustomHeaders;

    .line 446
    :goto_0
    invoke-virtual {p0, v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v0

    .line 447
    sget-object v1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    const/4 v0, 0x0

    .line 32138
    iget-object v1, p1, Lo/writeFixed64NoTag;->transformResults_:Lo/getEventLogSize$asBinder;

    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 32150
    iget-object v3, p1, Lo/writeFixed64NoTag;->transformResults_:Lo/getEventLogSize$asBinder;

    invoke-interface {v3, v2}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeRawMessageSetExtension;

    .line 456
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 459
    :cond_2
    new-instance p1, Lo/CrashlyticsReport$FilesPayload$Builder;

    invoke-direct {p1, p2, v0}, Lo/CrashlyticsReport$FilesPayload$Builder;-><init>(Lo/withNdkPayload;Ljava/util/List;)V

    return-object p1
.end method

.method public final decodeQueryTarget(Lo/writeString$extraCallback;)Lo/setClsId;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 33703
    iget-object v2, v1, Lo/writeString$extraCallback;->parent_:Ljava/lang/String;

    .line 570
    invoke-direct {v0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeQueryPath(Ljava/lang/String;)Lo/setJailbroken;

    move-result-object v2

    .line 33799
    iget v3, v1, Lo/writeString$extraCallback;->queryTypeCase_:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 33800
    iget-object v1, v1, Lo/writeString$extraCallback;->queryType_:Ljava/lang/Object;

    check-cast v1, Lo/writeEnum;

    goto :goto_0

    .line 33802
    :cond_0
    invoke-static {}, Lo/writeEnum;->onNavigationEvent()Lo/writeEnum;

    move-result-object v1

    .line 34283
    :goto_0
    iget-object v3, v1, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    invoke-interface {v3}, Lo/getEventLogSize$asBinder;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_3

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "StructuredQuery.from with more than one collection is not supported."

    .line 577
    invoke-static {v3, v8, v7}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 34294
    iget-object v3, v1, Lo/writeEnum;->from_:Lo/getEventLogSize$asBinder;

    invoke-interface {v3, v6}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/writeEnum$ICustomTabsCallback;

    .line 35287
    iget-boolean v7, v3, Lo/writeEnum$ICustomTabsCallback;->allDescendants_:Z

    if-eqz v7, :cond_2

    .line 36214
    iget-object v3, v3, Lo/writeEnum$ICustomTabsCallback;->collectionId_:Ljava/lang/String;

    move-object v8, v2

    move-object v9, v3

    goto :goto_2

    .line 37214
    :cond_2
    iget-object v3, v3, Lo/writeEnum$ICustomTabsCallback;->collectionId_:Ljava/lang/String;

    .line 584
    invoke-virtual {v2, v3}, Lo/setRamUsed;->append(Ljava/lang/String;)Lo/setRamUsed;

    move-result-object v2

    check-cast v2, Lo/setJailbroken;

    :cond_3
    move-object v8, v2

    move-object v9, v4

    .line 37398
    :goto_2
    iget-object v2, v1, Lo/writeEnum;->where_:Lo/writeEnum$ICustomTabsCallback$Stub;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    .line 37409
    iget-object v2, v1, Lo/writeEnum;->where_:Lo/writeEnum$ICustomTabsCallback$Stub;

    if-nez v2, :cond_5

    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub;->onNavigationEvent()Lo/writeEnum$ICustomTabsCallback$Stub;

    move-result-object v2

    goto :goto_4

    :cond_5
    iget-object v2, v1, Lo/writeEnum;->where_:Lo/writeEnum$ICustomTabsCallback$Stub;

    .line 590
    :goto_4
    invoke-direct {v0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeFilters(Lo/writeEnum$ICustomTabsCallback$Stub;)Ljava/util/List;

    move-result-object v2

    goto :goto_5

    .line 592
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_5
    move-object v10, v2

    .line 37525
    iget-object v2, v1, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    invoke-interface {v2}, Lo/getEventLogSize$asBinder;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 598
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v2, :cond_7

    .line 37549
    iget-object v11, v1, Lo/writeEnum;->orderBy_:Lo/getEventLogSize$asBinder;

    invoke-interface {v11, v7}, Lo/getEventLogSize$asBinder;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/writeEnum$onTransact;

    .line 600
    invoke-direct {v0, v11}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeOrderBy(Lo/writeEnum$onTransact;)Lo/setOrganization;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    move-object v11, v3

    goto :goto_7

    .line 603
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    :goto_7
    const-wide/16 v2, -0x1

    .line 37922
    iget-object v7, v1, Lo/writeEnum;->limit_:Lo/getEventDeviceSize;

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_b

    .line 37935
    iget-object v2, v1, Lo/writeEnum;->limit_:Lo/getEventDeviceSize;

    if-nez v2, :cond_a

    invoke-static {}, Lo/getEventDeviceSize;->ICustomTabsCallback()Lo/getEventDeviceSize;

    move-result-object v2

    goto :goto_9

    :cond_a
    iget-object v2, v1, Lo/writeEnum;->limit_:Lo/getEventDeviceSize;

    .line 38033
    :goto_9
    iget v2, v2, Lo/getEventDeviceSize;->value_:I

    int-to-long v2, v2

    :cond_b
    move-wide v12, v2

    .line 38744
    iget-object v2, v1, Lo/writeEnum;->startAt_:Lo/getInProgressFile;

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_e

    .line 38755
    iget-object v2, v1, Lo/writeEnum;->startAt_:Lo/getInProgressFile;

    if-nez v2, :cond_d

    invoke-static {}, Lo/getInProgressFile;->onNavigationEvent()Lo/getInProgressFile;

    move-result-object v2

    goto :goto_b

    :cond_d
    iget-object v2, v1, Lo/writeEnum;->startAt_:Lo/getInProgressFile;

    .line 613
    :goto_b
    invoke-direct {v0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeBound(Lo/getInProgressFile;)Lo/getFilename;

    move-result-object v2

    move-object v15, v2

    goto :goto_c

    :cond_e
    move-object v15, v4

    .line 38810
    :goto_c
    iget-object v2, v1, Lo/writeEnum;->endAt_:Lo/getInProgressFile;

    if-eqz v2, :cond_f

    goto :goto_d

    :cond_f
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_11

    .line 38821
    iget-object v2, v1, Lo/writeEnum;->endAt_:Lo/getInProgressFile;

    if-nez v2, :cond_10

    invoke-static {}, Lo/getInProgressFile;->onNavigationEvent()Lo/getInProgressFile;

    move-result-object v1

    goto :goto_e

    :cond_10
    iget-object v1, v1, Lo/writeEnum;->endAt_:Lo/getInProgressFile;

    .line 618
    :goto_e
    invoke-direct {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeBound(Lo/getInProgressFile;)Lo/getFilename;

    move-result-object v4

    :cond_11
    move-object/from16 v16, v4

    .line 621
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_Application;

    sget-object v14, Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;->LIMIT_TO_FIRST:Lo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lo/AutoValue_CrashlyticsReport_Session_Application;-><init>(Lo/setJailbroken;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLo/AutoValue_CrashlyticsReport_Session_Application$onPostMessage;Lo/getFilename;Lo/getFilename;)V

    .line 630
    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->toTarget()Lo/setClsId;

    move-result-object v1

    return-object v1
.end method

.method public final decodeTimestamp(Lo/getCustomHeaders;)Lo/getStream;
    .locals 3

    .line 113
    new-instance v0, Lo/getStream;

    .line 6094
    iget-wide v1, p1, Lo/getCustomHeaders;->seconds_:J

    .line 6139
    iget p1, p1, Lo/getCustomHeaders;->nanos_:I

    .line 113
    invoke-direct {v0, v1, v2, p1}, Lo/getStream;-><init>(JI)V

    return-object v0
.end method

.method public final decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;
    .locals 5

    .line 7094
    iget-wide v0, p1, Lo/getCustomHeaders;->seconds_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 7139
    iget v0, p1, Lo/getCustomHeaders;->nanos_:I

    if-nez v0, :cond_0

    .line 122
    sget-object p1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    return-object p1

    .line 124
    :cond_0
    new-instance v0, Lo/withNdkPayload;

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeTimestamp(Lo/getCustomHeaders;)Lo/getStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/withNdkPayload;-><init>(Lo/getStream;)V

    return-object v0
.end method

.method public final decodeVersionFromListenResponse(Lo/writeFixed64;)Lo/withNdkPayload;
    .locals 2

    .line 51024
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    invoke-static {v0}, Lo/writeFixed64$onMessageChannelReady;->onMessageChannelReady(I)Lo/writeFixed64$onMessageChannelReady;

    move-result-object v0

    .line 920
    sget-object v1, Lo/writeFixed64$onMessageChannelReady;->ICustomTabsCallback:Lo/writeFixed64$onMessageChannelReady;

    if-eq v0, v1, :cond_0

    .line 921
    sget-object p1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    return-object p1

    .line 51025
    :cond_0
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 51026
    iget-object v0, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast v0, Lo/writeUInt32;

    goto :goto_0

    .line 51028
    :cond_1
    invoke-static {}, Lo/writeUInt32;->ICustomTabsCallback()Lo/writeUInt32;

    move-result-object v0

    .line 51029
    :goto_0
    iget-object v0, v0, Lo/writeUInt32;->targetIds_:Lo/getEventLogSize$onTransact;

    invoke-interface {v0}, Lo/getEventLogSize$onTransact;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    sget-object p1, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    return-object p1

    .line 51030
    :cond_2
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    if-ne v0, v1, :cond_3

    .line 51031
    iget-object p1, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast p1, Lo/writeUInt32;

    goto :goto_1

    .line 51033
    :cond_3
    invoke-static {}, Lo/writeUInt32;->ICustomTabsCallback()Lo/writeUInt32;

    move-result-object p1

    .line 51034
    :goto_1
    iget-object v0, p1, Lo/writeUInt32;->readTime_:Lo/getCustomHeaders;

    if-nez v0, :cond_4

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lo/writeUInt32;->readTime_:Lo/getCustomHeaders;

    .line 926
    :goto_2
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    return-object p1
.end method

.method public final decodeWatchChange(Lo/writeFixed64;)Lo/CrashlyticsReport$Session$OperatingSystem;
    .locals 8

    .line 843
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$ListenResponse$ResponseTypeCase:[I

    .line 50981
    iget v1, p1, Lo/writeFixed64;->responseTypeCase_:I

    invoke-static {v1}, Lo/writeFixed64$onMessageChannelReady;->onMessageChannelReady(I)Lo/writeFixed64$onMessageChannelReady;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_d

    const/4 v7, 0x0

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 51018
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    if-ne v0, v2, :cond_0

    .line 51019
    iget-object p1, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast p1, Lo/writeFixed32;

    goto :goto_0

    .line 51021
    :cond_0
    invoke-static {}, Lo/writeFixed32;->onNavigationEvent()Lo/writeFixed32;

    move-result-object p1

    .line 904
    :goto_0
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Builder;

    .line 51022
    iget v1, p1, Lo/writeFixed32;->count_:I

    .line 904
    invoke-direct {v0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Builder;-><init>(I)V

    .line 51023
    iget p1, p1, Lo/writeFixed32;->targetId_:I

    .line 906
    new-instance v1, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;

    invoke-direct {v1, p1, v0}, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;-><init>(ILo/CrashlyticsReport$Session$Event$Application$Builder;)V

    goto/16 :goto_d

    .line 910
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown change type set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51012
    :cond_2
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 51013
    iget-object p1, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast p1, Lo/CodedOutputStream;

    goto :goto_1

    .line 51015
    :cond_3
    invoke-static {}, Lo/CodedOutputStream;->ICustomTabsCallback()Lo/CodedOutputStream;

    move-result-object p1

    .line 51016
    :goto_1
    iget-object v0, p1, Lo/CodedOutputStream;->removedTargetIds_:Lo/getEventLogSize$onTransact;

    .line 51017
    iget-object p1, p1, Lo/CodedOutputStream;->document_:Ljava/lang/String;

    .line 898
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    .line 899
    new-instance v2, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, v1}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;-><init>(Ljava/util/List;Ljava/util/List;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    :goto_2
    move-object v1, v2

    goto/16 :goto_d

    .line 51005
    :cond_4
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    if-ne v0, v3, :cond_5

    .line 51006
    iget-object p1, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast p1, Lo/computePreferredBufferSize;

    goto :goto_3

    .line 51008
    :cond_5
    invoke-static {}, Lo/computePreferredBufferSize;->ICustomTabsCallback()Lo/computePreferredBufferSize;

    move-result-object p1

    .line 51009
    :goto_3
    iget-object v0, p1, Lo/computePreferredBufferSize;->removedTargetIds_:Lo/getEventLogSize$onTransact;

    .line 51010
    iget-object v1, p1, Lo/computePreferredBufferSize;->document_:Ljava/lang/String;

    .line 888
    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    .line 51011
    iget-object v2, p1, Lo/computePreferredBufferSize;->readTime_:Lo/getCustomHeaders;

    if-nez v2, :cond_6

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object p1

    goto :goto_4

    :cond_6
    iget-object p1, p1, Lo/computePreferredBufferSize;->readTime_:Lo/getCustomHeaders;

    .line 890
    :goto_4
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object p1

    .line 891
    new-instance v2, Lo/AutoValue_CrashlyticsReport_Session_User;

    invoke-direct {v2, v1, p1, v7}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    .line 892
    new-instance v1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;

    .line 893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-direct {v1, p1, v0, v3, v2}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;-><init>(Ljava/util/List;Ljava/util/List;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    goto/16 :goto_d

    .line 50991
    :cond_7
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    if-ne v0, v4, :cond_8

    .line 50992
    iget-object p1, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast p1, Lo/writeFloat;

    goto :goto_5

    .line 50994
    :cond_8
    invoke-static {}, Lo/writeFloat;->ICustomTabsCallback()Lo/writeFloat;

    move-result-object p1

    .line 50995
    :goto_5
    iget-object v0, p1, Lo/writeFloat;->targetIds_:Lo/getEventLogSize$onTransact;

    .line 50996
    iget-object v1, p1, Lo/writeFloat;->removedTargetIds_:Lo/getEventLogSize$onTransact;

    .line 50997
    iget-object v2, p1, Lo/writeFloat;->document_:Lo/writeDouble;

    if-nez v2, :cond_9

    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v2

    goto :goto_6

    :cond_9
    iget-object v2, p1, Lo/writeFloat;->document_:Lo/writeDouble;

    .line 50998
    :goto_6
    iget-object v2, v2, Lo/writeDouble;->name_:Ljava/lang/String;

    .line 877
    invoke-virtual {p0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeKey(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    .line 50999
    iget-object v3, p1, Lo/writeFloat;->document_:Lo/writeDouble;

    if-nez v3, :cond_a

    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object v3

    goto :goto_7

    :cond_a
    iget-object v3, p1, Lo/writeFloat;->document_:Lo/writeDouble;

    .line 51000
    :goto_7
    iget-object v4, v3, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    if-nez v4, :cond_b

    invoke-static {}, Lo/getCustomHeaders;->ICustomTabsCallback()Lo/getCustomHeaders;

    move-result-object v3

    goto :goto_8

    :cond_b
    iget-object v3, v3, Lo/writeDouble;->updateTime_:Lo/getCustomHeaders;

    .line 878
    :goto_8
    invoke-virtual {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->decodeVersion(Lo/getCustomHeaders;)Lo/withNdkPayload;

    move-result-object v3

    .line 879
    sget-object v4, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    .line 880
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v6

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "Got a document change without an update time"

    .line 879
    invoke-static {v4, v6, v5}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 51001
    iget-object v4, p1, Lo/writeFloat;->document_:Lo/writeDouble;

    if-nez v4, :cond_c

    invoke-static {}, Lo/writeDouble;->onNavigationEvent()Lo/writeDouble;

    move-result-object p1

    goto :goto_9

    :cond_c
    iget-object p1, p1, Lo/writeFloat;->document_:Lo/writeDouble;

    .line 51004
    :goto_9
    iget-object p1, p1, Lo/writeDouble;->fields_:Lo/WireFormat$1;

    .line 51002
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 881
    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->fromMap(Ljava/util/Map;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 882
    new-instance v4, Lo/setDiskUsed;

    sget-object v5, Lo/setDiskUsed$onMessageChannelReady;->SYNCED:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {v4, v2, v3, p1, v5}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    .line 883
    new-instance p1, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;

    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2, v4}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;-><init>(Ljava/util/List;Ljava/util/List;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    move-object v1, p1

    goto :goto_d

    .line 50982
    :cond_d
    iget v0, p1, Lo/writeFixed64;->responseTypeCase_:I

    if-ne v0, v5, :cond_e

    .line 50983
    iget-object p1, p1, Lo/writeFixed64;->responseType_:Ljava/lang/Object;

    check-cast p1, Lo/writeUInt32;

    goto :goto_a

    .line 50985
    :cond_e
    invoke-static {}, Lo/writeUInt32;->ICustomTabsCallback()Lo/writeUInt32;

    move-result-object p1

    .line 848
    :goto_a
    sget-object v0, Lo/getIconUri;->$SwitchMap$com$google$firestore$v1$TargetChange$TargetChangeType:[I

    .line 50986
    iget v7, p1, Lo/writeUInt32;->targetChangeType_:I

    invoke-static {v7}, Lo/writeUInt32$extraCallback;->onNavigationEvent(I)Lo/writeUInt32$extraCallback;

    move-result-object v7

    if-nez v7, :cond_f

    .line 50987
    sget-object v7, Lo/writeUInt32$extraCallback;->onRelationshipValidationResult:Lo/writeUInt32$extraCallback;

    .line 848
    :cond_f
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v0, v0, v7

    if-eq v0, v6, :cond_15

    if-eq v0, v5, :cond_14

    if-eq v0, v4, :cond_12

    if-eq v0, v3, :cond_11

    if-ne v0, v2, :cond_10

    .line 863
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Reset:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    goto :goto_c

    .line 867
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown target change type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 860
    :cond_11
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Current:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    goto :goto_c

    .line 856
    :cond_12
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Removed:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 50988
    iget-object v1, p1, Lo/writeUInt32;->cause_:Lo/applyMultipartDataTo;

    if-nez v1, :cond_13

    invoke-static {}, Lo/applyMultipartDataTo;->onNavigationEvent()Lo/applyMultipartDataTo;

    move-result-object v1

    goto :goto_b

    :cond_13
    iget-object v1, p1, Lo/writeUInt32;->cause_:Lo/applyMultipartDataTo;

    .line 857
    :goto_b
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->fromStatus(Lo/applyMultipartDataTo;)Lo/emptyMap;

    move-result-object v1

    goto :goto_c

    .line 853
    :cond_14
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->Added:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    goto :goto_c

    .line 850
    :cond_15
    sget-object v0, Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;->NoChange:Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    .line 869
    :goto_c
    new-instance v2, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;

    .line 50989
    iget-object v3, p1, Lo/writeUInt32;->targetIds_:Lo/getEventLogSize$onTransact;

    .line 50990
    iget-object p1, p1, Lo/writeUInt32;->resumeToken_:Lo/SessionProtobufHelper;

    .line 871
    invoke-direct {v2, v0, v3, p1, v1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;-><init>(Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;Ljava/util/List;Lo/SessionProtobufHelper;Lo/emptyMap;)V

    goto/16 :goto_2

    :goto_d
    return-object v1
.end method

.method public final encodeDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/writeDouble;
    .locals 1

    .line 220
    invoke-static {}, Lo/writeDouble;->ICustomTabsCallback()Lo/writeDouble$onPostMessage;

    move-result-object v0

    .line 221
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeDouble$onPostMessage;->onPostMessage(Ljava/lang/String;)Lo/writeDouble$onPostMessage;

    .line 222
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->getFieldsMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeDouble$onPostMessage;->onNavigationEvent(Ljava/util/Map;)Lo/writeDouble$onPostMessage;

    .line 223
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeDouble;

    return-object p1
.end method

.method public final encodeDocumentsTarget(Lo/setClsId;)Lo/writeString$onNavigationEvent;
    .locals 1

    .line 507
    invoke-static {}, Lo/writeString$onNavigationEvent;->onNavigationEvent()Lo/writeString$onNavigationEvent$onMessageChannelReady;

    move-result-object v0

    .line 508
    invoke-virtual {p1}, Lo/setClsId;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeQueryPath(Lo/setJailbroken;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeString$onNavigationEvent$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/writeString$onNavigationEvent$onMessageChannelReady;

    .line 509
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeString$onNavigationEvent;

    return-object p1
.end method

.method public final encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->databaseId:Lo/setProximityOn;

    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeResourceName(Lo/setProximityOn;Lo/setJailbroken;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final encodeListenRequestLabels(Lo/setBatteryVelocity;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setBatteryVelocity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getPurpose()Lo/getBinaries;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeLabel(Lo/getBinaries;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 471
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "goog-listen-tags"

    .line 472
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final encodeMutation(Lo/CrashlyticsReport$FilesPayload;)Lo/writeSInt32;
    .locals 4

    .line 264
    invoke-static {}, Lo/writeSInt32;->extraCallback()Lo/writeSInt32$onPostMessage;

    move-result-object v0

    .line 265
    instance-of v1, p1, Lo/CrashlyticsReport$Session$Application;

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lo/CrashlyticsReport$Session$Application;

    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Application;->getValue()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/writeDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSInt32$onPostMessage;->onNavigationEvent(Lo/writeDouble;)Lo/writeSInt32$onPostMessage;

    goto/16 :goto_1

    .line 267
    :cond_0
    instance-of v1, p1, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    if-eqz v1, :cond_1

    .line 268
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->getValue()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/writeDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSInt32$onPostMessage;->onNavigationEvent(Lo/writeDouble;)Lo/writeSInt32$onPostMessage;

    .line 269
    invoke-virtual {v2}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->getMask()Lo/CrashlyticsReport$CustomAttribute;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeDocumentMask(Lo/CrashlyticsReport$CustomAttribute;)Lo/writeUInt64;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSInt32$onPostMessage;->onPostMessage(Lo/writeUInt64;)Lo/writeSInt32$onPostMessage;

    goto :goto_1

    .line 270
    :cond_1
    instance-of v1, p1, Lo/CrashlyticsReport$Session$Application$Builder;

    if-eqz v1, :cond_3

    .line 271
    move-object v1, p1

    check-cast v1, Lo/CrashlyticsReport$Session$Application$Builder;

    .line 272
    invoke-static {}, Lo/writeInt64;->onNavigationEvent()Lo/writeInt64$onNavigationEvent;

    move-result-object v2

    .line 273
    invoke-virtual {v1}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/writeInt64$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)Lo/writeInt64$onNavigationEvent;

    .line 274
    invoke-virtual {v1}, Lo/CrashlyticsReport$Session$Application$Builder;->getFieldTransforms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 275
    invoke-direct {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeFieldTransform(Lo/CrashlyticsReport$CustomAttribute$Builder;)Lo/writeInt64$onPostMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/writeInt64$onNavigationEvent;->onNavigationEvent(Lo/writeInt64$onPostMessage;)Lo/writeInt64$onNavigationEvent;

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v0, v2}, Lo/writeSInt32$onPostMessage;->onNavigationEvent(Lo/writeInt64$onNavigationEvent;)Lo/writeSInt32$onPostMessage;

    goto :goto_1

    .line 278
    :cond_3
    instance-of v1, p1, Lo/withEvents;

    if-eqz v1, :cond_4

    .line 279
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSInt32$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/writeSInt32$onPostMessage;

    goto :goto_1

    .line 280
    :cond_4
    instance-of v1, p1, Lo/CrashlyticsReport$Session$Application$Organization$Builder;

    if-eqz v1, :cond_6

    .line 281
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeKey(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeSInt32$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/writeSInt32$onPostMessage;

    .line 286
    :goto_1
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v1

    invoke-virtual {v1}, Lo/CrashlyticsReport$FilesPayload$File;->isNone()Z

    move-result v1

    if-nez v1, :cond_5

    .line 287
    invoke-virtual {p1}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodePrecondition(Lo/CrashlyticsReport$FilesPayload$File;)Lo/writeSFixed32;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeSInt32$onPostMessage;->onNavigationEvent(Lo/writeSFixed32;)Lo/writeSInt32$onPostMessage;

    .line 289
    :cond_5
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeSInt32;

    return-object p1

    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "unknown mutation type %s"

    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public final encodeQueryTarget(Lo/setClsId;)Lo/writeString$extraCallback;
    .locals 6

    .line 522
    invoke-static {}, Lo/writeString$extraCallback;->onNavigationEvent()Lo/writeString$extraCallback$onPostMessage;

    move-result-object v0

    .line 523
    invoke-static {}, Lo/writeEnum;->ICustomTabsCallback()Lo/writeEnum$onPostMessage;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Lo/setClsId;->getPath()Lo/setJailbroken;

    move-result-object v2

    .line 525
    invoke-virtual {p1}, Lo/setClsId;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 527
    invoke-virtual {v2}, Lo/setRamUsed;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    const-string v5, "Collection Group queries should be within a document path or root."

    .line 526
    invoke-static {v4, v5, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 529
    invoke-direct {p0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeQueryPath(Lo/setJailbroken;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/writeString$extraCallback$onPostMessage;->onPostMessage(Ljava/lang/String;)Lo/writeString$extraCallback$onPostMessage;

    .line 530
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback;->ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    move-result-object v2

    .line 531
    invoke-virtual {p1}, Lo/setClsId;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    .line 532
    invoke-virtual {v2}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;->onNavigationEvent()Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    .line 533
    invoke-virtual {v1, v2}, Lo/writeEnum$onPostMessage;->ICustomTabsCallback(Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;)Lo/writeEnum$onPostMessage;

    goto :goto_2

    .line 535
    :cond_1
    invoke-virtual {v2}, Lo/setRamUsed;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const-string v5, "Document queries with filters are not supported."

    invoke-static {v4, v5, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    invoke-virtual {v2}, Lo/setRamUsed;->popLast()Lo/setRamUsed;

    move-result-object v3

    check-cast v3, Lo/setJailbroken;

    invoke-direct {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeQueryPath(Lo/setJailbroken;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/writeString$extraCallback$onPostMessage;->onPostMessage(Ljava/lang/String;)Lo/writeString$extraCallback$onPostMessage;

    .line 537
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback;->ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    move-result-object v3

    .line 538
    invoke-virtual {v2}, Lo/setRamUsed;->getLastSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;

    .line 539
    invoke-virtual {v1, v3}, Lo/writeEnum$onPostMessage;->ICustomTabsCallback(Lo/writeEnum$ICustomTabsCallback$ICustomTabsCallback;)Lo/writeEnum$onPostMessage;

    .line 543
    :goto_2
    invoke-virtual {p1}, Lo/setClsId;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 544
    invoke-virtual {p1}, Lo/setClsId;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeFilters(Ljava/util/List;)Lo/writeEnum$ICustomTabsCallback$Stub;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/writeEnum$onPostMessage;->onMessageChannelReady(Lo/writeEnum$ICustomTabsCallback$Stub;)Lo/writeEnum$onPostMessage;

    .line 548
    :cond_3
    invoke-virtual {p1}, Lo/setClsId;->getOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setOrganization;

    .line 549
    invoke-direct {p0, v3}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeOrderBy(Lo/setOrganization;)Lo/writeEnum$onTransact;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/writeEnum$onPostMessage;->onNavigationEvent(Lo/writeEnum$onTransact;)Lo/writeEnum$onPostMessage;

    goto :goto_3

    .line 553
    :cond_4
    invoke-virtual {p1}, Lo/setClsId;->hasLimit()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 554
    invoke-static {}, Lo/getEventDeviceSize;->onNavigationEvent()Lo/getEventDeviceSize$onMessageChannelReady;

    move-result-object v2

    invoke-virtual {p1}, Lo/setClsId;->getLimit()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Lo/getEventDeviceSize$onMessageChannelReady;->onNavigationEvent(I)Lo/getEventDeviceSize$onMessageChannelReady;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/writeEnum$onPostMessage;->onPostMessage(Lo/getEventDeviceSize$onMessageChannelReady;)Lo/writeEnum$onPostMessage;

    .line 557
    :cond_5
    invoke-virtual {p1}, Lo/setClsId;->getStartAt()Lo/getFilename;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 558
    invoke-virtual {p1}, Lo/setClsId;->getStartAt()Lo/getFilename;

    move-result-object v2

    invoke-direct {p0, v2}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeBound(Lo/getFilename;)Lo/getInProgressFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/writeEnum$onPostMessage;->onPostMessage(Lo/getInProgressFile;)Lo/writeEnum$onPostMessage;

    .line 561
    :cond_6
    invoke-virtual {p1}, Lo/setClsId;->getEndAt()Lo/getFilename;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 562
    invoke-virtual {p1}, Lo/setClsId;->getEndAt()Lo/getFilename;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeBound(Lo/getFilename;)Lo/getInProgressFile;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/writeEnum$onPostMessage;->onNavigationEvent(Lo/getInProgressFile;)Lo/writeEnum$onPostMessage;

    .line 565
    :cond_7
    invoke-virtual {v0, v1}, Lo/writeString$extraCallback$onPostMessage;->onPostMessage(Lo/writeEnum$onPostMessage;)Lo/writeString$extraCallback$onPostMessage;

    .line 566
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeString$extraCallback;

    return-object p1
.end method

.method public final encodeTarget(Lo/setBatteryVelocity;)Lo/writeString;
    .locals 3

    .line 491
    invoke-static {}, Lo/writeString;->onNavigationEvent()Lo/writeString$ICustomTabsCallback;

    move-result-object v0

    .line 492
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v1

    .line 494
    invoke-virtual {v1}, Lo/setClsId;->isDocumentQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeDocumentsTarget(Lo/setClsId;)Lo/writeString$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeString$ICustomTabsCallback;->ICustomTabsCallback(Lo/writeString$onNavigationEvent;)Lo/writeString$ICustomTabsCallback;

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeQueryTarget(Lo/setClsId;)Lo/writeString$extraCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeString$ICustomTabsCallback;->onPostMessage(Lo/writeString$extraCallback;)Lo/writeString$ICustomTabsCallback;

    .line 500
    :goto_0
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getTargetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/writeString$ICustomTabsCallback;->extraCallback(I)Lo/writeString$ICustomTabsCallback;

    .line 501
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeString$ICustomTabsCallback;->extraCallback(Lo/SessionProtobufHelper;)Lo/writeString$ICustomTabsCallback;

    .line 503
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeString;

    return-object p1
.end method

.method public final encodeTimestamp(Lo/getStream;)Lo/getCustomHeaders;
    .locals 3

    .line 106
    invoke-static {}, Lo/getCustomHeaders;->onNavigationEvent()Lo/getCustomHeaders$onMessageChannelReady;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lo/getStream;->getSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/getCustomHeaders$onMessageChannelReady;->extraCallback(J)Lo/getCustomHeaders$onMessageChannelReady;

    .line 108
    invoke-virtual {p1}, Lo/getStream;->getNanoseconds()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/getCustomHeaders$onMessageChannelReady;->ICustomTabsCallback(I)Lo/getCustomHeaders$onMessageChannelReady;

    .line 109
    invoke-virtual {v0}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/getCustomHeaders;

    return-object p1
.end method

.method final encodeUnaryOrFieldFilter(Lo/getOs;)Lo/writeEnum$ICustomTabsCallback$Stub;
    .locals 2

    .line 688
    invoke-virtual {p1}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    if-eq v0, v1, :cond_0

    .line 689
    invoke-virtual {p1}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/isCrashed$onNavigationEvent;->NOT_EQUAL:Lo/isCrashed$onNavigationEvent;

    if-ne v0, v1, :cond_4

    .line 690
    :cond_0
    invoke-static {}, Lo/writeEnum$onRelationshipValidationResult;->ICustomTabsCallback()Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;

    move-result-object v0

    .line 691
    invoke-virtual {p1}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeFieldPath(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeEnum$asBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;->onNavigationEvent(Lo/writeEnum$asBinder;)Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;

    .line 692
    invoke-virtual {p1}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object v1

    invoke-static {v1}, Lo/withSessionEndFields;->isNanValue(Lo/writeRawMessageSetExtension;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 694
    invoke-virtual {p1}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object p1

    sget-object v1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v1, :cond_1

    .line 695
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->extraCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    goto :goto_0

    .line 696
    :cond_1
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->ICustomTabsCallback:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 693
    :goto_0
    invoke-virtual {v0, p1}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;->onNavigationEvent(Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;)Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;

    .line 697
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub;->ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object p1

    .line 698
    :cond_2
    invoke-virtual {p1}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object v1

    invoke-static {v1}, Lo/withSessionEndFields;->isNullValue(Lo/writeRawMessageSetExtension;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 700
    invoke-virtual {p1}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object p1

    sget-object v1, Lo/isCrashed$onNavigationEvent;->EQUAL:Lo/isCrashed$onNavigationEvent;

    if-ne p1, v1, :cond_3

    .line 701
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onMessageChannelReady:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    goto :goto_1

    .line 702
    :cond_3
    sget-object p1, Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;->onPostMessage:Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;

    .line 699
    :goto_1
    invoke-virtual {v0, p1}, Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;->onNavigationEvent(Lo/writeEnum$onRelationshipValidationResult$ICustomTabsCallback;)Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;

    .line 703
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub;->ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->ICustomTabsCallback(Lo/writeEnum$onRelationshipValidationResult$onMessageChannelReady;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object p1

    .line 706
    :cond_4
    invoke-static {}, Lo/writeEnum$extraCallback;->onNavigationEvent()Lo/writeEnum$extraCallback$onPostMessage;

    move-result-object v0

    .line 707
    invoke-virtual {p1}, Lo/isCrashed;->getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeFieldPath(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeEnum$asBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeEnum$extraCallback$onPostMessage;->extraCallback(Lo/writeEnum$asBinder;)Lo/writeEnum$extraCallback$onPostMessage;

    .line 708
    invoke-virtual {p1}, Lo/getOs;->getOperator()Lo/isCrashed$onNavigationEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeFieldFilterOperator(Lo/isCrashed$onNavigationEvent;)Lo/writeEnum$extraCallback$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/writeEnum$extraCallback$onPostMessage;->extraCallback(Lo/writeEnum$extraCallback$onMessageChannelReady;)Lo/writeEnum$extraCallback$onPostMessage;

    .line 709
    invoke-virtual {p1}, Lo/getOs;->getValue()Lo/writeRawMessageSetExtension;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/writeEnum$extraCallback$onPostMessage;->onNavigationEvent(Lo/writeRawMessageSetExtension;)Lo/writeEnum$extraCallback$onPostMessage;

    .line 710
    invoke-static {}, Lo/writeEnum$ICustomTabsCallback$Stub;->ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;->onNavigationEvent(Lo/writeEnum$extraCallback$onPostMessage;)Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    move-result-object p1

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object p1
.end method

.method public final encodeVersion(Lo/withNdkPayload;)Lo/getCustomHeaders;
    .locals 0

    .line 117
    invoke-virtual {p1}, Lo/withNdkPayload;->getTimestamp()Lo/getStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder;->encodeTimestamp(Lo/getStream;)Lo/getCustomHeaders;

    move-result-object p1

    return-object p1
.end method
